# Customize the appearance of simple pillars in your tibble subclass

**\[experimental\]**

Gain full control over the appearance of the pillars of your tibble
subclass in its body. This method is intended for implementers of
subclasses of the `"tbl"` class. Users will rarely need them.

## Usage

``` r
ctl_new_pillar(controller, x, width, ..., title = NULL)

ctl_new_rowid_pillar(controller, x, width, ..., title = NULL, type = NULL)
```

## Arguments

- controller:

  The object of class `"tbl"` currently printed.

- x:

  A simple (one-dimensional) vector.

- width:

  The available width, can be a vector for multiple tiers.

- ...:

  These dots are for future extensions and must be empty.

- title:

  The title, derived from the name of the column in the data.

- type:

  String for specifying a row ID type. Current values in use are `NULL`
  and `"*"`.

## Details

`ctl_new_pillar()` is called to construct pillars for regular
(one-dimensional) vectors. The default implementation returns an object
constructed with
[`pillar()`](https://pillar.r-lib.org/dev/reference/pillar.md). Extend
this method to modify the pillar components returned from the default
implementation. Override this method to completely change the appearance
of the pillars. Components are created with
[`new_pillar_component()`](https://pillar.r-lib.org/dev/reference/new_pillar_component.md)
or
[`pillar_component()`](https://pillar.r-lib.org/dev/reference/new_pillar_component.md).
In order to customize printing of row IDs, a method can be supplied for
the `ctl_new_rowid_pillar()` generic.

All components must be of the same height. This restriction may be
levied in the future.

Implementations should return `NULL` if none of the data fits the
available width.

## See also

See
[`ctl_new_pillar_list()`](https://pillar.r-lib.org/dev/reference/ctl_new_pillar_list.md)
for creating pillar objects for compound columns: packed data frames,
matrices, or arrays.

## Examples

``` r
# Create pillar objects
ctl_new_pillar(
  palmerpenguins::penguins,
  palmerpenguins::penguins$species[1:3],
  width = 60
)
#> <pillar>
#> <fct> 
#> Adelie
#> Adelie
#> Adelie

ctl_new_pillar(
  palmerpenguins::penguins,
  palmerpenguins::penguins$bill_length_mm[1:3],
  width = 60
)
#> <pillar>
#> <dbl>
#>  39.1
#>  39.5
#>  40.3

# Customize output
lines <- function(char = "-") {
  stopifnot(nchar(char) == 1)
  structure(char, class = "lines")
}

format.lines <- function(x, width, ...) {
  paste(rep(x, width), collapse = "")
}

ctl_new_pillar.line_tbl <- function(controller, x, width, ...) {
  out <- NextMethod()
  new_pillar(list(
    title = out$title,
    type = out$type,
    lines = new_pillar_component(list(lines("=")), width = 1),
    data = out$data
  ))
}

ctl_new_rowid_pillar.line_tbl <- function(controller, x, width, ...) {
  out <- NextMethod()
  new_pillar(
    list(
      title = out$title,
      type = out$type,
      lines = new_pillar_component(list(lines("=")), width = 1),
      data = out$data
    ),
    width = as.integer(floor(log10(max(nrow(x), 1))) + 1)
  )
}

vctrs::new_data_frame(
  list(a = 1:3, b = letters[1:3]),
  class = c("line_tbl", "tbl")
)
#> # A data frame: 3 × 2
#>       a b    
#>   <int> <chr>
#> 1     1 a    
#> 2     2 b    
#> 3     3 c    

ctl_new_rowid_pillar.roman_tbl <- function(controller, x, width, ...) {
  out <- NextMethod()
  rowid <- utils::as.roman(seq_len(nrow(x)))
  width <- max(nchar(as.character(rowid)))
  new_pillar(
    list(
      title = out$title,
      type = out$type,
      data = pillar_component(
        new_pillar_shaft(list(row_ids = rowid),
          width = width,
          class = "pillar_rif_shaft"
        )
      )
    ),
    width = width
  )
}

vctrs::new_data_frame(
  list(a = 1:3, b = letters[1:3]),
  class = c("roman_tbl", "tbl")
)
#> # A data frame: 3 × 2
#>       a b    
#>   <int> <chr>
#> 1     1 a    
#> 2     2 b    
#> 3     3 c    
```
