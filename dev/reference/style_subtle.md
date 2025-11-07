# Styling helpers

Functions that allow implementers of formatters for custom data types to
maintain a consistent style with the default data types.

## Usage

``` r
style_num(x, negative, significant = rep_along(x, TRUE))

style_subtle(x)

style_subtle_num(x, negative)

style_bold(x)

style_na(x)

style_neg(x)
```

## Arguments

- x:

  The character vector to style.

- negative, significant:

  Logical vector the same length as `x` that indicate if the values are
  negative and significant, respectively

## Details

`style_subtle()` is affected by the `subtle`
[option](https://pillar.r-lib.org/dev/reference/pillar_options.md).

`style_subtle_num()` is affected by the `subtle_num`
[option](https://pillar.r-lib.org/dev/reference/pillar_options.md),
which is `FALSE` by default.

`style_bold()` is affected by the `bold`
[option](https://pillar.r-lib.org/dev/reference/pillar_options.md),
which is `FALSE` by default.

`style_neg()` is affected by the `pillar.neg`
[option](https://pillar.r-lib.org/dev/reference/pillar_options.md).

## See also

[pillar_options](https://pillar.r-lib.org/dev/reference/pillar_options.md)
for a list of options

## Examples

``` r
style_num(
  c("123", "456"),
  negative = c(TRUE, FALSE)
)
#> [1] "\033[31m123\033[39m" "456"                
style_num(
  c("123", "456"),
  negative = c(TRUE, FALSE),
  significant = c(FALSE, FALSE)
)
#> [1] "\033[31m123\033[39m" "456"                
style_subtle("text")
#> [1] "\033[38;5;246mtext\033[39m"
style_subtle_num(0.01 * 1:3, c(TRUE, FALSE, TRUE))
#> [1] "\033[31m0.01\033[39m" "0.02"                
#> [3] "\033[31m0.03\033[39m"
style_bold("Petal.Width")
#> [1] "Petal.Width"
style_na("NA")
#> [1] "\033[31mNA\033[39m"
style_neg("123")
#> [1] "\033[31m123\033[39m"
```
