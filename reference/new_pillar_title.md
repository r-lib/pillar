# Prepare a column title for formatting

Call [`format()`](https://rdrr.io/r/base/format.html) on the result to
render column titles.

## Usage

``` r
new_pillar_title(x, ...)
```

## Arguments

- x:

  A character vector of column titles.

- ...:

  These dots are for future extensions and must be empty.

## Examples

``` r
format(new_pillar_title(names(trees)))
#> [1] "Girth " "Height" "Volume"
```
