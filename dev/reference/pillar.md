# Object for formatting a vector suitable for tabular display

`pillar()` creates an object that formats a vector. The output uses one
row for a title (if given), one row for the type, and `vec_size(x)` rows
for the data.

## Usage

``` r
pillar(x, title = NULL, width = NULL, ...)
```

## Arguments

- x:

  A vector to format.

- title:

  An optional title for the column. The title will be used "as is", no
  quoting will be applied.

- width:

  Default width, optional.

- ...:

  Passed on to
  [`pillar_shaft()`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md).

## Details

A pillar consists of arbitrary components. The `pillar()` constructor
uses `title`, `type`, and `data`.

- `title` via
  [`new_pillar_title()`](https://pillar.r-lib.org/dev/reference/new_pillar_title.md)

- `type` via
  [`new_pillar_type()`](https://pillar.r-lib.org/dev/reference/new_pillar_type.md),
  which calls
  [`type_sum()`](https://pillar.r-lib.org/dev/reference/type_sum.md)
  internally

- `data` via
  [`pillar_shaft()`](https://pillar.r-lib.org/dev/reference/pillar_shaft.md)

All components are formatted via
[`format()`](https://rdrr.io/r/base/format.html) when displaying the
pillar. A `width` argument is passed to each
[`format()`](https://rdrr.io/r/base/format.html) call.

As of pillar 1.5.0, `pillar()` returns `NULL` if the width is
insufficient to display the data.

## Examples

``` r
x <- 123456789 * (10^c(-1, -3, -5, NA, -8, -10))
pillar(x)
#> <pillar>
#>         <dbl>
#> 12345679.    
#>   123457.    
#>     1235.    
#>       NA     
#>        1.23  
#>        0.0123
pillar(-x)
#> <pillar>
#>    <dbl>
#> -1.23e+7
#> -1.23e+5
#> -1.23e+3
#> NA      
#> -1.23e+0
#> -1.23e-2
pillar(runif(10))
#> <pillar>
#>  <dbl>
#> 0.0312
#> 0.226 
#> 0.301 
#> 0.636 
#> 0.479 
#> 0.432 
#> 0.706 
#> 0.949 
#> 0.180 
#> 0.217 
pillar(rcauchy(20))
#> <pillar>
#>    <dbl>
#>  -1.57  
#> 276.    
#>  -2.10  
#>  -1.82  
#>   0.311 
#>  -0.906 
#>  -0.883 
#>  -0.0292
#>  -0.0929
#>   2.76  
#>   8.16  
#>   1.52  
#>   0.611 
#> -10.0   
#>  50.0   
#>  -0.831 
#>   0.747 
#>  -1.26  
#>   0.208 
#>   2.03  

# Special values are highlighted
pillar(c(runif(5), NA, NaN, Inf, -Inf))
#> <pillar>
#>    <dbl>
#>    0.825
#>    0.274
#>    0.570
#>    0.336
#>    0.596
#>   NA    
#>  NaN    
#>  Inf    
#> -Inf    

# Very wide ranges will be displayed in scientific format
pillar(c(1e10, 1e-10), width = 20)
#> <pillar>
#> <dbl>
#> 1e+10
#> 1e-10
pillar(c(1e10, 1e-10))
#> <pillar>
#> <dbl>
#> 1e+10
#> 1e-10

x <- c(FALSE, NA, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE)
pillar(x)
#> <pillar>
#> <lgl>
#> FALSE
#> NA   
#> FALSE
#> FALSE
#> TRUE 
#> FALSE
#> FALSE
#> TRUE 
#> FALSE
#> TRUE 

x <- c("This is string is rather long", NA, "?", "Short")
pillar(x)
#> <pillar>
#> <chr>                        
#> This is string is rather long
#> NA                           
#> ?                            
#> Short                        
pillar(x, width = 30)
#> <pillar>
#> <chr>                        
#> This is string is rather long
#> NA                           
#> ?                            
#> Short                        
pillar(x, width = 5)
#> <pillar>
#> <chr>
#> This…
#> NA   
#> ?    
#> Short

date <- as.Date("2017-05-15")
pillar(date + c(1, NA, 3:5))
#> <pillar>
#> <date>    
#> 2017-05-16
#> NA        
#> 2017-05-18
#> 2017-05-19
#> 2017-05-20
pillar(as.POSIXct(date) + c(30, NA, 600, 3600, 86400))
#> <pillar>
#> <dttm>             
#> 2017-05-15 00:00:30
#> NA                 
#> 2017-05-15 00:10:00
#> 2017-05-15 01:00:00
#> 2017-05-16 00:00:00
```
