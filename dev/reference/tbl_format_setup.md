# Set up formatting

`tbl_format_setup()` is called by
[`format.tbl()`](https://pillar.r-lib.org/dev/reference/format_tbl.md).
This method collects information that is common to the header, body, and
footer parts of a tibble. Examples:

- the dimensions sometimes are reported both in the header and
  (implicitly) in the footer of a tibble;

- the columns shown in the body decide which columns are shown in the
  footer.

This information is computed in `tbl_format_setup()`. The result is
passed on to the
[`tbl_format_header()`](https://pillar.r-lib.org/dev/reference/tbl_format_header.md),
[`tbl_format_body()`](https://pillar.r-lib.org/dev/reference/tbl_format_body.md),
and
[`tbl_format_footer()`](https://pillar.r-lib.org/dev/reference/tbl_format_footer.md)
methods. If you need to customize parts of the printed output
independently, override these methods instead.

By checking the `setup` argument, you can return an object that is
suitable for a call to
[`tbl_format_header()`](https://pillar.r-lib.org/dev/reference/tbl_format_header.md)
if `setup` is `NULL`. In this case, the method is called a second time
with the return value of the first call as `setup`.

## Usage

``` r
tbl_format_setup(
  x,
  width = NULL,
  ...,
  setup = list(tbl_sum = tbl_sum(x)),
  n = NULL,
  max_extra_cols = NULL,
  max_footer_lines = NULL,
  focus = NULL
)

# S3 method for class 'tbl'
tbl_format_setup(
  x,
  width,
  ...,
  setup,
  n,
  max_extra_cols,
  max_footer_lines,
  focus
)
```

## Arguments

- x:

  An object.

- width:

  Actual width for printing, a numeric greater than zero. This argument
  is mandatory for all implementations of this method.

- ...:

  Extra arguments to
  [`print.tbl()`](https://pillar.r-lib.org/dev/reference/format_tbl.md)
  or
  [`format.tbl()`](https://pillar.r-lib.org/dev/reference/format_tbl.md).

- setup:

  This generic is first called with `setup = NULL` . If the method
  *evaluates* this argument, the return value will only be used in a
  call to
  [`tbl_format_header()`](https://pillar.r-lib.org/dev/reference/tbl_format_header.md),
  and after that, a second call to this generic will be made with the
  return value of the first call as `setup` which then will be used in
  calls to
  [`tbl_format_body()`](https://pillar.r-lib.org/dev/reference/tbl_format_body.md)
  and
  [`tbl_format_footer()`](https://pillar.r-lib.org/dev/reference/tbl_format_footer.md).
  This allows displaying the header before starting the computation
  required for the body and footer.

- n:

  Actual number of rows to print. No
  [options](https://pillar.r-lib.org/dev/reference/pillar_options.md)
  should be considered by implementations of this method.

- max_extra_cols:

  Number of columns to print abbreviated information for, if the width
  is too small for the entire tibble. No
  [options](https://pillar.r-lib.org/dev/reference/pillar_options.md)
  should be considered by implementations of this method.

- max_footer_lines:

  Maximum number of lines for the footer. No
  [options](https://pillar.r-lib.org/dev/reference/pillar_options.md)
  should be considered by implementations of this method.

- focus:

  **\[experimental\]**

  Names of columns to show preferentially if space is tight.

## Value

An object that can be passed as `setup` argument to
[`tbl_format_header()`](https://pillar.r-lib.org/dev/reference/tbl_format_header.md),
[`tbl_format_body()`](https://pillar.r-lib.org/dev/reference/tbl_format_body.md),
and
[`tbl_format_footer()`](https://pillar.r-lib.org/dev/reference/tbl_format_footer.md).

## Details

Extend this method to prepare information that is used in several parts
of the printed output of a tibble-like object, or to collect additional
arguments passed via `...` to
[`print.tbl()`](https://pillar.r-lib.org/dev/reference/format_tbl.md) or
[`format.tbl()`](https://pillar.r-lib.org/dev/reference/format_tbl.md).

We expect that `tbl_format_setup()` is extended only rarely, and
overridden only in exceptional circumstances, if at all. If you override
this method, you must also implement
[`tbl_format_header()`](https://pillar.r-lib.org/dev/reference/tbl_format_header.md),
[`tbl_format_body()`](https://pillar.r-lib.org/dev/reference/tbl_format_body.md),
and
[`tbl_format_footer()`](https://pillar.r-lib.org/dev/reference/tbl_format_footer.md)
for your class.

Implementing a method allows to override printing and formatting of the
entire object without overriding the
[`print()`](https://rdrr.io/r/base/print.html) and
[`format()`](https://rdrr.io/r/base/format.html) methods directly. This
allows to keep the logic of the `width` and `n` arguments.

The default method for the `"tbl"` class collects information for
standard printing for tibbles. See
[`new_tbl_format_setup()`](https://pillar.r-lib.org/dev/reference/new_tbl_format_setup.md)
for details on the returned object.

## Examples

``` r
tbl_format_setup(palmerpenguins::penguins)
#> <pillar_tbl_format_setup>
#> <tbl_format_header(setup)>
#> # A tibble: 344 × 8
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
#> <tbl_format_footer(setup)>
#> # ℹ 334 more rows
#> # ℹ 3 more variables: body_mass_g <int>, sex <fct>, year <int>
```
