# Calculate display width

`get_extent()` calculates the display width for each string in a
character vector.

`get_max_extent()` calculates the maximum display width of all strings
in a character vector, zero for empty vectors.

## Usage

``` r
get_extent(x)

get_max_extent(x)
```

## Arguments

- x:

  A character vector.

## Examples

``` r
get_extent(c("abc", "de"))
#> [1] 3 2
get_extent("\u904b\u6c23")
#> [1] 4
get_max_extent(c("abc", "de"))
#> [1] 3
```
