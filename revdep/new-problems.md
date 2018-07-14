# banR

Version: 0.2.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      4: banR::geocode_tbl(tbl = table_test, adresse = x) at /tmp/Rtmpi0xtR8/R.INSTALL84452ff0493/rlang/R/eval.R:103
      5: stop("The API sent back an error ", httr::status_code(query_results))
      
      ── 2. Error: Input and output DFs have a similar number of rows (@test_geocodetb
      The API sent back an error 503
      1: banR::geocode_tbl(tbl = table_test, adresse = adresses, code_insee = code_insee) at testthat/test_geocodetbl.R:31
      2: stop("The API sent back an error ", httr::status_code(query_results))
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 4 SKIPPED: 0 FAILED: 2
      1. Error: Geocode tbl works  (@test_geocodetbl.R#12) 
      2. Error: Input and output DFs have a similar number of rows (@test_geocodetbl.R#31) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 47-49 (geocode.Rmd) 
    Error: processing vignette 'geocode.Rmd' failed with diagnostics:
    The API sent back an error 503
    Execution halted
    ```

# rdefra

Version: 0.3.5

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      6: httr::http_error(myURL) at /tmp/RtmpSlceef/R.INSTALL750834dff496/testthat/R/expect-that.R:22
      7: http_error.character(myURL) at /tmp/RtmpTEXZJ7/R.INSTALL475d52a310d4/httr/R/response-status.r:162
      8: http_error(HEAD(x, ...)) at /tmp/RtmpTEXZJ7/R.INSTALL475d52a310d4/httr/R/response-status.r:166
      9: HEAD(x, ...) at /tmp/RtmpTEXZJ7/R.INSTALL475d52a310d4/httr/R/response-status.r:166
      10: request_perform(req, hu$handle$handle) at /tmp/RtmpTEXZJ7/R.INSTALL475d52a310d4/httr/R/http-head.r:28
      11: request_fetch(req$output, req$url, handle) at /tmp/RtmpTEXZJ7/R.INSTALL475d52a310d4/httr/R/request.R:137
      12: request_fetch.write_memory(req$output, req$url, handle) at /tmp/RtmpTEXZJ7/R.INSTALL475d52a310d4/httr/R/write-function.R:74
      13: curl::curl_fetch_memory(url, handle = handle) at /tmp/RtmpTEXZJ7/R.INSTALL475d52a310d4/httr/R/write-function.R:76
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 20 SKIPPED: 1 FAILED: 1
      1. Error: Hourly data for station ABD/2014 should be available (@test-data.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

