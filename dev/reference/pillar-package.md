# pillar: Coloured Formatting for Columns

**\[stable\]**

Formats tabular data in columns or rows using the full range of colours
provided by modern terminals. Provides various generics for making every
aspect of the display customizable.

## See also

- [`pillar()`](https://pillar.r-lib.org/dev/reference/pillar.md) for
  formatting a single column,

- [`print.tbl()`](https://pillar.r-lib.org/dev/reference/format_tbl.md)
  for formatting data-frame-like objects,

- [pillar_options](https://pillar.r-lib.org/dev/reference/pillar_options.md)
  for a list of package options.

## Author

**Maintainer**: Kirill Müller <kirill@cynkra.com>
([ORCID](https://orcid.org/0000-0002-1416-3412))

Authors:

- Hadley Wickham

Other contributors:

- RStudio \[copyright holder\]

## Examples

``` r
pillar(1:3)
#> <pillar>
#> <int>
#>     1
#>     2
#>     3
pillar(c(1, 2, 3))
#> <pillar>
#> <dbl>
#>     1
#>     2
#>     3
pillar(factor(letters[1:3]), title = "letters")
#> <pillar>
#> letters
#> <fct>  
#> a      
#> b      
#> c      
tbl_format_setup(tibble::as_tibble(mtcars), width = 60)
#> <pillar_tbl_format_setup>
#> <tbl_format_header(setup)>
#> # A tibble: 32 × 11
#> <tbl_format_body(setup)>
#>      mpg   cyl  disp    hp  drat    wt  qsec    vs    am
#>    <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
#>  1  21       6  160    110  3.9   2.62  16.5     0     1
#>  2  21       6  160    110  3.9   2.88  17.0     0     1
#>  3  22.8     4  108     93  3.85  2.32  18.6     1     1
#>  4  21.4     6  258    110  3.08  3.22  19.4     1     0
#>  5  18.7     8  360    175  3.15  3.44  17.0     0     0
#>  6  18.1     6  225    105  2.76  3.46  20.2     1     0
#>  7  14.3     8  360    245  3.21  3.57  15.8     0     0
#>  8  24.4     4  147.    62  3.69  3.19  20       1     0
#>  9  22.8     4  141.    95  3.92  3.15  22.9     1     0
#> 10  19.2     6  168.   123  3.92  3.44  18.3     1     0
#> <tbl_format_footer(setup)>
#> # ℹ 22 more rows
#> # ℹ 2 more variables: gear <dbl>, carb <dbl>
```
