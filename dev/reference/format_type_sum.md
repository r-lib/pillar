# Format a type summary

Called on values returned from
[`type_sum()`](https://pillar.r-lib.org/dev/reference/type_sum.md) for
defining the description in the capital.

## Usage

``` r
format_type_sum(x, width, ...)

# Default S3 method
format_type_sum(x, width, ...)

# S3 method for class 'AsIs'
format_type_sum(x, width, ...)
```

## Arguments

- x:

  A return value from
  [`type_sum()`](https://pillar.r-lib.org/dev/reference/type_sum.md)

- width:

  The desired total width. If the returned string still is wider, it
  will be trimmed. Can be `NULL`.

- ...:

  Arguments passed to methods.

## Details

Two methods are implemented by default for this generic: the default
method, and the method for the `"AsIs"` class. Return `I("type")` from
your [`type_sum()`](https://pillar.r-lib.org/dev/reference/type_sum.md)
implementation to format the type without angle brackets. For even more
control over the formatting, implement your own method.

## Examples

``` r
# Default method: show the type with angle brackets
writeLines(format_type_sum("dbl", width = NULL))
#> <dbl>
pillar(1)
#> <pillar>
#> <dbl>
#>     1

# AsIs method: show the type without angle brackets
type_sum.accel <- function(x) {
  I("kg m/s^2")
}

# Typically done through NAMESPACE
# (perhaps with an @export directive in roxygen2)
registerS3method("type_sum", "accel", type_sum.accel)

accel <- structure(9.81, class = "accel")
pillar(accel)
#> <pillar>
#> kg m/s^2
#> 9.81    
```
