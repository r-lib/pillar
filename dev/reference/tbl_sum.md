# Provide a succinct summary of an object

`tbl_sum()` gives a brief textual description of a table-like object,
which should include the dimensions and the data source in the first
element, and additional information in the other elements (such as
grouping for dplyr). The default implementation forwards to
[`obj_sum()`](https://pillar.r-lib.org/dev/reference/type_sum.md).

## Usage

``` r
tbl_sum(x)
```

## Arguments

- x:

  Object to summarise.

## Value

A named character vector, describing the dimensions in the first element
and the data source in the name of the first element.

## See also

[`type_sum()`](https://pillar.r-lib.org/dev/reference/type_sum.md)

## Examples

``` r
tbl_sum(1:10)
#> Description 
#>  "int [10]" 
tbl_sum(matrix(1:10))
#>    Description 
#> "int [10 × 1]" 
tbl_sum(data.frame(a = 1))
#>  Description 
#> "df [1 × 1]" 
tbl_sum(Sys.Date())
#> Description 
#>  "date [1]" 
tbl_sum(Sys.time())
#> Description 
#>  "dttm [1]" 
tbl_sum(mean)
#> Description 
#>        "fn" 
```
