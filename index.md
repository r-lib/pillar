
<!-- README.md and index.md are generated from README.Rmd. Please edit that file. -->




# pillar

<!-- badges: start -->
[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R build status](https://github.com/r-lib/pillar/workflows/R-CMD-check/badge.svg)](https://github.com/r-lib/pillar/actions)
[![Coverage status](https://codecov.io/gh/r-lib/pillar/branch/main/graph/badge.svg)](https://app.codecov.io/gh/r-lib/pillar)
[![CRAN status](https://www.r-pkg.org/badges/version/pillar)](https://cran.r-project.org/package=pillar)
<!-- badges: end -->


pillar provides tools for styling columns of data, artfully using colour and unicode characters to guide the eye.


## Installation


``` r
# pillar is installed if you install the tidyverse package:
install.packages("tidyverse")

# Alternatively, install just pillar:
install.packages("pillar")
```


## Usage

pillar is a developer-facing package that is not designed for end-users.
It powers the `print()` and `format()` methods for [tibble](https://tibble.tidyverse.org/)s.
It also and defines generics and helpers that are useful for package authors who create custom vector classes (see https://github.com/krlmlr/awesome-vctrs#readme for examples) or custom table classes (like [dbplyr](https://dbplyr.tidyverse.org/) or [sf](https://r-spatial.github.io/sf/)).


``` r
library(pillar)

x <- 123456789 * (10^c(-3, -5, NA, -8, -10))
pillar(x)
#> [1m<pillar>[22m
#>       [3m[38;5;246m<dbl>[39m[23m
#> [4m1[24m[4m2[24m[4m3[24m457.    
#>   [4m1[24m235.    
#>     [31mNA[39m     
#>      1.23  
#>      0.012[4m3[24m

tbl_format_setup(tibble::tibble(x))
#> [1m<pillar_tbl_format_setup>[22m
#> [1m<tbl_format_header(setup)>[22m
#> [38;5;246m# A tibble: 5 × 1[39m
#> [1m<tbl_format_body(setup)>[22m
#>             [1mx[22m
#>         [3m[38;5;246m<dbl>[39m[23m
#> [38;5;250m1[39m [4m1[24m[4m2[24m[4m3[24m457.    
#> [38;5;250m2[39m   [4m1[24m235.    
#> [38;5;250m3[39m     [31mNA[39m     
#> [38;5;250m4[39m      1.23  
#> [38;5;250m5[39m      0.012[4m3[24m
#> [1m<tbl_format_footer(setup)>[22m
```

## Custom vector classes

The primary user of this package is [tibble](https://github.com/tidyverse/tibble), which lets pillar do all the formatting work.
Packages that implement a data type to be used in a tibble column can customize the display by implementing a `pillar_shaft()` method.


``` r
library(pillar)

percent <- vctrs::new_vctr(9:11 * 0.01, class = "percent")

pillar_shaft.percent <- function(x, ...) {
  fmt <- format(vctrs::vec_data(x) * 100)
  new_pillar_shaft_simple(paste0(fmt, " ", style_subtle("%")), align = "right")
}

pillar(percent)
#> [1m<pillar>[22m
#> [3m[38;5;246m<percent>[39m[23m
#>       9 [38;5;246m%[39m
#>      10 [38;5;246m%[39m
#>      11 [38;5;246m%[39m
```

See `vignette("pillar", package = "vctrs")` for details.


## Custom table classes

pillar provides various extension points for customizing how a tibble-like class is printed.


``` r
tbl <- vctrs::new_data_frame(list(a = 1:3), class = c("my_tbl", "tbl"))

tbl_sum.my_tbl <- function(x, ...) {
  c("Hello" = "world!")
}

tbl
#> [38;5;246m# Hello: world![39m
#>       [1ma[22m
#>   [3m[38;5;246m<int>[39m[23m
#> [38;5;250m1[39m     1
#> [38;5;250m2[39m     2
#> [38;5;250m3[39m     3
```

See `vignette("extending", package = "pillar")` for a walkthrough of the options.

