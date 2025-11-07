# Format a numeric vector in a tibble

These functions are reexported as
[`tibble::num()`](https://tibble.tidyverse.org/reference/num.html) and
[`tibble::set_num_opts()`](https://tibble.tidyverse.org/reference/num.html).

## Usage

``` r
num(
  x,
  ...,
  sigfig = NULL,
  digits = NULL,
  label = NULL,
  scale = NULL,
  notation = c("fit", "dec", "sci", "eng", "si"),
  fixed_exponent = NULL,
  extra_sigfig = NULL
)

set_num_opts(
  x,
  ...,
  sigfig = NULL,
  digits = NULL,
  label = NULL,
  scale = NULL,
  notation = c("fit", "dec", "sci", "eng", "si"),
  fixed_exponent = NULL,
  extra_sigfig = NULL
)
```
