# Helper to define the contents of a pillar

This function is useful if your data renders differently depending on
the available width. In this case, implement the
[`pillar_shaft()`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)
method for your class to return a subclass of "pillar_shaft" and have
the [`format()`](https://rdrr.io/r/base/format.html) method for this
subclass call `new_ornament()`. See the implementation of
[`pillar_shaft.numeric()`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)
and `format.pillar_shaft_decimal()` for an example.

## Usage

``` r
new_ornament(x, width = NULL, align = NULL)
```

## Arguments

- x:

  A character vector with formatting, can use ANYI styles e.g provided
  by the cli package.

- width:

  An optional width of the resulting pillar, computed from `x` if
  missing

- align:

  Alignment, one of `"left"` or `"right"`

## Examples

``` r
new_ornament(c("abc", "de"), align = "right")
#> <pillar_ornament>
#> abc
#>  de
```
