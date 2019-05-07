# hms

<details>

* Version: 0.4.2
* Source code: https://github.com/cran/hms
* URL: https://github.com/tidyverse/hms
* BugReports: https://github.com/tidyverse/hms/issues
* Date/Publication: 2018-03-10 21:33:37 UTC
* Number of recursive dependencies: 19

Run `revdep_details(,"hms")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      y[4]: " 00\033[90m'\033[39m00.000\033[90m\"\033[39m"
      
      x[5]: " 00\033[38;5;246m'\033[39m00.001\033[38;5;246m\"\033[39m"
      y[5]: " 00\033[90m'\033[39m00.001\033[90m\"\033[39m"
      
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 134 SKIPPED: 0 WARNINGS: 0 FAILED: 5
      1. Failure: pillar (@test-colformat.R#4) 
      2. Failure: pillar (@test-colformat.R#8) 
      3. Failure: pillar (@test-colformat.R#12) 
      4. Failure: pillar (@test-colformat.R#16) 
      5. Failure: pillar (@test-colformat.R#20) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# repr

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/repr
* Date/Publication: 2019-04-29 16:50:03 UTC
* Number of recursive dependencies: 59

Run `revdep_details(,"repr")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 68 SKIPPED: 27 WARNINGS: 1 FAILED: 23
      1. Failure: LaTeX escaping in matrices works (@test_escaping.r#53) 
      2. Failure: LaTeX escaping in matrices works (@test_escaping.r#60) 
      3. Failure: HTML escaping in matrices works (@test_escaping.r#72) 
      4. Failure: HTML escaping in matrices works (@test_escaping.r#81) 
      5. Failure: Factors are maintained in small arrays for HTML (@test_escaping.r#138) 
      6. Failure: Factors are maintained in small arrays for HTML (@test_escaping.r#142) 
      7. Failure: Factors are maintained in small arrays for HTML (@test_escaping.r#146) 
      8. Failure: Factors are sanitized in small data.frames for HTML (@test_escaping.r#167) 
      9. Failure: Factors are sanitized in small data.frames for HTML (@test_escaping.r#171) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'vegalite', 'plotly', 'geojsonio'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘geojsonio’, ‘plotly’, ‘vegalite’
    ```

# tibble

<details>

* Version: 2.1.1
* Source code: https://github.com/cran/tibble
* URL: http://tibble.tidyverse.org/, https://github.com/tidyverse/tibble
* BugReports: https://github.com/tidyverse/tibble/issues
* Date/Publication: 2019-03-16 22:50:03 UTC
* Number of recursive dependencies: 48

Run `revdep_details(,"tibble")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 727 SKIPPED: 1 WARNINGS: 2 FAILED: 15
      1. Failure: glimpse output matches known output (@test-glimpse.R#51) 
      2. Failure: glimpse output matches known output (@test-glimpse.R#66) 
      3. Failure: glimpse output matches known output (@test-glimpse.R#71) 
      4. Failure: glimpse output matches known output (@test-glimpse.R#79) 
      5. Failure: glimpse works for structures with unknown rows (@test-glimpse.R#105) 
      6. Failure: glimpse works on nested data (#486) (@test-glimpse.R#135) 
      7. Failure: glimpse works on nested data (#486) (@test-glimpse.R#140) 
      8. Failure: trunc_mat output matches known output (@test-trunc-mat.R#30) 
      9. Failure: trunc_mat output matches known output (@test-trunc-mat.R#35) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

# unpivotr

<details>

* Version: 0.5.1
* Source code: https://github.com/cran/unpivotr
* URL: https://github.com/nacnudus/unpivotr
* BugReports: https://github.com/nacnudus/unpivotr/issues
* Date/Publication: 2019-03-30 19:10:03 UTC
* Number of recursive dependencies: 84

Run `revdep_details(,"unpivotr")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════════════════════════════════════════
      OK: 222 SKIPPED: 0 WARNINGS: 7 FAILED: 10
      1.  Failure: as_cells() works with all common datatypes (@test-as_cells.R#95) 
      2.  Error: as_cells() works with all common datatypes (@test-as_cells.R#98) 
      3.  Failure: behead() works with all common datatypes (@test-behead.R#74) 
      4.  Failure: behead() works with all common datatypes (@test-behead.R#75) 
      5.  Failure: behead() works with all common datatypes (@test-behead.R#82) 
      6.  Failure: pack() works on common data types (@test-pack.R#24) 
      7.  Failure: pack() works on common data types (@test-pack.R#36) 
      8.  Failure: unpack() orders type columns alphabetically (@test-pack.R#59) 
      9.  Failure: tidy_table works with all common datatypes (@test-tidy_table.R#94) 
      10. Error: tidy_table works with all common datatypes (@test-tidy_table.R#97) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

