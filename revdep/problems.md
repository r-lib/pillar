# DescrTab2

<details>

* Version: 2.1.16
* GitHub: https://github.com/imbi-heidelberg/DescrTab2
* Source code: https://github.com/cran/DescrTab2
* Date/Publication: 2022-09-06 08:50:02 UTC
* Number of recursive dependencies: 168

Run `revdepcheck::cloud_details(, "DescrTab2")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘DescrTab2-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: print.DescrList
    > ### Title: S3 override for print function for DescrList objects.
    > ### Aliases: print.DescrList
    > 
    > ### ** Examples
    > 
    > print(descr(iris), print_format = "console")
    ...
      7.   └─pillar:::print_tbl(...)
      8.     ├─base::writeLines(...)
      9.     ├─base::format(...)
     10.     └─pillar:::format.tbl(...)
     11.       └─pillar:::format_tbl(x, width, ..., n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines)
     12.         └─rlang::check_dots_empty()
     13.           └─rlang:::action_dots(...)
     14.             ├─base (local) try_dots(...)
     15.             └─rlang (local) action(...)
    Execution halted
    ```

# egor

<details>

* Version: 1.22.12
* GitHub: https://github.com/tilltnet/egor
* Source code: https://github.com/cran/egor
* Date/Publication: 2022-12-20 06:20:02 UTC
* Number of recursive dependencies: 89

Run `revdepcheck::cloud_details(, "egor")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘egor-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: activate.egor
    > ### Title: Activate ego, alter or alter-alter tie data level of an egor
    > ###   dataset
    > ### Aliases: activate.egor
    > ### Keywords: ego-centered network
    > 
    > ### ** Examples
    ...
     12.             └─pillar:::print_tbl(...)
     13.               ├─base::writeLines(...)
     14.               ├─base::format(...)
     15.               └─pillar:::format.tbl(...)
     16.                 └─pillar:::format_tbl(x, width, ..., n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines)
     17.                   └─rlang::check_dots_empty()
     18.                     └─rlang:::action_dots(...)
     19.                       ├─base (local) try_dots(...)
     20.                       └─rlang (local) action(...)
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘egor_allbus.Rmd’ using rmarkdown
    --- finished re-building ‘egor_allbus.Rmd’
    
    --- re-building ‘qualtrics.Rmd’ using rmarkdown
    Quitting from lines 171-173 (qualtrics.Rmd) 
    Error: processing vignette 'qualtrics.Rmd' failed with diagnostics:
    ℹ In index: 1.
    ℹ With name: ego.
    Caused by error in `format_tbl()`:
    ...
    ! `...` must be empty.
    ✖ Problematic argument:
    • advice = FALSE
    --- failed re-building ‘using_egor.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘qualtrics.Rmd’ ‘using_egor.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Sorting data by egoID: Transforming alters data to long format: Transforming wide dyad data to edgelist: Sorting data by egoID: Transforming alters data to long format: Transforming wide dyad data to edgelist: Filtering out empty alter entries using provided network size values: Sorting data by egoID: Transforming alters data to long format: Transforming wide dyad data to edgelist: [ FAIL 1 | WARN 8 | SKIP 15 | PASS 205 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (15)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-clustered_graphs.R:55:5'): Methods work (properly) with grouping variable being completly NA. ──
      igraph::V(clustered_graphs(mpf, "country")[[1]])$grp.size is not NULL
      
      `actual` is a double vector ()
      `expected` is NULL
      
      [ FAIL 1 | WARN 8 | SKIP 15 | PASS 205 ]
      Error: Test failures
      Execution halted
    ```

# ergm.ego

<details>

* Version: 1.0.1
* GitHub: https://github.com/statnet/ergm.ego
* Source code: https://github.com/cran/ergm.ego
* Date/Publication: 2022-05-26 14:30:02 UTC
* Number of recursive dependencies: 81

Run `revdepcheck::cloud_details(, "ergm.ego")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘ergm.ego-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: sample
    > ### Title: Draw random egocentric subsamples
    > ### Aliases: sample sample.default sample.egor
    > 
    > ### ** Examples
    > 
    > 
    ...
     12.             └─pillar:::print_tbl(...)
     13.               ├─base::writeLines(...)
     14.               ├─base::format(...)
     15.               └─pillar:::format.tbl(...)
     16.                 └─pillar:::format_tbl(x, width, ..., n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines)
     17.                   └─rlang::check_dots_empty()
     18.                     └─rlang:::action_dots(...)
     19.                       ├─base (local) try_dots(...)
     20.                       └─rlang (local) action(...)
    Execution halted
    ```

