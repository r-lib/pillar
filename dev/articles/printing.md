# Printing a tibble: Control and data flow

``` r
library(pillar)
```

What happens when a tibble is printed? This vignette documents the
control flow and the data flow, explains the design choices, and shows
the default implementation for the `"tbl"` class. It is mainly of
interest for implementers of table subclasses. Customizing the
formatting of a vector class in a tibble is described in
[`vignette("pillar", package = "vctrs")`](https://vctrs.r-lib.org/articles/pillar.html).
The different customization options are showcased in
[`vignette("extending")`](https://pillar.r-lib.org/dev/articles/extending.md).

## Requirements

- Fit into pre-specified width, distributing across multiple tiers if
  necessary

- Optionally shrink and stretch individual columns

- Header, body and footer for the tibble

  - Avoid recomputation of information

- Custom components for the pillars in a tibble, top-aligned

  - The container, not the column vectors, determine the appearance

- Customization of the entire output and of the pillars

- Support for data frame columns (packed data frames) and matrix/array
  columns

- Pillars are always shown from left to right, no “holes” in the
  colonnade

  - If the first column consumes all available space, the remaining
    columns are not shown, even if they all would fit if the first
    column is omitted.

- Printing pillars should take time proportional to the number of
  characters printed, and be “fast enough”.

## Overview

The overall control and data flow are illustrated in the diagram below.
Boxes are functions and methods. Solid lines are function calls. Dotted
lines represent information that a function obtains via argument or (in
the case of options) queries actively.

The pillar package uses debugme for debugging. Activating debugging for
pillar is another way to track the control flow, see
[`vignette("debugme")`](https://pillar.r-lib.org/dev/articles/debugme.md)
for details.

## Initialization

A tibble is a list of columns of class `"tbl_df"` and `"tbl"`. Printing
is designed to work for non-data-frame table-like objects such as lazy
tables. The
[`print.tbl()`](https://pillar.r-lib.org/dev/reference/format_tbl.md)
method calls [`format()`](https://rdrr.io/r/base/format.html) for the
object and prints the output.

``` r
tbl <- tibble::tibble(a = 1:3, b = tibble::tibble(c = 4:6, d = 7:9), e = 10:12)
print(tbl, width = 23)
#> # A tibble: 3 × 3
#>       a   b$c     e
#>   <int> <int> <int>
#> 1     1     4    10
#> 2     2     5    11
#> 3     3     6    12
#> # ℹ 1 more variable:
#> #   b$d <int>
str(tbl)
#> tibble [3 × 3] (S3: tbl_df/tbl/data.frame)
#>  $ a: int [1:3] 1 2 3
#>  $ b: tibble [3 × 2] (S3: tbl_df/tbl/data.frame)
#>   ..$ c: int [1:3] 4 5 6
#>   ..$ d: int [1:3] 7 8 9
#>  $ e: int [1:3] 10 11 12
```

Source code of `pillar:::print.tbl()`

``` r
print.tbl <- function(x, width = NULL, ..., n = NULL, max_extra_cols = NULL,
                      max_footer_lines = NULL) {
  print_tbl(
    x, width, ...,
    n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines
  )
}
```

The
[`format.tbl()`](https://pillar.r-lib.org/dev/reference/format_tbl.md)
method creates a setup object, and uses that object to format header,
body and footer.

Source code of `pillar:::format.tbl()`

``` r
format.tbl <- function(x, width = NULL, ...,
                       n = NULL, max_extra_cols = NULL, max_footer_lines = NULL) {
  format_tbl(
    x, width, ...,
    n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines
  )
}
```

While it’s possible to extend or override these methods for your `"tbl"`
subclass, often overriding the more specialized methods shown below is
sufficient.

## Setup

Most of the work for formatting actually happens in
[`tbl_format_setup()`](https://pillar.r-lib.org/dev/reference/tbl_format_setup.md).
The desired output width is baked into the setup object and must be
available when calling. Setup objects print like a tibble but with a
clear separation of header, body, and footer.

``` r
setup <- tbl_format_setup(tbl, width = 24)
setup
#> <pillar_tbl_format_setup>
#> <tbl_format_header(setup)>
#> # A tibble: 3 × 3
#> <tbl_format_body(setup)>
#>       a   b$c     e
#>   <int> <int> <int>
#> 1     1     4    10
#> 2     2     5    11
#> 3     3     6    12
#> <tbl_format_footer(setup)>
#> # ℹ 1 more variable:
#> #   b$d <int>
```

A setup object is required here to avoid computing information twice.
For instance, the dimensions shown in the header or the extra columns
displayed in the footer are available only after the body has been
computed.

The generic dispatches over the container, so that you can override it
if necessary. It is responsible for assigning default values to
arguments before passing them on to the method.

Source code of `tbl_format_setup()`

``` r
tbl_format_setup <- function(
  x,
  width = NULL,
  ...,
  setup = list(tbl_sum = tbl_sum(x)),
  n = NULL,
  max_extra_cols = NULL,
  max_footer_lines = NULL,
  focus = NULL
) {
  "!!!!DEBUG tbl_format_setup()"

  width <- get_width_print(width)

  n <- get_n_print(n, tbl_nrow(x))

  max_extra_cols <- get_max_extra_cols(max_extra_cols)
  max_footer_lines <- get_max_footer_lines(max_footer_lines)

  # Calls UseMethod("tbl_format_setup"),
  # allows using default values in S3 dispatch
  out <- tbl_format_setup_dispatch(
    x,
    width,
    ...,
    setup = setup,
    n = n,
    max_extra_cols = max_extra_cols,
    max_footer_lines = max_footer_lines,
    focus = focus
  )
  return(out)
  UseMethod("tbl_format_setup")
}
```

The default implementation converts the input to a data frame via
`as.data.frame(head(x))`, and returns an object constructed with
[`new_tbl_format_setup()`](https://pillar.r-lib.org/dev/reference/new_tbl_format_setup.md)
that contains the data frame and additional information. If you override
this method, e.g. to incorporate more information, you can add new items
to the default setup object, but you should not overwrite existing
items.

Source code of `pillar:::tbl_format_setup.tbl()`

``` r
tbl_format_setup.tbl <- function(
  x,
  width,
  ...,
  setup,
  n,
  max_extra_cols,
  max_footer_lines,
  focus
) {
  "!!!!DEBUG tbl_format_setup.tbl()"

  if (is.null(setup)) {
    # Header with early exit
    tbl_sum <- tbl_sum(x)
    return(new_tbl_format_setup(width, tbl_sum, rows_total = NA_integer_))
  } else {
    tbl_sum <- setup$tbl_sum
  }

  # Number of rows
  rows <- tbl_nrow(x)

  lazy <- is.na(rows)
  if (lazy) {
    max <- attr(n, "max") %||% n
    df <- as.data.frame(head(x, max + 1))
    if (nrow(df) <= max) {
      rows <- nrow(df)
      n <- rows
    } else {
      df <- vec_head(df, n)
    }
  } else {
    df <- df_head(x, n)
  }

  if (is.na(rows)) {
    # Lazy table with too many rows
    needs_dots <- (nrow(df) >= n)
  } else {
    # Lazy table with few rows, or regular data frame
    needs_dots <- (rows > n)
  }

  if (needs_dots) {
    rows_missing <- rows - n
  } else {
    rows_missing <- 0L
  }

  # Body
  rownames(df) <- NULL

  colonnade <- ctl_colonnade(
    df,
    has_row_id = if (!lazy && .row_names_info(x) > 0) "*" else TRUE,
    width = width,
    controller = x,
    focus = focus
  )

  body <- colonnade$body

  # Extra columns
  extra_cols <- colonnade$extra_cols
  extra_cols_total <- length(extra_cols)

  if (extra_cols_total > max_extra_cols) {
    length(extra_cols) <- max_extra_cols
  }

  # Abbreviated columns
  abbrev_cols <- colonnade$abbrev_cols

  # Result
  new_tbl_format_setup(
    x = x,
    df = df,
    width = width,
    tbl_sum = tbl_sum,
    body = body,
    rows_missing = rows_missing,
    rows_total = rows,
    extra_cols = extra_cols,
    extra_cols_total = extra_cols_total,
    max_footer_lines = max_footer_lines,
    abbrev_cols = abbrev_cols
  )
}
```

At the core, the internal function `ctl_colonnade()` composes the body.
Its functionality and the customization points it offers are detailed in
the “Colonnade” section below.

## Header, body, footer

The components of a tibble are formatted with `tbl_format_*()` generics,
which also dispatch on the container to allow extension or overrides.
They return a character vector, with one element per line printed. The
setup object is required.

``` r
tbl_format_header(tbl, setup)
#> [1] "\033[38;5;246m# A tibble: 3 × 3\033[39m"
tbl_format_body(tbl, setup)
#>       a   b$c     e
#>   <int> <int> <int>
#> 1     1     4    10
#> 2     2     5    11
#> 3     3     6    12
tbl_format_footer(tbl, setup)
#> [1] "\033[38;5;246m# ℹ 1 more variable:\033[39m"
#> [2] "\033[38;5;246m#   b$d <int>\033[39m"
```

(The body is returned as a classed object with a
[`print()`](https://rdrr.io/r/base/print.html) method, it is still a
[`character()`](https://rdrr.io/r/base/character.html) under the hood.)

``` r
class(tbl_format_body(tbl, setup))
#> [1] "glue"      "character"
typeof(tbl_format_body(tbl, setup))
#> [1] "character"
```

Since most of the work already has been carried out in
[`tbl_format_setup()`](https://pillar.r-lib.org/dev/reference/tbl_format_setup.md),
the default implementations mostly consist of code that styles and wraps
the output.

Source code of `pillar:::tbl_format_header.tbl()`

``` r
tbl_format_header.tbl <- function(x, setup, ...) {
  named_header <- setup$tbl_sum
  focus <- attr(x, "pillar_focus")
  if (!is.null(focus)) {
    named_header <- c(named_header, "Focus columns" = collapse(tick_if_needed(focus)))
  }

  if (all(names2(named_header) == "")) {
    header <- named_header
  } else {
    header <- paste0(
      align(paste0(names2(named_header), ":"), space = NBSP),
      # We add a space after the NBSP inserted by align()
      # so that wrapping occurs at the right location for very narrow outputs
      " ",
      named_header
    )
  }

  style_subtle(format_comment(header, width = setup$width))
}
```

Source code of `pillar:::tbl_format_body.tbl()`

``` r
tbl_format_body.tbl <- function(x, setup, ...) {
  force(setup)
  setup$body
}
```

Source code of `pillar:::tbl_format_footer.tbl()`

``` r
tbl_format_footer.tbl <- function(x, setup, ...) {
  footer <- format_footer(x, setup)
  footer_comment <- wrap_footer_bullet(footer, setup)
  footer_advice <- format_footer_advice(x, setup)
  footer_advice_comment <- wrap_footer_bullet(
    footer_advice,
    setup,
    lines = 1,
    ellipsis = FALSE,
    bullet = symbol$info
  )
  style_subtle(c(footer_comment, footer_advice_comment))
}
```

## Colonnade

The internal function `ctl_colonnade()` composes the body. It performs
the following tasks:

1.  Create a pillar object for every top-level column that fits, using
    the minimum width, via
    [`ctl_new_pillar_list()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar_list.md),
    [`ctl_new_pillar()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar.md)
    and ultimately
    [`pillar()`](https://pillar.r-lib.org/dev/reference/pillar.md) and
    [`pillar_shaft()`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)
2.  Determine the number of tiers and the width for each tier
3.  Distribute the pillars across the tiers, assigning a width to each
    pillar.
4.  Format each pillar via its
    [`format()`](https://rdrr.io/r/base/format.html) function, passing
    the now known width.
5.  Combine the formatted pillars horizontally.
6.  Combine the tiers vertically.
7.  Return the formatted body, and the columns that could not fit.

In the following, the first and the fourth steps are discussed.

## Creating pillar objects

The initial tibble is passed to
[`ctl_new_pillar_list()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar_list.md),
which eventually calls
[`ctl_new_pillar()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar.md)
once or several times. For each top-level column, one pillar object is
constructed. The loop is terminated when the available width is
exhausted even considering the minimum width.

### Pillar lists

The
[`ctl_new_pillar_list()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar_list.md)
generic dispatches on the container:

``` r
ctl_new_pillar_list(tbl, tbl$a, width = 20)
#> [[1]]
#> <pillar>
#> <int>
#>     1
#>     2
#>     3
#> 
#> attr(,"remaining_width")
#> [1] 14
#> attr(,"simple")
#> [1] TRUE
ctl_new_pillar_list(tbl, tbl$b, width = 20)
#> [[1]]
#> <pillar>
#>     c
#> <int>
#>     4
#>     5
#>     6
#> 
#> [[2]]
#> <pillar>
#>     d
#> <int>
#>     7
#>     8
#>     9
#> 
#> attr(,"extra")
#> character(0)
#> attr(,"remaining_width")
#> [1] 8
#> attr(,"simple")
#> [1] FALSE
```

In a tibble, each column can be a data frame, matrix, or even array
itself, such columns are called *compound columns*. Such columns are
decomposed into sub-pillars and returned as a list of pillars. Regular
vectors are forwarded to
[`ctl_new_pillar()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar.md)
and returned as list of length one. Implementers of `"tbl"` subclasses
will rarely if ever need to extend or override this method.

Source code of `pillar:::ctl_new_pillar_list.tbl()`

``` r
ctl_new_pillar_list.tbl <- function(controller, x, width, ..., title = NULL, first_pillar = NULL) {
  "!!!!DEBUG ctl_new_pillar_list.tbl(`v(width)`, `v(title)`)"

  if (is.data.frame(x)) {
    new_data_frame_pillar_list(x, controller, width, title = title, first_pillar = first_pillar)
  } else if (is.matrix(x) && !inherits(x, c("Surv", "Surv2"))) {
    new_matrix_pillar_list(x, controller, width, title = title, first_pillar = first_pillar)
  } else if (is.array(x) && length(dim(x)) > 2) {
    new_array_pillar_list(x, controller, width, title = title, first_pillar = first_pillar)
  } else {
    if (is.null(first_pillar)) {
      first_pillar <- ctl_new_pillar(controller, x, width, ..., title = prepare_title(title))
    }
    new_single_pillar_list(first_pillar, width)
  }
}
```

### Simple pillars

The
[`ctl_new_pillar()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar.md)
method is called for columns that are not data frames or arrays, and
also dispatches over the container.

``` r
ctl_new_pillar(tbl, tbl$a, width = 20)
#> <pillar>
#> <int>
#>     1
#>     2
#>     3
```

Source code of `pillar:::ctl_new_pillar.tbl()`

``` r
ctl_new_pillar.tbl <- function(controller, x, width, ..., title = NULL) {
  "!!!!DEBUG ctl_new_pillar.tbl(`v(width)`, `v(title)`)"

  pillar(x, title, if (!is.null(width)) max0(width))
}
```

The default method calls
[`pillar()`](https://pillar.r-lib.org/dev/reference/pillar.md) directly,
passing the maximum width available.

Source code of `pillar()`

``` r
pillar <- function(x, title = NULL, width = NULL, ...) {
  "!!!!DEBUG pillar(`v(class(x))`, `v(title)`, `v(width)`)"

  pillar_from_shaft(
    new_pillar_title(title),
    new_pillar_type(x),
    pillar_shaft(x, ...),
    width
  )
}
```

Formatting for title and type is provided by
[`new_pillar_title()`](https://pillar.r-lib.org/dev/reference/new_pillar_title.md)
and
[`new_pillar_type()`](https://pillar.r-lib.org/dev/reference/new_pillar_type.md).
The body can be customized by implementing
[`pillar_shaft()`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)
for a vector class, see
[`vignette("pillar", package = "vctrs")`](https://vctrs.r-lib.org/articles/pillar.html)
for details. If title or type don’t fit the available width,
[`pillar_shaft()`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)
is never called.

This function now returns `NULL` if the width is insufficient to contain
the data. It is possible to change the appearance of pillars by
overriding or extending
[`ctl_new_pillar()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar.md).

### Components

Pillar objects share the same structure and are ultimately constructed
with
[`new_pillar()`](https://pillar.r-lib.org/dev/reference/new_pillar.md).

Source code of `new_pillar()`

``` r
new_pillar <- function(components, ..., width = NULL, class = NULL,
                       extra = deprecated()) {
  "!!!!DEBUG new_pillar(`v(width)`, `v(class)`)"

  if (is_present(extra)) {
    # Signal the deprecation to the user
    deprecate_warn("1.7.0", "pillar::new_pillar(extra = )")
  }

  check_dots_empty()
  if (length(components) > 0 && !is_named(components)) {
    abort("All components must have names.")
  }

  structure(
    components,
    width = width,
    class = c(class, "pillar")
  )
}
```

A pillar is stored as a list of components. Each pillar represents only
one simple (atomic) column, compound columns are always represented as
multiple pillar objects.

## Formatting pillars

When a pillar object is constructed, it has a minimum and a desired
(maximum) width. Because it depends on the number and width of other
pillar objects that may not be even constructed, the final width is not
known yet. It is passed to
[`format()`](https://rdrr.io/r/base/format.html), which uses the desired
width if empty:

Source code of `pillar:::format.pillar()`

``` r
format.pillar <- function(x, width = NULL, ...) {
  if (is.null(width)) {
    width <- get_width(x)
  }

  if (is.null(width)) {
    width <- pillar_get_width(x)
  }

  as_glue(pillar_format_parts_2(x, width)$aligned)
}
```
