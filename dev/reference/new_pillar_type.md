# Prepare a column type for formatting

Calls [`type_sum()`](https://pillar.r-lib.org/dev/reference/type_sum.md)
to format the type. Call
[`format()`](https://rdrr.io/r/base/format.html) on the result to render
column types.

## Usage

``` r
new_pillar_type(x, ...)
```

## Arguments

- x:

  A vector for which the type is to be retrieved.

- ...:

  These dots are for future extensions and must be empty.

## Examples

``` r
format(new_pillar_type("a"))
#> [1] "\033[3m\033[38;5;246m<chr>\033[39m\033[23m"
format(new_pillar_type(factor("a")))
#> [1] "\033[3m\033[38;5;246m<fct>\033[39m\033[23m"
```