# gapclosing

<details>

* Version: 1.0.2
* GitHub: https://github.com/ilundberg/gapclosing
* Source code: https://github.com/cran/gapclosing
* Date/Publication: 2021-10-11 07:40:22 UTC
* Number of recursive dependencies: 85

Run `revdepcheck::cloud_details(, "gapclosing")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘gapclosing-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: as.data.frame.gapclosing
    > ### Title: Coerce to a Data Frame
    > ### Aliases: as.data.frame.gapclosing
    > 
    > ### ** Examples
    > 
    > # Simulate example data
    ...
      7.       └─pillar:::print_tbl(...)
      8.         ├─base::writeLines(...)
      9.         ├─base::format(...)
     10.         └─pillar:::format.tbl(...)
     11.           └─pillar:::format_tbl(x, width, ..., n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines)
     12.             └─rlang::check_dots_empty()
     13.               └─rlang:::action_dots(...)
     14.                 ├─base (local) try_dots(...)
     15.                 └─rlang (local) action(...)
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘gapclosing.Rmd’ using rmarkdown
    Quitting from lines 135-136 (gapclosing.Rmd) 
    Error: processing vignette 'gapclosing.Rmd' failed with diagnostics:
    `...` must be empty.
    ✖ Problematic arguments:
    • digits = digits
    • quote = quote
    • right = right
    ...
    • row.names = row.names
    • max = max
    • scientific = FALSE
    --- failed re-building ‘gapclosing.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘gapclosing.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# metacoder

<details>

* Version: 0.3.5
* GitHub: https://github.com/grunwaldlab/metacoder
* Source code: https://github.com/cran/metacoder
* Date/Publication: 2021-06-23 22:00:02 UTC
* Number of recursive dependencies: 173

Run `revdepcheck::cloud_details(, "metacoder")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘metacoder-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: arrange_obs
    > ### Title: Sort user data in [taxmap()] objects
    > ### Aliases: arrange_obs
    > 
    > ### ** Examples
    > 
    > # Sort in ascending order
    ...
      6.         ├─base::paste0(...)
      7.         ├─utils::capture.output(...)
      8.         │ └─base::withVisible(...elt(i))
      9.         ├─base::print(...)
     10.         └─pillar:::print.tbl(...)
     11.           └─pillar:::print_tbl(...)
     12.             └─lifecycle::deprecate_stop(...)
     13.               └─lifecycle:::deprecate_stop0(msg)
     14.                 └─rlang::cnd_signal(...)
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       13.     └─metacoder:::print_item(...)
       14.       └─get(best_method)(...)
       15.         ├─base::paste0(...)
       16.         ├─utils::capture.output(...)
       17.         │ └─base::withVisible(...elt(i))
       18.         ├─base::print(...)
       19.         └─pillar:::print.tbl(...)
       20.           └─pillar:::print_tbl(...)
       21.             └─lifecycle::deprecate_stop(...)
       22.               └─lifecycle:::deprecate_stop0(msg)
       23.                 └─rlang::cnd_signal(...)
      
      [ FAIL 1 | WARN 1 | SKIP 3 | PASS 524 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# openalexR

<details>

* Version: 1.0.0
* GitHub: https://github.com/massimoaria/openalexR
* Source code: https://github.com/cran/openalexR
* Date/Publication: 2022-10-06 10:40:02 UTC
* Number of recursive dependencies: 78

Run `revdepcheck::cloud_details(, "openalexR")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘A_Brief_Introduction_to_openalexR.Rmd’ using rmarkdown
    Quitting from lines 342-354 (A_Brief_Introduction_to_openalexR.Rmd) 
    Error: processing vignette 'A_Brief_Introduction_to_openalexR.Rmd' failed with diagnostics:
    missing value where TRUE/FALSE needed
    --- failed re-building ‘A_Brief_Introduction_to_openalexR.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘A_Brief_Introduction_to_openalexR.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# prt

<details>

* Version: 0.1.5
* GitHub: https://github.com/nbenn/prt
* Source code: https://github.com/cran/prt
* Date/Publication: 2022-07-18 09:40:02 UTC
* Number of recursive dependencies: 67

Run `revdepcheck::cloud_details(, "prt")` for more info

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
    ...
      9.   ├─base::format(x, ..., n = n, width = width, max_extra_cols = max_extra_cols)
     10.   └─prt:::format.prt(x, ..., n = n, width = width, max_extra_cols = max_extra_cols)
     11.     ├─base::format(trunc_dt(x, n = n, width = width, max_extra_cols = max_extra_cols))
     12.     └─prt::trunc_dt(x, n = n, width = width, max_extra_cols = max_extra_cols)
     13.       └─prt:::shrink_dt(df, rows)
     14.         └─pillar::colonnade(df, has_row_id = FALSE)
     15.           └─lifecycle::deprecate_stop("1.9.0", "pillar::colonnade()", "pillar::tbl_format_setup()")
     16.             └─lifecycle:::deprecate_stop0(msg)
     17.               └─rlang::cnd_signal(...)
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       16.   │ │     └─base::is.factor(x)
       17.   │ └─base::paste0(...)
       18.   ├─base::format(x, ..., n = n, width = width, max_extra_cols = max_extra_cols)
       19.   └─prt:::format.prt(x, ..., n = n, width = width, max_extra_cols = max_extra_cols)
       20.     ├─base::format(trunc_dt(x, n = n, width = width, max_extra_cols = max_extra_cols))
       21.     └─prt::trunc_dt(x, n = n, width = width, max_extra_cols = max_extra_cols)
       22.       └─prt:::shrink_dt(df, rows)
       23.         └─pillar::colonnade(df, has_row_id = FALSE)
       24.           └─lifecycle::deprecate_stop("1.9.0", "pillar::colonnade()", "pillar::tbl_format_setup()")
       25.             └─lifecycle:::deprecate_stop0(msg)
       26.               └─rlang::cnd_signal(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 257 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘prt.Rmd’ using rmarkdown
    Quitting from lines 35-37 (prt.Rmd) 
    Error: processing vignette 'prt.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.9.0 and is now defunct.
    ℹ Please use `tbl_format_setup()` instead.
    --- failed re-building ‘prt.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘prt.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# psychmeta

<details>

* Version: 2.6.5
* GitHub: https://github.com/psychmeta/psychmeta
* Source code: https://github.com/cran/psychmeta
* Date/Publication: 2022-08-26 12:30:07 UTC
* Number of recursive dependencies: 88

Run `revdepcheck::cloud_details(, "psychmeta")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘psychmeta-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: simulate_d_database
    > ### Title: Simulate d value databases of primary studies
    > ### Aliases: simulate_d_database
    > ### Keywords: datagen
    > 
    > ### ** Examples
    > 
    ...
      5.     └─pillar:::print_tbl(...)
      6.       ├─base::writeLines(...)
      7.       ├─base::format(...)
      8.       └─pillar:::format.tbl(...)
      9.         └─pillar:::format_tbl(x, width, ..., n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines)
     10.           └─rlang::check_dots_empty()
     11.             └─rlang:::action_dots(...)
     12.               ├─base (local) try_dots(...)
     13.               └─rlang (local) action(...)
    Execution halted
    ```

# readr

<details>

* Version: 2.1.4
* GitHub: https://github.com/tidyverse/readr
* Source code: https://github.com/cran/readr
* Date/Publication: 2023-02-10 09:20:02 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::cloud_details(, "readr")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘readr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: parse_factor
    > ### Title: Parse factors
    > ### Aliases: parse_factor col_factor
    > 
    > ### ** Examples
    > 
    > # discover the levels from the data
    ...
      7.   └─pillar:::print_tbl(...)
      8.     ├─base::writeLines(...)
      9.     ├─base::format(...)
     10.     └─pillar:::format.tbl(...)
     11.       └─pillar:::format_tbl(x, width, ..., n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines)
     12.         └─rlang::check_dots_empty()
     13.           └─rlang:::action_dots(...)
     14.             ├─base (local) try_dots(...)
     15.             └─rlang (local) action(...)
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘column-types.Rmd’ using rmarkdown
    --- finished re-building ‘column-types.Rmd’
    
    --- re-building ‘locales.Rmd’ using rmarkdown
    --- finished re-building ‘locales.Rmd’
    
    --- re-building ‘readr.Rmd’ using rmarkdown
    Quitting from lines 106-108 (readr.Rmd) 
    ...
    `...` must be empty.
    ✖ Problematic argument:
    • quote = FALSE
    --- failed re-building ‘readr.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘readr.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.8Mb
      sub-directories of 1Mb or more:
        libs   9.9Mb
    ```

# ricu

<details>

* Version: 0.5.4
* GitHub: https://github.com/eth-mds/ricu
* Source code: https://github.com/cran/ricu
* Date/Publication: 2022-10-30 20:54:52 UTC
* Number of recursive dependencies: 114

Run `revdepcheck::cloud_details(, "ricu")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘ricu-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: transform_fun
    > ### Title: Item callback utilities
    > ### Aliases: transform_fun binary_op comp_na set_val apply_map convert_unit
    > 
    > ### ** Examples
    > 
    > dat <- ts_tbl(x = rep(1:2, each = 5), y = hours(rep(1:5, 2)), z = 1:10)
    ...
      9.   ├─base::format(x, ..., n = n, width = width)
     10.   └─ricu:::format.id_tbl(x, ..., n = n, width = width)
     11.     ├─base::format(prt::trunc_dt(x, n = n, width = width))
     12.     └─prt::trunc_dt(x, n = n, width = width)
     13.       └─prt:::shrink_dt(df, rows)
     14.         └─pillar::colonnade(df, has_row_id = FALSE)
     15.           └─lifecycle::deprecate_stop("1.9.0", "pillar::colonnade()", "pillar::tbl_format_setup()")
     16.             └─lifecycle:::deprecate_stop0(msg)
     17.               └─rlang::cnd_signal(...)
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘jss.Rmd’ using rmarkdown
    Quitting from lines 437-441 (jss.Rmd) 
    Error: processing vignette 'jss.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.9.0 and is now defunct.
    ℹ Please use `tbl_format_setup()` instead.
    --- failed re-building ‘jss.Rmd’
    
    --- re-building ‘ricu.Rmd’ using rmarkdown
    Quitting from lines 83-88 (ricu.Rmd) 
    ...
    Error: processing vignette 'uom.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.9.0 and is now defunct.
    ℹ Please use `tbl_format_setup()` instead.
    --- failed re-building ‘uom.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘jss.Rmd’ ‘ricu.Rmd’ ‘uom.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# ruler

<details>

* Version: 0.2.4
* GitHub: https://github.com/echasnovski/ruler
* Source code: https://github.com/cran/ruler
* Date/Publication: 2020-11-25 08:00:03 UTC
* Number of recursive dependencies: 64

Run `revdepcheck::cloud_details(, "ruler")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘ruler-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: act_after_exposure
    > ### Title: Act after exposure
    > ### Aliases: act_after_exposure
    > 
    > ### ** Examples
    > 
    > exposure_printer <- function(.tbl) {
    ...
     10.         └─pillar:::print_tbl(...)
     11.           ├─base::writeLines(...)
     12.           ├─base::format(...)
     13.           └─pillar:::format.tbl(...)
     14.             └─pillar:::format_tbl(x, width, ..., n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines)
     15.               └─rlang::check_dots_empty()
     16.                 └─rlang:::action_dots(...)
     17.                   ├─base (local) try_dots(...)
     18.                   └─rlang (local) action(...)
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       14.   ├─base::NextMethod()
       15.   └─pillar:::print.tbl(x = `<rlr_rprt[,5]>`, .validate = FALSE)
       16.     └─pillar:::print_tbl(...)
       17.       ├─base::writeLines(...)
       18.       ├─base::format(...)
       19.       └─pillar:::format.tbl(...)
       20.         └─pillar:::format_tbl(x, width, ..., n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines)
       21.           └─rlang::check_dots_empty()
       22.             └─rlang:::action_dots(...)
       23.               ├─base (local) try_dots(...)
       24.               └─rlang (local) action(...)
      
      [ FAIL 6 | WARN 5 | SKIP 1 | PASS 290 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘design-and-format.Rmd’ using rmarkdown
    --- finished re-building ‘design-and-format.Rmd’
    
    --- re-building ‘rule-packs.Rmd’ using rmarkdown
    --- finished re-building ‘rule-packs.Rmd’
    
    --- re-building ‘validation.Rmd’ using rmarkdown
    Quitting from lines 91-94 (validation.Rmd) 
    ...
    `...` must be empty.
    ✖ Problematic argument:
    • .validate = .validate
    --- failed re-building ‘validation.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘validation.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# unpivotr

<details>

* Version: 0.6.3
* GitHub: https://github.com/nacnudus/unpivotr
* Source code: https://github.com/cran/unpivotr
* Date/Publication: 2023-01-22 21:20:02 UTC
* Number of recursive dependencies: 88

Run `revdepcheck::cloud_details(, "unpivotr")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘html.Rmd’ using rmarkdown
    --- finished re-building ‘html.Rmd’
    
    --- re-building ‘introduction.Rmd’ using rmarkdown
    Quitting from lines 60-67 (introduction.Rmd) 
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    `...` must be empty.
    ✖ Problematic argument:
    ...
    --- failed re-building ‘introduction.Rmd’
    
    --- re-building ‘small-multiples.Rmd’ using rmarkdown
    --- finished re-building ‘small-multiples.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘introduction.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

