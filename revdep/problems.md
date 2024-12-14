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
     14.                 └─rlang::check_dots_empty()
     15.                   └─rlang:::action_dots(...)
     16.                     ├─base (local) try_dots(...)
     17.                     └─rlang (local) action(...)
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘egor_allbus.Rmd’ using rmarkdown
    ```

# posterior

<details>

* Version: 1.6.0
* GitHub: https://github.com/stan-dev/posterior
* Source code: https://github.com/cran/posterior
* Date/Publication: 2024-07-03 23:00:02 UTC
* Number of recursive dependencies: 118

Run `revdepcheck::cloud_details(, "posterior")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘posterior-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: print.draws_summary
    > ### Title: Print summaries of 'draws' objects
    > ### Aliases: print.draws_summary
    > 
    > ### ** Examples
    > 
    > x <- example_draws("eight_schools")
    > 
    > # adjust how summaries are printed when calling summarise_draws()...
    > summarise_draws(x, .num_args = list(sigfig = 2, notation = "dec"))
    # A tibble: 10 × 10
       variable  mean median    sd   mad     q5   q95  rhat ess_bulk ess_tail
       <chr>    <dbl>  <dbl> <dbl> <dbl>  <dbl> <dbl> <dbl>    <dbl>    <dbl>
     1 mu         4.2    4.2   3.4   3.6  -0.85   9.4   1.0     558.     322.
     2 tau        4.2    3.1   3.6   2.9   0.31  11.    1.0     246.     202.
     3 theta[1]   6.7    6.0   6.3   4.9  -1.2   19.    1.0     400.     254.
     4 theta[2]   5.3    5.1   4.6   4.3  -2.0   13.    1.0     564.     372.
     5 theta[3]   3.0    4.0   6.8   4.9 -10.    12.    1.0     312.     205.
     6 theta[4]   4.9    5.0   4.9   4.5  -3.6   12.    1.0     695.     252.
     7 theta[5]   3.2    3.7   5.1   4.4  -5.9   11.    1.0     523.     306.
     8 theta[6]   4.0    4.1   5.2   4.8  -4.3   12.    1.0     548.     205.
     9 theta[7]   6.5    5.9   5.3   4.5  -1.2   15.    1.0     434.     308.
    10 theta[8]   4.6    4.6   5.3   4.9  -3.8   12.    1.0     355.     146.
    > 
    > # ... or when printing
    > s <- summarise_draws(x)
    > print(s, num_args = list(sigfig = 2, notation = "dec"))
    Error in `format_tbl()`:
    ! `...` must be empty.
    ✖ Problematic argument:
    • num_args = num_args
    Backtrace:
         ▆
      1. ├─base::print(s, num_args = list(sigfig = 2, notation = "dec"))
      2. ├─posterior:::print.draws_summary(...)
      3. ├─base::NextMethod()
      4. └─pillar:::print.tbl(s, num_args = list(sigfig = 2, notation = "dec"))
      5.   └─pillar:::print_tbl(...)
      6.     └─pillar:::format_tbl(...)
      7.       └─rlang::check_dots_empty()
      8.         └─rlang:::action_dots(...)
      9.           ├─base (local) try_dots(...)
     10.           └─rlang (local) action(...)
    Execution halted
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

