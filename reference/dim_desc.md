# Format dimensions

Multi-dimensional objects are formatted as `a x b x ...`, for vectors
the length is returned.

## Usage

``` r
dim_desc(x)
```

## Arguments

- x:

  The object to format the dimensions for

## Examples

``` r
dim_desc(1:10)
#> [1] "10"
dim_desc(Titanic)
#> [1] "4 × 2 × 2 × 2"
```
