# Format the footer of a tibble

**\[experimental\]**

For easier customization, the formatting of a tibble is split into three
components: header, body, and footer. The `tbl_format_footer()` method
is responsible for formatting the footer of a tibble.

Override or extend this method if you need to change the appearance of
the footer. The default implementation adds information about rows and
columns that are not shown in the body.

## Usage

``` r
tbl_format_footer(x, setup, ...)
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
tbl_format_footer(palmerpenguins::penguins, setup)
#> [1] "\033[38;5;246m# ℹ 334 more rows\033[39m"                                             
#> [2] "\033[38;5;246m# ℹ 3 more variables: body_mass_g <int>, sex <fct>, year <int>\033[39m"

# Shortcut for debugging
tbl_format_footer(setup)
#> <tbl_format_footer(setup)>
#> # ℹ 334 more rows
#> # ℹ 3 more variables: body_mass_g <int>, sex <fct>, year <int>
```
