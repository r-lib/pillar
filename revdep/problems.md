# sf

Version: 0.6-0

## In both

*   checking examples ... ERROR
    ```
    ...
    Running examples in ‘sf-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: geos_measures
    > ### Title: Compute geometric measurements
    > ### Aliases: geos_measures st_area geos_measures st_length geos_measures
    > ###   st_distance
    > 
    > ### ** Examples
    > 
    > b0 = st_polygon(list(rbind(c(-1,-1), c(1,-1), c(1,1), c(-1,1), c(-1,-1))))
    > b1 = b0 + 2
    > b2 = b0 + c(-0.2, 2)
    > x = st_sfc(b0, b1, b2)
    > st_area(x)
    [1] 4 4 4
    > line = st_sfc(st_linestring(rbind(c(30,30), c(40,40))), crs = 4326)
    > st_length(line)
    Error in st_length(line) : 
      package lwgeom required, please install it first
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 795-797 (sf1.Rmd) 
    Error: processing vignette 'sf1.Rmd' failed with diagnostics:
    package lwgeom required, please install it first
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘lwgeom’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 20.1Mb
      sub-directories of 1Mb or more:
        doc     10.1Mb
        libs     6.1Mb
        sqlite   1.5Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘lwgeom’
    ```

# tibble

Version: 1.4.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 438 SKIPPED: 0 FAILED: 9
      1. Failure: glimpse output matches known output (@test-glimpse.R#37) 
      2. Failure: glimpse output matches known output (@test-glimpse.R#52) 
      3. Failure: glimpse output matches known output (@test-glimpse.R#57) 
      4. Failure: glimpse output matches known output (@test-glimpse.R#65) 
      5. Failure: trunc_mat output matches known output (@test-trunc-mat.R#26) 
      6. Failure: trunc_mat output matches known output (@test-trunc-mat.R#31) 
      7. Failure: trunc_mat output matches known output (@test-trunc-mat.R#46) 
      8. Failure: trunc_mat output matches known output (@test-trunc-mat.R#71) 
      9. Failure: trunc_mat output matches known output (@test-trunc-mat.R#90) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# tsibble

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── 1. Error: (unknown) (@test-tsibble.R#74)  ───────────────────────────────────
      'to' must be a finite number
      1: seq.POSIXt(ymd_h("2017-01-01 0"), ymd_h("2017-01-01 12"), by = "3 hour") at testthat/test-tsibble.R:74
      
      ── 2. Failure: From seconds to higher date (@test-tsummarise.R#35)  ────────────
      as_tibble(res3) not equal to tibble(date_min = ymd_h("2017-01-01 0"), value = 5).
      Rows in x but not y: 1. Rows in y but not x: 1. 
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 179 SKIPPED: 0 FAILED: 2
      1. Error: (unknown) (@test-tsibble.R#74) 
      2. Failure: From seconds to higher date (@test-tsummarise.R#35) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

