# Column data

Internal class for formatting the data for a column. `pillar_shaft()` is
a coercion method that must be implemented for your data type to display
it in a tibble.

This class comes with a default method for
[`print()`](https://rdrr.io/r/base/print.html) that calls
[`format()`](https://rdrr.io/r/base/format.html). If
[`print()`](https://rdrr.io/r/base/print.html) is called without `width`
argument, the natural width will be used when calling
[`format()`](https://rdrr.io/r/base/format.html). Usually there's no
need to implement this method for your subclass.

Your subclass must implement
[`format()`](https://rdrr.io/r/base/format.html), the default
implementation just raises an error. Your
[`format()`](https://rdrr.io/r/base/format.html) method can assume a
valid value for the `width` argument.

## Usage

``` r
pillar_shaft(x, ...)

# S3 method for class 'pillar_shaft'
print(x, width = NULL, ...)

# S3 method for class 'pillar_shaft'
format(x, width, ...)

# S3 method for class 'logical'
pillar_shaft(x, ...)

# S3 method for class 'numeric'
pillar_shaft(x, ..., sigfig = NULL)

# S3 method for class 'Date'
pillar_shaft(x, ...)

# S3 method for class 'POSIXt'
pillar_shaft(x, ...)

# S3 method for class 'character'
pillar_shaft(x, ..., min_width = NULL)

# S3 method for class 'glue'
pillar_shaft(x, ..., min_width = NULL, na_indent = 0L, shorten = NULL)

# S3 method for class 'list'
pillar_shaft(x, ...)

# S3 method for class 'factor'
pillar_shaft(x, ...)

# S3 method for class 'AsIs'
pillar_shaft(x, ...)

# Default S3 method
pillar_shaft(x, ...)
```

## Arguments

- x:

  A vector to format

- ...:

  Arguments passed to methods.

- width:

  Width for printing and formatting.

- sigfig:

  Deprecated, use
  [`num()`](https://pillar.r-lib.org/dev/reference/num.md) or
  [`set_num_opts()`](https://pillar.r-lib.org/dev/reference/num.md) on
  the data instead.

- min_width:

  Deprecated, use
  [`char()`](https://pillar.r-lib.org/dev/reference/char.md) or
  [`set_char_opts()`](https://pillar.r-lib.org/dev/reference/char.md) on
  the data instead.

- na_indent:

  Indentation of `NA` values.

- shorten:

  How to abbreviate the data if necessary:

  - `"back"` (default): add an ellipsis at the end

  - `"front"`: add an ellipsis at the front

  - `"mid"`: add an ellipsis in the middle

  - `"abbreviate"`: use
    [`abbreviate()`](https://rdrr.io/r/base/abbreviate.html)

## Details

The default method will currently format via
[`format()`](https://rdrr.io/r/base/format.html), but you should not
rely on this behavior.

## Examples

``` r
pillar_shaft(1:3)
#> <pillar_ornament>
#> 1
#> 2
#> 3
pillar_shaft(1.5:3.5)
#> <pillar_ornament>
#> 1.5
#> 2.5
#> 3.5
pillar_shaft(NA)
#> <pillar_ornament>
#> NA   
pillar_shaft(c(1:3, NA))
#> <pillar_ornament>
#>  1
#>  2
#>  3
#> NA
```
