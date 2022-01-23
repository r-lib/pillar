# dplyr

<details>

* Version: 1.0.7
* GitHub: https://github.com/tidyverse/dplyr
* Source code: https://github.com/cran/dplyr
* Date/Publication: 2021-06-18 23:20:01 UTC
* Number of recursive dependencies: 78

Run `cloud_details(, "dplyr")` for more info

</details>

## Newly broken

*   checking S3 generic/method consistency ... WARNING
    ```
    tbl_sum:
      function(x, ...)
    tbl_sum.grouped_df:
      function(x)
    
    tbl_sum:
      function(x, ...)
    tbl_sum.rowwise_df:
      function(x)
    
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# pmdplyr

<details>

* Version: 0.3.3
* GitHub: https://github.com/NickCH-K/pmdplyr
* Source code: https://github.com/cran/pmdplyr
* Date/Publication: 2020-05-30 07:30:02 UTC
* Number of recursive dependencies: 110

Run `cloud_details(, "pmdplyr")` for more info

</details>

## Newly broken

*   checking S3 generic/method consistency ... WARNING
    ```
    tbl_sum:
      function(x, ...)
    tbl_sum.tbl_pb:
      function(x)
    
    type_sum:
      function(x, ...)
    type_sum.tbl_pb:
      function(x)
    
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

# tibble

<details>

* Version: 3.1.2
* GitHub: https://github.com/tidyverse/tibble
* Source code: https://github.com/cran/tibble
* Date/Publication: 2021-05-16 08:00:02 UTC
* Number of recursive dependencies: 96

Run `cloud_details(, "tibble")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       [9] "#   147"                  | "#   147"                  [8] 
      [10] "#   more"                 | "#   more"                 [9] 
      [11] "#   rows,"                | "#   rows,"                [10]
      Backtrace:
          ▆
       1. └─tibble:::expect_output_file_rel(...) test-zzz-trunc-mat.R:51:2
       2.   ├─withr::with_options(...) tests/testthat/helper-zzz.R:166:2
       3.   │ └─base::force(code)
       4.   ├─base::suppressWarnings(...)
       5.   │ └─base::withCallingHandlers(...)
       6.   └─testthat::expect_output_file(x, output_file(filename), update = TRUE)
      
      [ FAIL 1 | WARN 0 | SKIP 131 | PASS 1336 ]
      Error: Test failures
      Execution halted
    ```

*   checking S3 generic/method consistency ... WARNING
    ```
    tbl_sum:
      function(x, ...)
    tbl_sum.tbl_df:
      function(x)
    
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

# unpivotr

<details>

* Version: 0.6.1
* GitHub: https://github.com/nacnudus/unpivotr
* Source code: https://github.com/cran/unpivotr
* Date/Publication: 2020-08-03 22:50:02 UTC
* Number of recursive dependencies: 82

Run `cloud_details(, "unpivotr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        1. ├─testthat::expect_true(...) test-tibble.R:24:2
        2. │ └─testthat::quasi_label(enquo(object), label, arg = "object")
        3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
        4. ├─tibble::is_tibble(enhead(data_cells, col_headers$`1`, "ABOVE"))
        5. ├─unpivotr::enhead(data_cells, col_headers$`1`, "ABOVE")
        6. └─unpivotr:::enhead.data.frame(data_cells, col_headers$`1`, "ABOVE")
        7.   ├─base::do.call(direction, list(data_cells, header_cells))
        8.   └─unpivotr:::`up-ish`(...)
        9.     └─unpivotr:::side_join(data_cells, header_cells, "up-left", drop)
       10.       └─rlang::as_function(corner)
       11.         └─base::get(x, envir = env, mode = "function")
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 237 ]
      Error: Test failures
      Execution halted
    ```

