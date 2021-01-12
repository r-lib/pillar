# forestmangr

<details>

* Version: 0.9.2
* GitHub: https://github.com/sollano/forestmangr
* Source code: https://github.com/cran/forestmangr
* Date/Publication: 2020-04-07 14:00:02 UTC
* Number of recursive dependencies: 132

Run `cloud_details(, "forestmangr")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    #   Hcom <dbl>, Htot <dbl>, date <int>, utm.east <dbl>, utm.north <dbl>,
    #   vol <dbl>, plot.area <int>, total.area <int>
    >
    > # Get the forest's horizontal structure:
    > forest_structure(exfm20, "scientific.name", "dbh", "transect", 10000)
    Error: NYI
    Backtrace:
         █
      1. ├─(function (x, ...) ...
      2. └─pillar:::print.tbl(x)
      3.   ├─base::writeLines(format(x, width = width, ..., n = n, n_extra = n_extra))
      4.   ├─base::format(x, width = width, ..., n = n, n_extra = n_extra)
      5.   └─pillar:::format.tbl(x, width = width, ..., n = n, n_extra = n_extra)
      6.     ├─pillar::tbl_format_setup(...)
      7.     └─pillar:::tbl_format_setup.tbl(...)
      8.       └─pillar:::ctl_colonnade(...)
      9.         └─pillar:::new_packed_pillars(x, controller, tier_widths, title = NULL)
     10.           ├─pillar::ctl_new_compound_pillar(controller, x[[i]], width, title = sub_title)
     11.           └─pillar:::ctl_new_compound_pillar.tbl(...)
     12.             └─pillar:::new_array_pillar(x, controller, width, title = title)
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘forcats’
      All declared Imports should be used.
    ```

# gratia

<details>

* Version: 0.4.1
* GitHub: https://github.com/gavinsimpson/gratia
* Source code: https://github.com/cran/gratia
* Date/Publication: 2020-05-31 00:00:10 UTC
* Number of recursive dependencies: 126

Run `cloud_details(, "gratia")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > df <- df[, c("y","x0","x1","x2","x3")]
    > m <-  gam(y ~ s(x0) + s(x1) + s(x2) + s(x3), data = df, method = 'REML')
    >
    > ##
    > add_fitted(df, m)
    Error: NYI
    Backtrace:
         x
      1. +-(function (x, ...) ...
      2. \-pillar:::print.tbl(x)
      3.   +-base::writeLines(format(x, width = width, ..., n = n, n_extra = n_extra))
      4.   +-base::format(x, width = width, ..., n = n, n_extra = n_extra)
      5.   \-pillar:::format.tbl(x, width = width, ..., n = n, n_extra = n_extra)
      6.     +-pillar::tbl_format_setup(...)
      7.     \-pillar:::tbl_format_setup.tbl(...)
      8.       \-pillar:::ctl_colonnade(...)
      9.         \-pillar:::new_packed_pillars(x, controller, tier_widths, title = NULL)
     10.           +-pillar::ctl_new_compound_pillar(controller, x[[i]], width, title = sub_title)
     11.           \-pillar:::ctl_new_compound_pillar.tbl(...)
     12.             \-pillar:::new_array_pillar(x, controller, width, title = title)
    Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘carData’
    ```

# listarrays

<details>

* Version: 0.3.1
* GitHub: https://github.com/t-kalinowski/listarrays
* Source code: https://github.com/cran/listarrays
* Date/Publication: 2020-03-08 15:50:06 UTC
* Number of recursive dependencies: 36

Run `cloud_details(, "listarrays")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    >
    > # with with array data in a data frame by splitting row-wise
    > if(require(tibble))
    +   tibble(y, X = split_along_rows(X))
    Loading required package: tibble
    Error: NYI
    Backtrace:
         █
      1. ├─(function (x, ...) ...
      2. └─pillar:::print.tbl(x)
      3.   ├─base::writeLines(format(x, width = width, ..., n = n, n_extra = n_extra))
      4.   ├─base::format(x, width = width, ..., n = n, n_extra = n_extra)
      5.   └─pillar:::format.tbl(x, width = width, ..., n = n, n_extra = n_extra)
      6.     ├─pillar::tbl_format_setup(...)
      7.     └─pillar:::tbl_format_setup.tbl(...)
      8.       └─pillar:::ctl_colonnade(...)
      9.         └─pillar:::new_packed_pillars(x, controller, tier_widths, title = NULL)
     10.           ├─pillar::ctl_new_compound_pillar(controller, x[[i]], width, title = sub_title)
     11.           └─pillar:::ctl_new_compound_pillar.tbl(...)
     12.             └─pillar:::new_array_pillar(x, controller, width, title = title)
    Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘keras’
    ```

# ncdump

<details>

* Version: 0.0.3
* GitHub: https://github.com/r-gris/ncdump
* Source code: https://github.com/cran/ncdump
* Date/Publication: 2017-05-02 12:35:30 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "ncdump")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    NULL

    $dimvals
    Error: NYI
    Backtrace:
         █
      1. ├─(function (x, ...) ...
      2. ├─base::print.default(x)
      3. ├─(function (x, ...) ...
      4. └─pillar:::print.tbl(x)
      5.   ├─base::writeLines(format(x, width = width, ..., n = n, n_extra = n_extra))
      6.   ├─base::format(x, width = width, ..., n = n, n_extra = n_extra)
      7.   └─pillar:::format.tbl(x, width = width, ..., n = n, n_extra = n_extra)
      8.     ├─pillar::tbl_format_setup(...)
      9.     └─pillar:::tbl_format_setup.tbl(...)
     10.       └─pillar:::ctl_colonnade(...)
     11.         └─pillar:::new_packed_pillars(x, controller, tier_widths, title = NULL)
     12.           ├─pillar::ctl_new_compound_pillar(controller, x[[i]], width, title = sub_title)
     13.           └─pillar:::ctl_new_compound_pillar.tbl(...)
     14.             └─pillar:::new_array_pillar(x, controller, width, title = title)
    Execution halted
    ```

# trendeval

<details>

* Version: 0.0.1
* GitHub: https://github.com/reconhub/trendeval
* Source code: https://github.com/cran/trendeval
* Date/Publication: 2020-11-20 10:50:02 UTC
* Number of recursive dependencies: 57

Run `cloud_details(, "trendeval")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > y <- rpois(n = 100, lambda = exp(x + 1))
    > dat <- data.frame(x = x, y = y)
    >
    > model <- trending::glm_model(y ~ x, poisson)
    > evaluate_resampling(model, dat)
    Error: NYI
    Backtrace:
         █
      1. ├─(function (x, ...) ...
      2. └─pillar:::print.tbl(x)
      3.   ├─base::writeLines(format(x, width = width, ..., n = n, n_extra = n_extra))
      4.   ├─base::format(x, width = width, ..., n = n, n_extra = n_extra)
      5.   └─pillar:::format.tbl(x, width = width, ..., n = n, n_extra = n_extra)
      6.     ├─pillar::tbl_format_setup(...)
      7.     └─pillar:::tbl_format_setup.tbl(...)
      8.       └─pillar:::ctl_colonnade(...)
      9.         └─pillar:::new_packed_pillars(x, controller, tier_widths, title = NULL)
     10.           ├─pillar::ctl_new_compound_pillar(controller, x[[i]], width, title = sub_title)
     11.           └─pillar:::ctl_new_compound_pillar.tbl(...)
     12.             └─pillar:::new_array_pillar(x, controller, width, title = title)
    Execution halted
    ```
