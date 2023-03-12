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

