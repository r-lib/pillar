# Alignment helper

Facilitates easy alignment of strings within a character vector.
Designed to help implementers of formatters for custom data types.

## Usage

``` r
align(x, width = NULL, align = c("left", "right"), space = " ")
```

## Arguments

- x:

  A character vector

- width:

  The width that each string is padded to. If `NULL`, the maximum
  display width of the character vector is used (see
  [`get_max_extent()`](https://pillar.r-lib.org/dev/reference/get_extent.md)).

- align:

  How should strings be aligned? If `align = left` then padding appears
  on the `right`, and vice versa.

- space:

  What character should be used for the padding?

## Examples

``` r
align(c("abc", "de"), align = "left")
#> [1] "abc" "de "
align(c("abc", "de"), align = "right")
#> [1] "abc" " de"
```
