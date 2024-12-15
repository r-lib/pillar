# egor

<details>

* Version: 1.24.2
* GitHub: https://github.com/tilltnet/egor
* Source code: https://github.com/cran/egor
* Date/Publication: 2024-02-02 05:30:02 UTC
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
    > 
    > e <- make_egor(5,50)
    > e %>% 
    +    activate("aatie") %>% 
    +    mutate(weight2 = 2 + weight) %>% 
    +    activate("alter") %>% 
    +    mutate(age.years = age.years^3)
    # EGO data: 5 × 6
    Error in `pmap()`:
    ℹ In index: 1.
    ℹ With name: ego.
    Caused by error in `format_tbl()`:
    ! `...` must be empty.
    ✖ Problematic argument:
    • advice = FALSE
    Backtrace:
         ▆
      1. ├─base (local) `<fn>`(x)
      2. └─egor:::print.egor(x)
      3.   └─purrr::pwalk(...)
      4.     └─purrr::pmap(.l, .f, ..., .progress = .progress)
      5.       └─purrr:::pmap_("list", .l, .f, ..., .progress = .progress)
      6.         ├─purrr:::with_indexed_errors(...)
      7.         │ └─base::withCallingHandlers(...)
      8.         ├─purrr:::call_with_cleanup(...)
      9.         └─egor (local) .f(.l[[1L]][[i]], .l[[2L]][[i]], .l[[3L]][[i]], ...)
     10.           ├─base::print(...)
     11.           └─pillar:::print.tbl(...)
     12.             └─pillar:::print_tbl(...)
     13.               └─pillar:::format_tbl(...)
     14.                 └─rlang::check_dots_empty(error = warning)
     15.                   └─rlang:::action_dots(...)
     16.                     ├─rlang (local) try_dots(...)
     17.                     │ └─rlang::try_fetch(expr, error = error)
     18.                     │   ├─base::tryCatch(...)
     19.                     │   │ └─base (local) tryCatchList(expr, classes, parentenv, handlers)
     20.                     │   │   └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
     21.                     │   │     └─base (local) doTryCatch(return(expr), name, parentenv, handler)
     22.                     │   └─base::withCallingHandlers(...)
     23.                     └─rlang (local) action(...)
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘egor_allbus.Rmd’ using rmarkdown
    ```

# unpivotr

<details>

* Version: 0.6.4
* GitHub: https://github.com/nacnudus/unpivotr
* Source code: https://github.com/cran/unpivotr
* Date/Publication: 2024-11-30 21:30:02 UTC
* Number of recursive dependencies: 89

Run `revdepcheck::cloud_details(, "unpivotr")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘html.Rmd’ using rmarkdown
    --- finished re-building ‘html.Rmd’
    
    --- re-building ‘introduction.Rmd’ using rmarkdown
    
    Quitting from lines 60-67 [tidy-readxl] (introduction.Rmd)
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    `...` must be empty.
    ✖ Problematic argument:
    • options = options
    --- failed re-building ‘introduction.Rmd’
    
    --- re-building ‘small-multiples.Rmd’ using rmarkdown
    --- finished re-building ‘small-multiples.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘introduction.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

