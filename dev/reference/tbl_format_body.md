# Format the body of a tibble

**\[experimental\]**

For easier customization, the formatting of a tibble is split into three
components: header, body, and footer. The `tbl_format_body()` method is
responsible for formatting the body of a tibble.

Override this method if you need to change the appearance of all parts
of the body. If you only need to change the appearance of a single data
type, override
[`vctrs::vec_ptype_abbr()`](https://vctrs.r-lib.org/reference/vec_ptype_full.html)
and
[`pillar_shaft()`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)
for this data type.

## Usage

``` r
tbl_format_body(x, setup, ...)
```

## Arguments

- x:

  A tibble-like object.

- setup:

  A setup object returned from
  [`tbl_format_setup()`](https://pillar.r-lib.org/dev/reference/tbl_format_setup.md).

- ...:

  These dots are for future extensions and must be empty.

## Value

A character vector.

## Examples

``` r
setup <- tbl_format_setup(palmerpenguins::penguins)
tbl_format_body(palmerpenguins::penguins, setup)
#>    species island    bill_length_mm bill_depth_mm flipper_length_mm
#>    <fct>   <fct>              <dbl>         <dbl>             <int>
#>  1 Adelie  Torgersen           39.1          18.7               181
#>  2 Adelie  Torgersen           39.5          17.4               186
#>  3 Adelie  Torgersen           40.3          18                 195
#>  4 Adelie  Torgersen           NA            NA                  NA
#>  5 Adelie  Torgersen           36.7          19.3               193
#>  6 Adelie  Torgersen           39.3          20.6               190
#>  7 Adelie  Torgersen           38.9          17.8               181
#>  8 Adelie  Torgersen           39.2          19.6               195
#>  9 Adelie  Torgersen           34.1          18.1               193
#> 10 Adelie  Torgersen           42            20.2               190

# Shortcut for debugging
tbl_format_body(setup)
#> <tbl_format_body(setup)>
#>    species island    bill_length_mm bill_depth_mm flipper_length_mm
#>    <fct>   <fct>              <dbl>         <dbl>             <int>
#>  1 Adelie  Torgersen           39.1          18.7               181
#>  2 Adelie  Torgersen           39.5          17.4               186
#>  3 Adelie  Torgersen           40.3          18                 195
#>  4 Adelie  Torgersen           NA            NA                  NA
#>  5 Adelie  Torgersen           36.7          19.3               193
#>  6 Adelie  Torgersen           39.3          20.6               190
#>  7 Adelie  Torgersen           38.9          17.8               181
#>  8 Adelie  Torgersen           39.2          19.6               195
#>  9 Adelie  Torgersen           34.1          18.1               193
#> 10 Adelie  Torgersen           42            20.2               190
```
