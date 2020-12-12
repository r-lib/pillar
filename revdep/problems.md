# charlatan

<details>

* Version: 0.4.0
* GitHub: https://github.com/ropensci/charlatan
* Source code: https://github.com/cran/charlatan
* Date/Publication: 2020-01-24 07:10:03 UTC
* Number of recursive dependencies: 56

Run `cloud_details(, "charlatan")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      ── FAILURE (test-missing.R:19:3): MissingDataProvider works ────────────────────
      identical(letters2, letters3) is not FALSE
      
      `actual`:   TRUE 
      `expected`: FALSE
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (2)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-missing.R:19:3): MissingDataProvider works
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 617 ]
      Error: Test failures
      Execution halted
    ```

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

# gtfs2gps

<details>

* Version: 1.3-2
* GitHub: https://github.com/ipeaGIT/gtfs2gps
* Source code: https://github.com/cran/gtfs2gps
* Date/Publication: 2020-11-05 17:30:12 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "gtfs2gps")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       10. │         └─future:::resolve.list(...)
       11. │           ├─future::value(obj, stdout = FALSE, signal = FALSE)
       12. │           └─future:::value.Future(obj, stdout = FALSE, signal = FALSE)
       13. │             ├─future::result(future)
       14. │             └─future:::result.MulticoreFuture(future)
       15. └─data.table::rbindlist(.)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test_gtfs2gps.R:71:5): gtfs2gps
      Warning (test_gtfs2gps.R:71:5): gtfs2gps
      ERROR (test_gtfs2gps.R:71:5): gtfs2gps
      
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 158 ]
      Error: Test failures
      Execution halted
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

# prt

<details>

* Version: 0.1.2
* GitHub: https://github.com/nbenn/prt
* Source code: https://github.com/cran/prt
* Date/Publication: 2020-09-29 13:40:02 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "prt")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘prt-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: print.prt
    > ### Title: Printing prt
    > ### Aliases: print.prt format.prt trunc_dt
    > 
    > ### ** Examples
    > 
    > cars <- as_prt(mtcars)
    > 
    > print(cars)
    Error in x[[1L]][[1L]][["shaft_format"]] : subscript out of bounds
    Calls: print ... format -> format.trunc_dt -> squeeze_dt -> add_empty_row
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      - "2        2            5"
      + "       1            4"
      - "3        3            6"
      + "       2            5"
      + "       3            6"
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-format.R:20:3): print() returns output invisibly
      ERROR (test-format.R:29:3): trunc_dt output matches known output
      FAILURE (test-format.R:103:3): trunc_mat for POSIXct columns
      FAILURE (test-format.R:117:3): trunc_mat for wide-character columns
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 257 ]
      Error: Test failures
      Execution halted
    ```

# ricu

<details>

* Version: 0.1.2
* GitHub: https://github.com/septic-tank/ricu
* Source code: https://github.com/cran/ricu
* Date/Publication: 2020-11-03 11:50:06 UTC
* Number of recursive dependencies: 83

Run `cloud_details(, "ricu")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘ricu-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: change_id
    > ### Title: Switch between id types
    > ### Aliases: change_id upgrade_id downgrade_id upgrade_id.ts_tbl
    > ###   upgrade_id.id_tbl downgrade_id.ts_tbl downgrade_id.id_tbl
    > 
    > ### ** Examples
    > 
    > if (require(mimic.demo)) {
    + tbl <- mimic_demo$labevents
    + dat <- load_difftime(tbl, itemid == 50809, c("charttime", "valuenum"))
    + dat
    + 
    + change_id(dat, "icustay_id", tbl, keep_old_id = FALSE)
    + }
    Loading required package: mimic.demo
    Error in x[[1L]][[1L]][["shaft_format"]] : subscript out of bounds
    Calls: <Anonymous> ... format -> format.trunc_dt -> squeeze_dt -> add_empty_row
    Execution halted
    ```

# tibble

<details>

* Version: 3.0.4
* GitHub: https://github.com/tidyverse/tibble
* Source code: https://github.com/cran/tibble
* Date/Publication: 2020-10-12 11:20:03 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "tibble")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library("testthat")
      > 
      > test_check("tibble")
      Loading required package: tibble
      Error in get(paste0(generic, ".", class), envir = get_method_env()) : 
        object 'tbl_format_body.tbl_df_without_body' not found
      Calls: test_check ... FUN -> eval -> eval -> <Anonymous> -> get_method -> get
      Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    .onLoad: no visible binding for global variable ‘tbl_sum.default’
    .onLoad: no visible binding for global variable ‘tbl_sum.tbl’
    .onLoad: no visible binding for global variable ‘format.tbl’
    .onLoad: no visible binding for global variable ‘print.tbl’
    Undefined global functions or variables:
      format.tbl print.tbl tbl_sum.default tbl_sum.tbl
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

