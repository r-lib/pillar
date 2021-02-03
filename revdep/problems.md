# crossmap

<details>

* Version: 0.2.0
* GitHub: https://github.com/rossellhayes/crossmap
* Source code: https://github.com/cran/crossmap
* Date/Publication: 2020-09-24 07:30:02 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "crossmap")` for more info

</details>

## Newly broken

*   checking whether package ‘crossmap’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/crossmap/new/crossmap.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    ```

## Installation

### Devel

```
* installing *source* package ‘crossmap’ ...
** package ‘crossmap’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading


```
### CRAN

```
* installing *source* package ‘crossmap’ ...
** package ‘crossmap’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (crossmap)


```
# intensegRid

<details>

* Version: 0.1.0
* GitHub: https://github.com/KKulma/intensegRid
* Source code: https://github.com/cran/intensegRid
* Date/Publication: 2020-11-12 10:00:11 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "intensegRid")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(intensegRid)
      > 
      > test_check("intensegRid")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-intensity.R:23:3): get_national_ci() works ──────────────────────
      Error: ERROR: The status call is 500
      Backtrace:
          █
       1. └─intensegRid::get_national_ci() test-intensity.R:23:2
       2.   └─intensegRid:::get_data(call)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 49 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘purrr’
      All declared Imports should be used.
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
      - "  成交日期 合同录入日期"
      + "list(capital_format = c(\" \", \" \"), shaft_format = c(\"1\", \"2\", \"3\"))"
      - "     <int>        <int>"
      + "成交日期 合同录入日期"
      - "1        1            4"
      + "   <int>        <int>"
      - "2        2            5"
      + "       1            4"
      - "3        3            6"
      + "       2            5"
      + "       3            6"
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 257 ]
      Error: Test failures
      Execution halted
    ```

# ricu

<details>

* Version: 0.1.3
* GitHub: https://github.com/septic-tank/ricu
* Source code: https://github.com/cran/ricu
* Date/Publication: 2021-01-29 23:40:02 UTC
* Number of recursive dependencies: 83

Run `cloud_details(, "ricu")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘ricu-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: change_id
    > ### Title: Switch between id types
    > ### Aliases: change_id upgrade_id downgrade_id upgrade_id.ts_tbl
    > ###   upgrade_id.id_tbl downgrade_id.ts_tbl downgrade_id.id_tbl
    > 
    > ### ** Examples
    > 
    ...
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

