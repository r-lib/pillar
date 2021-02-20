#' Object for formatting a vector suitable for tabular display
#'
#' @description
#' `r lifecycle::badge("stable")`
#'
#' `pillar()` creates an object that formats a vector.
#' The output uses one row for a title (if given), one row for the type,
#' and `vec_size(x)` rows for the data.
#'
#' @details
#' A pillar consists of arbitrary components.
#' The `pillar()` constructor uses `title`, `type`, and `data`.
#'
#' - `title` via [new_pillar_title()]
#' - `type` via [new_pillar_type()], which calls [type_sum()]
#'   internally
#' - `data` via [pillar_shaft()]
#'
#' All components are formatted via [format()] when displaying the pillar.
#' A `width` argument is passed to each `format()` call.
#'
#' As of pillar 1.5.0, `pillar()` returns `NULL` if the width is insufficient
#' to display the data.
#'
#' @param x A vector to format.
#' @param title An optional title for the column. The title will be
#'   used "as is", no quoting will be applied.
#' @param width Default width, optional.
#' @param ... Passed on to [pillar_shaft()].
#' @export
#' @examples
#' x <- 123456789 * (10 ^ c(-1, -3, -5, NA, -8, -10))
#' pillar(x)
#' pillar(-x)
#' pillar(runif(10))
#' pillar(rcauchy(20))
#'
#' # Special values are highlighted
#' pillar(c(runif(5), NA, NaN, Inf, -Inf))
#'
#' # Very wide ranges will be displayed in scientific format
#' pillar(c(1e10, 1e-10), width = 20)
#' pillar(c(1e10, 1e-10))
#'
#' x <- c(FALSE, NA, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE)
#' pillar(x)
#'
#' x <- c("This is string is rather long", NA, "?", "Short")
#' pillar(x)
#' pillar(x, width = 30)
#' pillar(x, width = 5)
#'
#' date <- as.Date("2017-05-15")
#' pillar(date + c(1, NA, 3:5))
#' pillar(as.POSIXct(date) + c(30, NA, 600, 3600, 86400))
pillar <- function(x, title = NULL, width = NULL, ...) {
  "!!!!DEBUG pillar(`v(title)`, `v(width)`)"

  pillar_from_shaft(
    new_pillar_title(title),
    new_pillar_type(x),
    pillar_shaft(x, ...),
    width
  )
}

pillar_from_shaft <- function(title, type, data, width) {
  "!!!!!DEBUG pillar_from_shaft(`v(width)`)"

  if (is.null(width)) {
    my_width <- Inf
  } else {
    my_width <- width
  }

  if (get_min_width(title) > my_width) {
    "!!!!!DEBUG Early exit, (`v(get_min_width(title))`) > (`v(my_width)`)"
    return(NULL)
  }

  if (get_min_width(type) > my_width) {
    "!!!!!DEBUG Early exit, (`v(get_min_width(type))`) > (`v(my_width)`)"
    return(NULL)
  }

  data_min_width <- get_min_width(data)
  if (data_min_width > my_width) {
    "!!!!!DEBUG Early exit, (`v(get_min_width(data))`) > (`v(my_width)`)"
    return(NULL)
  }
  data_width <- get_width(data)

  data_component <- new_pillar_component(list(data), width = data_width, min_width = data_min_width)

  new_pillar(
    list(
      title = pillar_component(title),
      type = pillar_component(type),
      data = data_component
    ),
    width = width
  )
}

rowidformat2 <- function(data, names, has_star) {
  out <- map(set_names(names), function(.x) "")

  if ("type" %in% names) {
    out$type <- pillar_component(rif_type(has_star))
  }

  if ("data" %in% names) {
    out$data <- pillar_component(data)
  }

  new_pillar(out)
}

#' Construct a custom pillar object
#'
#' `r lifecycle::badge("experimental")`
#'
#' `new_pillar()` is the low-level constructor for pillar objects.
#' It supports arbitrary components.
#' See [pillar()] for the high-level constructor with default components.
#'
#' @details
#' Arbitrary components are supported.
#' If your tibble subclass needs more or different components in its pillars,
#' override or extend [ctl_new_pillar()]
#' and perhaps [ctl_new_compound_pillar()].
#'
#' @inheritParams ellipsis::dots_empty
#' @inheritParams pillar
#' @param components A named list of components constructed with [pillar_component()].
#' @param class Name of subclass.
#'
#' @export
#' @examples
#' lines <- function(char = "-") {
#'   stopifnot(nchar(char) == 1)
#'   structure(char, class = "lines")
#' }
#'
#' format.lines <- function(x, width, ...) {
#'   paste(rep(x, width), collapse = "")
#' }
#'
#' new_pillar(list(
#'   title = pillar_component(new_ornament(c("abc", "de"), align = "right")),
#'   lines = new_pillar_component(list(lines("=")), width = 1)
#' ))
new_pillar <- function(components, ..., width = NULL, class = NULL) {
  "!!!!DEBUG new_pillar(`v(width)`, `v(class)`)"

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

#' @export
format.pillar <- function(x, width = NULL, ...) {
  if (is.null(width)) {
    width <- get_width(x)
  }

  if (is.null(width)) {
    widths <- pillar_get_widths(x)
    width <- sum(widths) - length(widths) + 1L
  }

  out <- pillar_format_parts_2(x, width)

  new_vertical(unlist(unname(out)))
}

#' @export
print.pillar <- function(x, ...) {
  writeLines(style_bold("<pillar>"))
  print(format(x, ...))
}

#' @export
print.compound_pillar <- function(x, ...) {
  len <- length(x[1][[1]])
  desc <- paste0("<compound_pillar[", len, "]>")
  writeLines(style_bold(desc))
  print(format(x, ...))

  if (len > 1) {
    writeLines(style_subtle(pre_dots(paste0("and ", len - 1, " more sub-pillars"))))
  }

  invisible(x)
}
