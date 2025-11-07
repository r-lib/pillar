# pillar

pillar provides tools for styling columns of data, artfully using colour
and unicode characters to guide the eye.

## Installation

``` r
# pillar is installed if you install the tidyverse package:
install.packages("tidyverse")

# Alternatively, install just pillar:
install.packages("pillar")
```

## Usage

pillar is a developer-facing package that is not designed for end-users.
It powers the [`print()`](https://rdrr.io/r/base/print.html) and
[`format()`](https://rdrr.io/r/base/format.html) methods for
[tibble](https://tibble.tidyverse.org/)s. It also and defines generics
and helpers that are useful for package authors who create custom vector
classes (see <https://github.com/krlmlr/awesome-vctrs#readme> for
examples) or custom table classes (like
[dbplyr](https://dbplyr.tidyverse.org/) or
[sf](https://r-spatial.github.io/sf/)).

``` r
library(pillar)

x <- 123456789 * (10^c(-3, -5, NA, -8, -10))
pillar(x)
#> <pillar>
#>       <dbl>
#> 123457.    
#>   1235.    
#>     NA     
#>      1.23  
#>      0.0123

tbl_format_setup(tibble::tibble(x))
#> <pillar_tbl_format_setup>
#> <tbl_format_header(setup)>
#> # A tibble: 5 × 1
#> <tbl_format_body(setup)>
#>             x
#>         <dbl>
#> 1 123457.    
#> 2   1235.    
#> 3     NA     
#> 4      1.23  
#> 5      0.0123
#> <tbl_format_footer(setup)>
```

## Custom vector classes

The primary user of this package is
[tibble](https://github.com/tidyverse/tibble), which lets pillar do all
the formatting work. Packages that implement a data type to be used in a
tibble column can customize the display by implementing a
[`pillar_shaft()`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)
method.

``` r
library(pillar)

percent <- vctrs::new_vctr(9:11 * 0.01, class = "percent")

pillar_shaft.percent <- function(x, ...) {
  fmt <- format(vctrs::vec_data(x) * 100)
  new_pillar_shaft_simple(paste0(fmt, " ", style_subtle("%")), align = "right")
}

pillar(percent)
#> <pillar>
#> <percent>
#>       9 %
#>      10 %
#>      11 %
```

See
[`vignette("pillar", package = "vctrs")`](https://vctrs.r-lib.org/articles/pillar.html)
for details.

## Custom table classes

pillar provides various extension points for customizing how a
tibble-like class is printed.

``` r
tbl <- vctrs::new_data_frame(list(a = 1:3), class = c("my_tbl", "tbl"))

tbl_sum.my_tbl <- function(x, ...) {
  c("Hello" = "world!")
}

tbl
#> # Hello: world!
#>       a
#>   <int>
#> 1     1
#> 2     2
#> 3     3
```

See
[`vignette("extending", package = "pillar")`](https://pillar.r-lib.org/dev/articles/extending.md)
for a walkthrough of the options.
