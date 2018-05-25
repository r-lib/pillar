# blob

Version: 1.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpxtBXAJ/Rd2pdfc3c069cc5720'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# enc

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpCaaGWA/Rd2pdfd3b538b165a3'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# errors

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpXGsIFS/Rd2pdfbe7515566a4e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# fs

Version: 1.2.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpmcQGvz/Rd2pdfc3ab5e29d0fb'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# hms

Version: 0.4.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp8taWY3/Rd2pdffe1735058053'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rlang

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpUai1eJ/Rd2pdf30c36a1accf'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# sf

Version: 0.6-3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpsSdOw0/Rd2pdf1b5053fd8db1'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 195-198 (sf5.Rmd) 
    Error: processing vignette 'sf5.Rmd' failed with diagnostics:
    cannot open the connection
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 22.8Mb
      sub-directories of 1Mb or more:
        doc     10.8Mb
        libs     8.0Mb
        sqlite   1.5Mb
    ```

# sjmisc

Version: 2.7.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp6ghMYU/Rd2pdf633b594acaa'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tibble

Version: 1.4.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpGb62Yx/Rd2pdf9e1c7e7521b7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tsibble

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      'to' must be a finite number
      1: seq.POSIXt(ymd_h("2017-01-01 0"), ymd_h("2017-01-01 12"), by = "3 hour") at testthat/test-tsibble.R:97
      
      ── 3. Failure: From seconds to higher date (@test-tsummarise.R#39)  ────────────
      as_tibble(res3) not equal to tibble(date_min = ymd_h("2017-01-01 0"), value = 5).
      Rows in x but not y: 1. Rows in y but not x: 1. 
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 400 SKIPPED: 0 FAILED: 3
      1. Failure: From seconds to higher date (@test-indexby.R#42) 
      2. Error: (unknown) (@test-tsibble.R#97) 
      3. Failure: From seconds to higher date (@test-tsummarise.R#39) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpdqIqEz/Rd2pdf98f260bd29a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# units

Version: 0.5-1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpeIysDw/Rd2pdfc1bb3479b6a7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# DBI

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpY6SfQW/Rd2pdf65e22a74a58'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# DBItest

Version: 1.5-2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpIZAsw5/Rd2pdffd2e3a27ec28'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# dplyr.teradata

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpZQWHuH/Rd2pdf10644a535c0d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘bit64’ ‘rstudioapi’ ‘tidyverse’
      All declared Imports should be used.
    ```

# odbc

Version: 1.1.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpVz1wNx/Rd2pdfc3a31b1fc49b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        libs   5.7Mb
    ```

# RPostgres

Version: 1.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmphtPW4M/Rd2pdfc50526222025'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# RSQLite

Version: 2.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpzF9NBt/Rd2pdf35e7124549e4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.9Mb
      sub-directories of 1Mb or more:
        libs   9.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘pkgconfig’
      All declared Imports should be used.
    ```

# styler

Version: 1.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpes5eey/Rd2pdf6fce6c779e3'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# constants

Version: 0.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpE5FzJi/Rd2pdfc2502c8edf93'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# batchtools

Version: 0.9.10

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpqhixe7/Rd2pdff2c75c5ce7d7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    --------------------------------------------------------------------------
    [[59946,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: krlmlr-ubuntu-central-india
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    ```

# mleap

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp3D6tEA/Rd2pdf57396bca29f4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# prodigenr

Version: 0.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpbkGpTD/Rd2pdfe8bc3f7b18ca'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘clipr’ ‘desc’ ‘devtools’
      All declared Imports should be used.
    ```

# rfbCNPJ

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp8kFxvN/Rd2pdf17ec14e2b7d69'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 27 marked UTF-8 strings
    ```

# bigrquery

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpmtcmzs/Rd2pdf12e9357b2383'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# dplyr

Version: 0.7.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpsyvUVl/Rd2pdf14056240a9ee5'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 31.5Mb
      sub-directories of 1Mb or more:
        libs  29.4Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# feather

Version: 0.3.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp51xN0A/Rd2pdf1a29f18df7dd1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# haven

Version: 1.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpWfFGdP/Rd2pdf4a971367c013'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘hms’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# processmapR

Version: 0.3.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpoOuRDh/Rd2pdf16e1a274f0b4a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# readr

Version: 1.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpQlEpeX/Rd2pdf30404c0d6e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.4Mb
      sub-directories of 1Mb or more:
        libs  12.8Mb
    ```

*   checking compiled code ... NOTE
    ```
    File ‘readr/libs/readr.so’:
      Found non-API calls to R: ‘R_GetConnection’, ‘R_WriteConnection’
    
    Compiled code should not call non-API entry points in R.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

# RMariaDB

Version: 1.0.6

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpEWVH6C/Rd2pdfc3b043c501e7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# scales

Version: 0.5.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp3ILuWt/Rd2pdfc38bcf48e04'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# tibbletime

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpDhCmEE/Rd2pdf1866e10de463e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidyverse

Version: 1.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpsFuKnW/Rd2pdf489f7e8a546a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dbplyr’ ‘reprex’ ‘rlang’
      All declared Imports should be used.
    ```

# amt

Version: 0.0.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpg21kLD/Rd2pdfdbbc7d3c03dd'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘magrittr’
      All declared Imports should be used.
    ```

# anomalize

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpwMpTbR/Rd2pdf19acb36627106'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        help   4.7Mb
    ```

# assertr

Version: 2.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpasU0s4/Rd2pdf1d0285e5fae16'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# attempt

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpqw7lIN/Rd2pdf2986790c458d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# auk

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpV9Ch0u/Rd2pdf1e0c67ce37b4d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 552 marked UTF-8 strings
    ```

# ballr

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp9iQIxh/Rd2pdf1805e6862b01f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# banR

Version: 0.2.0

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── 1. Error: Reverse geocode tbl works  (@test_geocodetbl.R#60)  ───────────────
      The API sent back an error 503
      1: expect_is(object = reverse_geocode_tbl(tbl = table_reverse, longitude = x, latitude = y), 
             class = "tbl_df") at testthat/test_geocodetbl.R:60
      2: quasi_label(enquo(object), label) at /tmp/RtmpLg7K2A/R.INSTALLf21f1a5e21ed/testthat/R/expect-inheritance.R:67
      3: eval_bare(get_expr(quo), get_env(quo)) at /tmp/RtmpLg7K2A/R.INSTALLf21f1a5e21ed/testthat/R/expectation.R:90
      4: reverse_geocode_tbl(tbl = table_reverse, longitude = x, latitude = y) at /tmp/RtmpsQCCjx/R.INSTALL15ed67b0b3a6/rlang/R/eval.R:103
      5: stop("The API sent back an error ", httr::status_code(query_results))
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 6 SKIPPED: 0 FAILED: 1
      1. Error: Reverse geocode tbl works  (@test_geocodetbl.R#60) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 86-96 (geocode.Rmd) 
    Error: processing vignette 'geocode.Rmd' failed with diagnostics:
    The API sent back an error 503
    Execution halted
    ```

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### Name: reverse_geocode_tbl
    > ### Title: Reverse geocode tbl
    > ### Aliases: reverse_geocode_tbl
    > 
    > ### ** Examples
    > 
    > 
    > table_reverse <- tibble::tibble(
    + x = c(2.279092, 2.375933,2.308332), 
    + y = c(48.84683, 48.84255, 48.85032), 
    + z = rnorm(3)
    + )
    > 
    > reverse_geocode_tbl(tbl = table_reverse, longitude = x, latitude = y)
    Writing tempfile to.../tmp/RtmpIXXAlv/filebf827e894f5a.csv
    If file is larger than 8 MB, it must be splitted
    Size is : 73 bytes
    Server errorService UnavailableServer error: (503) Service Unavailable
    Error in reverse_geocode_tbl(tbl = table_reverse, longitude = x, latitude = y) : 
      The API sent back an error 503
    Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmppMKtbw/Rd2pdfa3d11efc4e42'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

# bayesammi

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp8mtGU9/Rd2pdf68823dda21ff'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# baystability

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpzjoRDR/Rd2pdf11a2779cc7d2b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggfortify’ ‘ggplot2’ ‘matrixStats’ ‘reshape2’ ‘scales’
      All declared Imports should be used.
    ```

# bioinactivation

Version: 1.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpRz5DKU/Rd2pdf1fb4c3351aa7a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# bioset

Version: 0.2.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpkslIAA/Rd2pdf1f99141a489f4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# blastula

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpBAtJxu/Rd2pdf1c6c71f7da029'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘purrr’ ‘rlang’ ‘tibble’
      All declared Imports should be used.
    ```

# blorr

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpGHKBph/Rd2pdf1532b6c18b6b4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘descriptr’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘lmtest’
    ```

# bupaR

Version: 0.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpB9powO/Rd2pdf1c54b588669'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# cancensus

Version: 0.1.7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpsa4TSF/Rd2pdfbd441154cdf8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# CGPfunctions

Version: 0.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp4k1BDu/Rd2pdf42931b212a74'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘BSDA’, ‘janitor’
    ```

# coalitions

Version: 0.6.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmphUw7l7/Rd2pdf3b8827bee2e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# codebook

Version: 0.5.9

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpxdkCpB/Rd2pdfa7c31acf1844'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘htmltools’ ‘pander’ ‘readr’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘labelled’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# comperes

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpjAisvG/Rd2pdf1cff355205fdc'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# condformat

Version: 0.7.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp0tc7Bu/Rd2pdf141167b38fef'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# cutpointr

Version: 0.7.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp3YBthI/Rd2pdf5f585331f445'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# cytominer

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpRqSocU/Rd2pdf14489242eff22'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# dbplot

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpZ5zAw4/Rd2pdf747361b6c518'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# dbplyr

Version: 1.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpBO1gZl/Rd2pdf138155724b0dd'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# descriptr

Version: 0.4.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpmcZJfL/Rd2pdf2b26608e6f49'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# detrendr

Version: 0.5.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpmLll8j/Rd2pdfccf249234632'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        libs   5.4Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# dexter

Version: 0.7.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpu6663W/Rd2pdfaa6d1d4fdbe7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 109 marked UTF-8 strings
    ```

# DiagrammeR

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpq8067K/Rd2pdfa7063f72b603'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# dlookr

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpExxubL/Rd2pdf12aef103c5402'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘randomForest’
      All declared Imports should be used.
    ```

# dotwhisker

Version: 0.4.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpI7yFqv/Rd2pdf1a54557ee28cb'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# driftR

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJ2yReo/Rd2pdfe2f934c49cc9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggplot2’ ‘readr’
      All declared Imports should be used.
    ```

# dynprog

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp6HTnEo/Rd2pdfc35714e67674'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# edeaR

Version: 0.8.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpdExqg0/Rd2pdf99c468499bff'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ESTER

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpPkajZg/Rd2pdf13e8363c324d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# estimatr

Version: 0.6.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpY4knAH/Rd2pdff8ae56a5ae1a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘broom’ ‘texreg’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 25.2Mb
      sub-directories of 1Mb or more:
        libs  25.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘texreg’
    ```

# etl

Version: 0.3.7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpU3imTq/Rd2pdf1f4a860db12e9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# evaluator

Version: 0.2.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpcsFipW/Rd2pdf18c6b362901ee'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# fabricatr

Version: 0.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp30abvT/Rd2pdff70e320520ce'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# facerec

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmppkdgL2/Rd2pdf11a4170da76ab'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# fbar

Version: 0.4.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpyHekcm/Rd2pdf1cf321b132c33'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# fold

Version: 0.2.6

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpr0YVvt/Rd2pdf1762f2617caf0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# foolbox

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp2ThVas/Rd2pdf31ea776e17d7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# forcats

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpRfxJvU/Rd2pdf1e1fb762f2f46'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# formulize

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpv5smlp/Rd2pdf4ffb26e093dc'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# furrr

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpOHX6dP/Rd2pdf1a3053242133a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ggalluvial

Version: 0.6.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpGsPRAA/Rd2pdf1c6ec70bfa0b1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# GGally

Version: 1.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpH9Skhw/Rd2pdf241556bf39c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ggeffects

Version: 0.3.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJqlTcS/Rd2pdf19f2850dd3af'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ordinal’
    ```

# ggformula

Version: 0.7.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpsrYpoc/Rd2pdf1a9e72e04741a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘quantreg’
    ```

# gghighlight

Version: 0.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpYjPwmn/Rd2pdfaf072ea643cf'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ggpmisc

Version: 0.2.17

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp4XtrEy/Rd2pdf1ac1717cf2690'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘grid’ ‘gridExtra’
      All declared Imports should be used.
    ```

# ggquickeda

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpBcnyWn/Rd2pdfea113ec2179b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DT’ ‘Hmisc’ ‘colourpicker’ ‘dplyr’ ‘ggrepel’ ‘grDevices’ ‘gridExtra’
      ‘lazyeval’ ‘markdown’ ‘plotly’ ‘quantreg’ ‘rlang’ ‘shinyjs’ ‘tidyr’
      All declared Imports should be used.
    ```

# ggstatsplot

Version: 0.0.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpnSL5Qv/Rd2pdf19ff76c6dadb'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# googleAnalyticsR

Version: 0.5.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp41UCEK/Rd2pdf1c38273b2946'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# googledrive

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpwTONnd/Rd2pdf970f425cd5f0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# GSODR

Version: 1.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmprbq2TB/Rd2pdf160a33d9df66d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# iadf

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpX6kvwV/Rd2pdf1e5fb58d7c22b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ijtiff

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpOpLVHg/Rd2pdf1171478b0e18d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘grDevices’
      All declared Imports should be used.
    ```

# implyr

Version: 0.2.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp2QgXTi/Rd2pdf13a3a31462bd0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# infer

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpUVFQFI/Rd2pdf1978257048483'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# inferr

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmptDtDas/Rd2pdf2fb2551d7d80'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# influxdbr

Version: 0.14.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpzatZSb/Rd2pdf1730763730b71'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# InjurySeverityScore

Version: 0.0.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpfj0jgb/Rd2pdf16d92631ad0f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ipumsr

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpQDifDI/Rd2pdfa4fe3fac1e60'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# janitor

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmps56PPO/Rd2pdf1e5e11c98a701'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

# jpmesh

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpAyc3Uj/Rd2pdfdb44b6003fd'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 176 marked UTF-8 strings
    ```

# jpndistrict

Version: 0.3.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpy2yKST/Rd2pdf18f102a89d06a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 502 marked UTF-8 strings
    ```

# keyholder

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpHO56kM/Rd2pdf941454b78c76'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# kokudosuuchi

Version: 0.4.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpab3GLb/Rd2pdf134cd4ce5eae7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 52458 marked UTF-8 strings
    ```

# konfound

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmppyY9as/Rd2pdf1c244a8d75fb'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# later

Version: 0.7.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpYddWh1/Rd2pdf2b1c263a8c34'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# listarrays

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpwIFFq2/Rd2pdfc28612b5970f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘keras’
    ```

# markmyassignment

Version: 0.8.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpy5pRvo/Rd2pdf2ca22ba1d4d0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# metaplot

Version: 0.4.9

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpeFSFEc/Rd2pdf16d9f1a84df4e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# MlBayesOpt

Version: 0.3.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpSTacRI/Rd2pdff3aa378733e1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘data.table’ ‘foreach’
      All declared Imports should be used.
    ```

# modeldb

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpoYaCZN/Rd2pdf1738c7dbe0d43'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# modelr

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpR05Rgq/Rd2pdf18dd648c26c76'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘lme4’, ‘rstanarm’
    ```

# moderndive

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpTXx4O4/Rd2pdf1151d3e51a56d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# mosaicCore

Version: 0.5.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpBxT3gH/Rd2pdf1386a79301fbc'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# mrgsolve

Version: 0.8.12

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpE1poVw/Rd2pdfa3df1cc840ed'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

# msigdbr

Version: 6.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpVxHDGx/Rd2pdf91244a9d4c25'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# mudata2

Version: 1.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp7tUA1t/Rd2pdf77e4ef9720'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# mvMonitoring

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpzSZQq2/Rd2pdfa56a333d3b2'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# nandb

Version: 1.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpIjQ6az/Rd2pdf11f8a47e09952'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# naniar

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpUxAILC/Rd2pdf2a3a7249c10d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘purrrlyr’
      All declared Imports should be used.
    ```

# ncmeta

Version: 0.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpTHwK4p/Rd2pdf1a8e45f3d46be'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# nofrills

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmplTV20p/Rd2pdf1a4727afd9596'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# nonmemica

Version: 0.8.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp0RYQFO/Rd2pdf178464a606913'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# normalr

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpXrtBJh/Rd2pdf130fc6ab3853b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# NPMOD

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpZT0Oq7/Rd2pdf3bc53cde6bc8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# nyctaxi

Version: 0.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpVcaAkM/Rd2pdfbefe6c483fd9'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
         ## Not run:
         
         taxi <- etl("nyctaxi", dir = "~/Desktop/nyctaxi/")
         taxi %>% 
            etl_extract(years = 2016, months = 1:2, types = c("yellow","green")) %>% 
            etl_transform(years = 2016, months = 1:2, types = c("yellow","green")) %>% 
            etl_load(years = 2016, months = 1:2, types = c("yellow","green")) 
         ## End(Not run)
         
    
    
    Attaching package: 'lubridate'
    
    The following object is masked from 'package:base':
    
        date
    
    Quitting from lines 61-71 (nyc_taxi.Rmd) 
    Error: processing vignette 'nyc_taxi.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# oec

Version: 2.7.8

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpQ3450n/Rd2pdf1be5a2855540c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘readr’
      All declared Imports should be used.
    ```

# olsrr

Version: 0.5.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJlUkr3/Rd2pdf14ed630642338'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# openair

Version: 2.4-2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpE7a1Kg/Rd2pdf1a5cc3a76e8ab'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# padr

Version: 0.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpXrnxHO/Rd2pdff626dafed26'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# particles

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp1YIzhc/Rd2pdf5673a494fa8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# photobiology

Version: 0.9.20

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpYozFjz/Rd2pdfb3c66fa81fc9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# pillar

Version: 1.2.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp6sYGAs/Rd2pdf14dcc37da60f1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# pivot

Version: 18.4.17

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpVe6PRn/Rd2pdf71797c33ac48'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘odbc’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘colorspace’ ‘lubridate’
      All declared Imports should be used.
    ```

# PKNCA

Version: 0.8.4

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Component "loadedOnly": Component 4: Component 1: 1 string mismatch
      Component "loadedOnly": Component 4: Component 2: 1 string mismatch
      Component "loadedOnly": Component 4: Component 3: 1 string mismatch
      Component "loadedOnly": Component 4: Component 4: 1 string mismatch
      ...
      Correct session information is set in provenance
      
      Provenance hash a generated on b with c.
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 1193 SKIPPED: 2 FAILED: 2
      1. Failure: provenance (@test-provenance.R#7) 
      2. Failure: provenance (@test-provenance.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp3152uo/Rd2pdf9a2f1b1cc4a9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# PKPDmisc

Version: 2.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpt5YOPj/Rd2pdfe2e328d0fa28'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘purrr’
      All declared Imports should be used.
    ```

# pmatch

Version: 0.1.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpRknkY9/Rd2pdf9bf97a656edd'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# pointblank

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpsDGXgX/Rd2pdf1dec0113cb13d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# polypoly

Version: 0.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpFjpbw0/Rd2pdf115f75409845f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# poppr

Version: 2.8.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpbRXZ5x/Rd2pdff79a5eaec765'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Warning in replayPlot(x) : "border" is not a graphical parameter
    Warning in replayPlot(x) : "fill" is not a graphical parameter
    Warning in replayPlot(x) : "border" is not a graphical parameter
    Warning in replayPlot(x) : "fill" is not a graphical parameter
    Warning in replayPlot(x) : "border" is not a graphical parameter
    Warning in replayPlot(x) : "fill" is not a graphical parameter
    Warning in replayPlot(x) : "border" is not a graphical parameter
    Warning in replayPlot(x) : "fill" is not a graphical parameter
    Warning in replayPlot(x) : "border" is not a graphical parameter
    Warning in replayPlot(x) : "fill" is not a graphical parameter
    sh: 1: kpsewhich: not found
    Warning in test_latex_pkg("framed", system.file("misc", "framed.sty", package = "knitr")) :
      unable to find LaTeX package 'framed'; will use a copy from knitr
    Warning in infinite_vals_replacement(D, warning) :
      Infinite values detected.
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'algo.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# prisonbrief

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp9gkMyi/Rd2pdf67b96bec2b91'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2 marked UTF-8 strings
    ```

# processanimateR

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpbov4Qn/Rd2pdf1cc7e180bcfe'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DiagrammeRsvg’ ‘RColorBrewer’ ‘tidyr’
      All declared Imports should be used.
    ```

# profile

Version: 1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmphF7Pgt/Rd2pdfe9fead0f257'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# promises

Version: 1.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmppN2Qzb/Rd2pdf36cd6a2f2297'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘purrr’
    ```

# proustr

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpHDdVTj/Rd2pdf1d32c73e4d063'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 20105 marked UTF-8 strings
    ```

# psychmeta

Version: 1.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpPEyE42/Rd2pdf5e9116f2bf2c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# purrr

Version: 0.2.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      The following object is masked from 'package:testthat':
      
          is_null
      
      > 
      > test_check("purrr")
      ── 1. Failure: can flatten to a data frame with named lists (@test-flatten.R#77)
      `flatten_dfc(list(1))` did not throw an error.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 393 SKIPPED: 0 FAILED: 1
      1. Failure: can flatten to a data frame with named lists (@test-flatten.R#77) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpakZgis/Rd2pdf949d49cf02a1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# qualtRics

Version: 3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp5vNXLx/Rd2pdf4bbc2cfbc8b8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# quantable

Version: 0.3.6

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJX7gda/Rd2pdf149081a69a908'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# quickReg

Version: 1.5.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp4tWy9k/Rd2pdf99b4784e6538'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘psych’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘PredictABEL’
    ```

# qwraps2

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp1g81QY/Rd2pdf7189239461b4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rbgm

Version: 0.0.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpHpVCjY/Rd2pdf16fa932b279be'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rclimateca

Version: 1.0.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
        |======================================================================| 100%
      
        |                                                                            
        |                                                                      |   0%
        |                                                                            
        |===================================                                   |  50%
        |                                                                            
        |======================================================================| 100%
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 187 SKIPPED: 0 FAILED: 2
      1. Failure: column types for ec_climate_data() are correct (@test-climate_data.R#123) 
      2. Failure: get mudata function for climate data works (@test-climate_data.R#463) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpfDIm27/Rd2pdf1d4b32147768b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 24 marked UTF-8 strings
    ```

# recipes

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpd6EDv1/Rd2pdf13f7d688f9b4d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# replyr

Version: 0.9.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpkdojZc/Rd2pdf599c1f056307'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rquery’
    ```

# rfm

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpz15zEf/Rd2pdfad5d2f12c7e9'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Quitting from lines 230-274 (rfm-customer-level-data.Rmd) 
    Error: processing vignette 'rfm-customer-level-data.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rhmmer

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpFmRmWF/Rd2pdf17b96792d7404'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# riingo

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpHrix4p/Rd2pdf1a8d732257eb9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rlang’
      All declared Imports should be used.
    ```

# RmarineHeatWaves

Version: 0.16.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpLd85wQ/Rd2pdf65374e90ad53'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rsample

Version: 0.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpk95tO3/Rd2pdf508233882de1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# RSDA

Version: 2.0.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpAs7QQ6/Rd2pdff5523d26f599'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# RtutoR

Version: 1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpaePG7h/Rd2pdfee3d22e01ea7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DT’ ‘rmarkdown’
      All declared Imports should be used.
    ```

# rubias

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpk1WAvI/Rd2pdf103d73030380b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        libs   3.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ggplot2’
      All declared Imports should be used.
    ```

# ruler

Version: 0.1.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpZMAY03/Rd2pdf6b737a3adef4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# sabre

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpwepT4A/Rd2pdf1eb46405a942f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# scatterpie

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpW0qdD7/Rd2pdfe37f2290a696'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# scriptName

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpndj6iP/Rd2pdfc21f41c8ca5f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# sealr

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpqs4ES3/Rd2pdf1d2676d25b223'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# seplyr

Version: 0.5.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpOzaKJT/Rd2pdf943629219e8d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# shiny

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpQwBr9C/Rd2pdf10cb44eddce6'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        www   6.6Mb
    ```

# sjlabelled

Version: 1.0.10

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpphGMBa/Rd2pdf63521e039d5b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# sjPlot

Version: 2.4.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpUNHDy3/Rd2pdf17c3858126fe4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘plm’
    ```

# sjstats

Version: 0.14.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpmdcx7L/Rd2pdf17cb67387097c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘MuMIn’, ‘piecewiseSEM’
    ```

# skimr

Version: 1.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpLASF5I/Rd2pdf1d1e87226ceb'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# sparklyr

Version: 0.8.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpM7PWlq/Rd2pdf1b878698e55b8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# spdplyr

Version: 0.1.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpBcGHHJ/Rd2pdf12b8a4dcc0911'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# srvyr

Version: 0.3.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpguSm6f/Rd2pdf137084c71eb01'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# stability

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpm4tDZb/Rd2pdf1d0dd794884fd'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# statar

Version: 0.6.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp75ZEi8/Rd2pdf137c65d7e229'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# stplanr

Version: 0.2.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpcLlETF/Rd2pdf16a8e6f78f07'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘tmap’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        doc    1.3Mb
        libs   1.8Mb
    ```

# sugrrants

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJ8b2Tl/Rd2pdfa8ba79f9fdb8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# SWMPrExtension

Version: 0.3.14

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpv4vj8U/Rd2pdfdd6e25bd6f13'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgeos’
      All declared Imports should be used.
    ```

# tabularaster

Version: 0.5.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmptsuw2c/Rd2pdfdc46c55b6df'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# tailr

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpDvpLv3/Rd2pdf11eb416143db9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tatoo

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpDRO8GU/Rd2pdf105ea7994705e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# taxa

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpO2IIlQ/Rd2pdf609c7afa1a63'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘lazyeval’ ‘rlang’ ‘tidyr’
      All declared Imports should be used.
    ```

# testthat

Version: 2.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpqt2JUC/Rd2pdf371830d3168b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        libs   3.9Mb
    ```

# textfeatures

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpbOmtlH/Rd2pdf1d3ae304a069a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tfdatasets

Version: 1.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpc0VufY/Rd2pdf1df7f3da9a11d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tfestimators

Version: 1.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpgWqvNw/Rd2pdf471255c4b1f2'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tfruns

Version: 1.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp1ah54h/Rd2pdf149d14582a5a2'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidyboot

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp1GYSCs/Rd2pdf46e34be74fd0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidyhydat

Version: 0.3.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpayuLRQ/Rd2pdf773a4bc56410'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidyimpute

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpA9vJnt/Rd2pdf1aa706178de80'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidyinftheo

Version: 0.2.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      12: shannon_entropy(.)
      13: reduce_data(.data, !(!enquo(X)), numvars = 1, na.rm = na.rm)
      14: tidyselect::vars_select(names(reduced_tab), !(!(!quos(...))))
      15: vars_select_eval(.vars, quos) at /tmp/RtmpBtFAmb/R.INSTALL8dbebaf15dd/tidyselect/R/vars-select.R:118
      16: map_lgl(quos, quo_is_helper) at /tmp/RtmpBtFAmb/R.INSTALL8dbebaf15dd/tidyselect/R/vars-select.R:222
      17: .f(.x[[i]], ...)
      18: extract_expr(quo) at /tmp/RtmpBtFAmb/R.INSTALL8dbebaf15dd/tidyselect/R/vars-select.R:291
      19: is_call(expr, paren_sym) at /tmp/RtmpBtFAmb/R.INSTALL8dbebaf15dd/tidyselect/R/vars-select.R:284
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 37 SKIPPED: 0 FAILED: 1
      1. Error: right number of columns given (@test-errors.R#10) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpj90tyU/Rd2pdf103f86bf33b30'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘tibble’ ‘tidyverse’
      All declared Imports should be used.
    ```

# tidyLPA

Version: 0.1.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpbk6NeJ/Rd2pdfb74454a0fe55'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidyposterior

Version: 0.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp1Sbrz2/Rd2pdf17c3c7c700969'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidypredict

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpWPus29/Rd2pdf7c061f49c91a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidyquant

Version: 0.5.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp9yjzz7/Rd2pdf11eab49f1cc57'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidyr

Version: 0.8.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpdcaW1d/Rd2pdf9dc26b2ac0de'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 23 marked UTF-8 strings
    ```

# tidyselect

Version: 0.2.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp8Pcs0a/Rd2pdf1a89d1ac4df51'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidystringdist

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmph92OYf/Rd2pdf97167a6de963'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

# tidytext

Version: 0.1.8

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpCiQuaL/Rd2pdf88ca38e5dbc1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidyxl

Version: 1.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpAB8ZKQ/Rd2pdf1fc5041f5778c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.6Mb
      sub-directories of 1Mb or more:
        libs  10.6Mb
    ```

# uncmbb

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpZclIFp/Rd2pdf1a7de56c2e3fa'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# unjoin

Version: 0.0.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpdcDsNd/Rd2pdf173aa157e8340'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# unpivotr

Version: 0.3.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpjfZxIM/Rd2pdf86d32e894bd9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# vdiffr

Version: 0.2.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpueLwNw/Rd2pdf1381f600a19f0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# VWPre

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpeoCWWP/Rd2pdf14ef72dacc7a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# wordbankr

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpO5WFg7/Rd2pdf76265f5b992b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dbplyr’
      All declared Imports should be used.
    ```

# xpose

Version: 0.4.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpNnh6bi/Rd2pdfe7af42b1eb94'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# yardstick

Version: 0.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpcS4kAZ/Rd2pdf1a7e45868de4a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# adklakedata

Version: 0.6.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpUPFCRZ/Rd2pdf1eba25402605e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# brazilmaps

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpRY0gTg/Rd2pdf1fee76f74cf01'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘sp’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ggthemes’
    ```

# btb

Version: 0.1.30

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpLdEl9D/Rd2pdfe70933d3c679'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# cartogram

Version: 0.0.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp1JePbi/Rd2pdf16dcc7515681c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# cartography

Version: 2.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpAEqW3H/Rd2pdfda563baacc34'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# cdcfluview

Version: 0.7.0

## In both

*   checking whether package ‘cdcfluview’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/Rtmp5qhFiB/file25ae516076a9/cdcfluview.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘cdcfluview’ ...
** package ‘cdcfluview’ successfully unpacked and MD5 sums checked
** R
** data
*** moving datasets to lazyload DB
** preparing package for lazy loading
Error in seq.int(0, to0 - from, by) : 'to' must be a finite number
Error : unable to load R code in package ‘cdcfluview’
ERROR: lazy loading failed for package ‘cdcfluview’
* removing ‘/tmp/Rtmp5qhFiB/file25ae516076a9/cdcfluview.Rcheck/cdcfluview’

```
### CRAN

```
* installing *source* package ‘cdcfluview’ ...
** package ‘cdcfluview’ successfully unpacked and MD5 sums checked
** R
** data
*** moving datasets to lazyload DB
** preparing package for lazy loading
Error in seq.int(0, to0 - from, by) : 'to' must be a finite number
Error : unable to load R code in package ‘cdcfluview’
ERROR: lazy loading failed for package ‘cdcfluview’
* removing ‘/tmp/Rtmp5qhFiB/file254f1696a9e9/cdcfluview.Rcheck/cdcfluview’

```
# concaveman

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp3IydYk/Rd2pdf1d730167f6791'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# crawl

Version: 2.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpGsFxDT/Rd2pdf1bf7a79e48669'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        libs   6.6Mb
    ```

# cyclestreets

Version: 0.1.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpTtUKyC/Rd2pdf16e5c534dc627'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# echor

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpbI5kkT/Rd2pdf108201a0abdc7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# eixport

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpa9GDy0/Rd2pdf15ee6d7b036c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# eurostat

Version: 3.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpOO4Oiq/Rd2pdf2fff64c2cb19'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘curl’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 484 marked UTF-8 strings
    ```

# fasterize

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpm13qm0/Rd2pdff5073d7f40c1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# FedData

Version: 2.5.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpnt77ZZ/Rd2pdf15ef07c9eae45'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘httr’
      All declared Imports should be used.
    ```

# geogrid

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpWOJ0cr/Rd2pdf16e17536f226d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# geojsonio

Version: 0.6.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpMUHN2N/Rd2pdfd5561f47c62a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc        1.4Mb
        examples   1.6Mb
        vign       1.1Mb
    ```

# googlePolylines

Version: 0.6.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpyb4c4J/Rd2pdf68aa251ee539'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# GWSDAT

Version: 3.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpM4Vw6T/Rd2pdf1f412ef8ef04'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# hydrolinks

Version: 0.10.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpNSUSEx/Rd2pdf109d416532134'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dbplyr’
      All declared Imports should be used.
    ```

# LAGOSNE

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmplr7cxe/Rd2pdfe2f11143f2ff'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# landsepi

Version: 0.0.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpRjkzk9/Rd2pdf16ecf18f5f0a2'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# leaflet

Version: 2.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJStsTB/Rd2pdf22ce1c11b0c4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# linemap

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpOLFp9u/Rd2pdf16e37148b0def'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 15 marked UTF-8 strings
    ```

# link2GI

Version: 0.3-0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp0RZmFp/Rd2pdfdcc37f94acae'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# lutz

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpQrbcsh/Rd2pdf16dfc796784c6'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# lwgeom

Version: 0.1-4

## In both

*   checking examples ... ERROR
    ```
    ...
    The error most likely occurred in:
    
    > ### Name: st_snap_to_grid
    > ### Title: Snap geometries to a grid
    > ### Aliases: st_snap_to_grid
    > 
    > ### ** Examples
    > 
    > # obtain data
    > library(sf)
    Linking to GEOS 3.5.1, GDAL 2.1.3, proj.4 4.9.2
    > x = st_read(system.file("gpkg/nc.gpkg", package="sf"), quiet = TRUE)[1, ] %>%
    +     st_geometry %>%
    +     st_transform(3395)
    > 
    > # snap to a grid of 5000 m
    > y = st_snap_to_grid(x, 5000)
    Error in CPL_snap_to_grid(x, origin, size) : 
      st_snap_to_grid: not supported in this version of liblwgeom
    Calls: st_snap_to_grid ... st_snap_to_grid.sfc -> st_sfc -> CPL_snap_to_grid -> .Call
    Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpv47Qt0/Rd2pdf16d661290b4e1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# mapedit

Version: 0.4.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpOCx3EE/Rd2pdf186f0162ae1c7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘geojsonio’
    ```

# mapsapi

Version: 0.3.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp54gynn/Rd2pdfb776686513a6'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 95-100 (intro.Rmd) 
    Error: processing vignette 'intro.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘plyr’
      All declared Imports should be used.
    ```

# mapview

Version: 2.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpTf6AGF/Rd2pdfca7b740fedeb'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        libs   1.7Mb
    ```

# MODIS

Version: 1.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpLnZjAm/Rd2pdf1f0a66e7017b4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# NipponMap

Version: 0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp25WVTg/Rd2pdf16df92b83973'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘kokudosuuchi’ ‘estatapi’ ‘jpndistrict’ ‘jpmesh’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘cshapes’, ‘mapdata’
    ```

# NLMR

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpWh3JzQ/Rd2pdfe5955567a48b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# nngeo

Version: 0.1.8

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpHJlHvy/Rd2pdf122ce1fc64033'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘geosphere’ ‘lwgeom’
      All declared Imports should be used.
    ```

# openSTARS

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmppt3owv/Rd2pdf10e05456ae898'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘sf’
      All declared Imports should be used.
    ```

# osmdata

Version: 0.0.7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpm87Zek/Rd2pdf72716ba872da'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        libs   5.1Mb
    ```

# parlitools

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpGo7OZT/Rd2pdfd5d92f17cbf2'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Linking to GEOS 3.5.1, GDAL 2.1.3, proj.4 4.9.2
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Downloading constituency data
    Warning: Column `party_id` joining character vector and factor, coercing into character vector
    Quitting from lines 67-110 (introduction.Rmd) 
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 13 marked UTF-8 strings
    ```

# plotly

Version: 4.7.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpsDQA9M/Rd2pdf261d7ca7fa07'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# raster

Version: 2.6-7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpQ02wnj/Rd2pdfd139fd47e33'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        R      2.5Mb
        libs   3.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘gstat’, ‘fields’
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Loading required package: sp
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'Raster.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# rcartocolor

Version: 0.0.22

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpj6rxFA/Rd2pdf28a42a5a69f2'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# RCzechia

Version: 1.2.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpylU7z9/Rd2pdf2609372a1116'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Linking to GEOS 3.5.1, GDAL 2.1.3, proj.4 4.9.2
    
    Attaching package: 'units'
    
    The following object is masked from 'package:base':
    
        %*%
    
    Quitting from lines 161-186 (vignette.Rmd) 
    Error: processing vignette 'vignette.Rmd' failed with diagnostics:
    Saving a widget with selfcontained = TRUE requires pandoc. For details see:
    https://github.com/rstudio/rmarkdown/blob/master/PANDOC.md
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rgeopat2

Version: 0.2.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp5hk3Cu/Rd2pdf1081565d56b5d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rmapshaper

Version: 0.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp20IJm6/Rd2pdf1211f6c682e3'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rmapzen

Version: 0.3.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpIEtm4U/Rd2pdf6eee5d66c123'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 31 marked UTF-8 strings
    ```

# rpostgisLT

Version: 0.6.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpsWHUAd/Rd2pdf183282b1df30c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘htmltools’
      All declared Imports should be used.
    ```

# RQGIS

Version: 1.0.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp0DPdms/Rd2pdff6c26ba21fa0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# sfdct

Version: 0.0.6

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp2mzqCg/Rd2pdfb824187669d1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# smoothr

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpySv2As/Rd2pdf123dd44323a0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# SpaDES.tools

Version: 0.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 1595 SKIPPED: 23 FAILED: 40
      1. Failure: spread2 tests -- asymmetry (@test-spread2.R#630) 
      2. Failure: spread2 tests -- asymmetry (@test-spread2.R#630) 
      3. Failure: spread2 tests -- asymmetry (@test-spread2.R#630) 
      4. Failure: spread2 tests -- asymmetry (@test-spread2.R#630) 
      5. Failure: spread2 tests -- asymmetry (@test-spread2.R#630) 
      6. Failure: spread2 tests -- asymmetry (@test-spread2.R#630) 
      7. Failure: spread2 tests -- asymmetry (@test-spread2.R#630) 
      8. Failure: spread2 tests -- asymmetry (@test-spread2.R#630) 
      9. Failure: spread2 tests -- asymmetry (@test-spread2.R#630) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpkkTLlL/Rd2pdf10ccbd9111ec'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘fastdigest’ ‘httr’
      All declared Imports should be used.
    ```

# spatialEco

Version: 1.1-0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpTOn5DY/Rd2pdf80f21f69d381'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# spbabel

Version: 0.4.8

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp0rFX3h/Rd2pdf1f5892fd7a1d0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# spdep

Version: 0.7-7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpfeb7rD/Rd2pdf17c63190a956b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Checking rgeos availability: TRUE
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'CO69.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# statesRcontiguous

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpxXhufr/Rd2pdf124bc393c613b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dplyr’ ‘magrittr’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 34 marked UTF-8 strings
    ```

# swmmr

Version: 0.8.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmptyuVT8/Rd2pdf437325741868'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidycensus

Version: 0.4.6

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpBj7Rop/Rd2pdf993b2af7fa47'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tigris

Version: 0.7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpEJQQke/Rd2pdfc521f0e2045'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tilegramsR

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpTnXtpx/Rd2pdfbcae7b5ef636'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘sp’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 341 marked UTF-8 strings
    ```

# uavRmp

Version: 0.5.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpAHDgTq/Rd2pdf18348521658f4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# vein

Version: 0.3.9

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpnIFB5t/Rd2pdf6bb744d1ea50'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# velox

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpDTuKWc/Rd2pdf160f35a6a324'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.2Mb
      sub-directories of 1Mb or more:
        libs  15.5Mb
    ```

# wunderscraper

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpCmFQqX/Rd2pdf98c351ce4797'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rwunderground’
    ```

# esc

Version: 0.4.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpNoXOoY/Rd2pdf1349b3054ca98'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘metafor’
    ```

# furniture

Version: 1.7.6

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpp01dOZ/Rd2pdf1368373287580'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# abjutils

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpNPKQOb/Rd2pdf182775dc0b114'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘httr’ ‘progress’
      All declared Imports should be used.
    ```

# afmToolkit

Version: 0.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpfsVrNf/Rd2pdf1f175ee99a6'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DBI’ ‘assertthat’ ‘tibble’
      All declared Imports should be used.
    ```

# alfred

Version: 0.1.6

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpDrrgdP/Rd2pdff677ffc89ce'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# alphavantager

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpEUfgVt/Rd2pdf1951757b28067'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘devtools’
      All declared Imports should be used.
    ```

# AMR

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpwL0qaa/Rd2pdf1d5cd5724c66b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# anomalyDetection

Version: 0.2.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpoHeiEn/Rd2pdf13ffa649943c9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘caret’
      All declared Imports should be used.
    ```

# apaTables

Version: 2.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpjZkjMv/Rd2pdf19c7a209e19b8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# atlantistools

Version: 0.4.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpCrLDnM/Rd2pdf28c2116613e0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# babynames

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpxDrKI6/Rd2pdfc18c880c6d0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        data   8.9Mb
    ```

# beadplexr

Version: 0.1.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘flowCore’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# bikedata

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpdzse1f/Rd2pdf16a4054027406'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        doc    2.6Mb
        libs   7.0Mb
    ```

# billboard

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpkztGUX/Rd2pdf1a1954b047ae6'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 660 marked UTF-8 strings
    ```

# blockTools

Version: 0.6-3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJtapaa/Rd2pdf7da34241a0b3'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# blscrapeR

Version: 3.1.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘blscrapeR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: qcew_api
    > ### Title: Request data from the Quarterly Census of Employment and Wages.
    > ### Aliases: qcew_api
    > ### Keywords: api bls cpi economics inflation unemployment
    > 
    > ### ** Examples
    > 
    > 
    > # A request for the employment levels and wages for NIACS 5112: Software Publishers.
    > dat <- qcew_api(year=2015, qtr="A", slice="area", sliceCode="US000")
    Please set a numeric year.
    Trying BLS servers...
    URL caused a warning. Please check your parameters and try again: https://data.bls.gov/cew/data/api/2015/A/area/US000.csv
    Error in qcew_api(year = 2015, qtr = "A", slice = "area", sliceCode = "US000") : 
      object 'qcewDat' not found
    Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpiQC8TV/Rd2pdf125053ead5a6b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# breathtestcore

Version: 0.4.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmps02Zft/Rd2pdf19a746b051cef'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘breathteststan’
    ```

# breathteststan

Version: 0.4.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpUj1IL9/Rd2pdf17c84106ef2b9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 29.0Mb
      sub-directories of 1Mb or more:
        libs  28.8Mb
    ```

# bsam

Version: 1.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpYDVWL2/Rd2pdf1f62c1967162f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rworldxtra’ ‘sp’
      All declared Imports should be used.
    ```

# caffsim

Version: 0.2.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpI3vuAl/Rd2pdf147546f11522a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘markdown’
      All declared Imports should be used.
    ```

# cattonum

Version: 0.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpFFDdNM/Rd2pdfee937863864a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ccafs

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmptZexol/Rd2pdf130b53611f72'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# CDECRetrieve

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmphigYnh/Rd2pdfbbb542c8cc47'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘lazyeval’ ‘purrr’ ‘roxygen2’
      All declared Imports should be used.
    ```

# cellranger

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpFHD4Sv/Rd2pdf30a4723bf02b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# cepR

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpuwriFo/Rd2pdf1a25015efd416'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 287 marked UTF-8 strings
    ```

# charlatan

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpssYWJt/Rd2pdf526942b307de'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# checkmate

Version: 1.8.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpXr2s7r/Rd2pdfc3314bc31408'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# childsds

Version: 0.6.7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpysRXoo/Rd2pdf1c1ea7214fdb3'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘gamlss.dist’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 20 marked UTF-8 strings
    ```

# ciTools

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp6Ydyat/Rd2pdf111f16d58b367'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# Cluster.OBeu

Version: 1.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp9lzrKb/Rd2pdf78d226acc0f9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# codemetar

Version: 0.1.6

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      1: expect_is(create_codemeta("codemetar", codemeta), "list") at testthat/test-write_codemeta.R:60
      2: quasi_label(enquo(object), label) at /tmp/RtmpLg7K2A/R.INSTALLf21f1a5e21ed/testthat/R/expect-inheritance.R:67
      3: eval_bare(get_expr(quo), get_env(quo)) at /tmp/RtmpLg7K2A/R.INSTALLf21f1a5e21ed/testthat/R/expectation.R:90
      4: create_codemeta("codemetar", codemeta) at /tmp/RtmpsQCCjx/R.INSTALL15ed67b0b3a6/rlang/R/eval.R:103
      5: add_github_topics(cm)
      6: gh::gh("GET /repos/:owner/:repo/topics", repo = repo, owner = owner, .send_headers = c(Accept = "application/vnd.github.mercy-preview+json"))
      7: gh_process_response(raw) at /tmp/RtmpdUKkac/R.INSTALL3e5a10344812/gh/R/package.R:121
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 77 SKIPPED: 10 FAILED: 2
      1. Error: We can use either a path or pkg name in writing (@test-write_codemeta.R#38) 
      2. Error: we can write codemeta given a codemeta object (@test-write_codemeta.R#60) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpkOqPuF/Rd2pdfed6f404170c9'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 79-80 (codemeta-intro.Rmd) 
    Error: processing vignette 'codemeta-intro.Rmd' failed with diagnostics:
    GitHub API error (403): 403 Forbidden
      API rate limit exceeded for 13.71.27.76. (But here's the good news: Authenticated requests get a higher rate limit. Check out the documentation for more details.)
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘memoise’
      All declared Imports should be used.
    ```

# coefplot

Version: 1.2.6

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpzhmEhj/Rd2pdfbfc0ea08628'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# congressbr

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpIHh6Ea/Rd2pdf1465562817c5'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 187 marked UTF-8 strings
    ```

# corrr

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpj5phhi/Rd2pdf6e687aace9f2'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# countyweather

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpzYT26L/Rd2pdf1dadd549d15aa'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# cpr

Version: 0.2.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpw9nUSa/Rd2pdf165362f9bbcff'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# crosswalkr

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpVbH5DG/Rd2pdfbacf1c0d3b9d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# crplyr

Version: 0.1.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpA9bG3U/Rd2pdf1ab3f41122c7f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# crsra

Version: 0.2.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp2hdunN/Rd2pdf4e596001a388'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 500 marked UTF-8 strings
    ```

# dat

Version: 0.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmps0w406/Rd2pdf101e6f85995c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# datacheckr

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpwUUuCe/Rd2pdf2e817af6eed1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# dataCompareR

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpSghbxa/Rd2pdf9ec31ae1e65'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# datadogr

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpOFcZtf/Rd2pdf1ad6ae7cd3bf'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# dataonderivatives

Version: 0.3.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpCLaLqR/Rd2pdffddf759b2541'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# datapasta

Version: 3.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpTpoimy/Rd2pdf4b1231dd8447'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# datastepr

Version: 0.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpRdBPmE/Rd2pdf959f25198ccd'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# datoramar

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpsMsFmM/Rd2pdfc1702657be48'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# diceR

Version: 0.5.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpZPqHr6/Rd2pdf1a7a34c397fb0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# diffdf

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpLgvzZ5/Rd2pdfab4531cfc8b3'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# dkanr

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJ4fpP2/Rd2pdf9a2b10e918d9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# docxtractr

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpttHbFb/Rd2pdf1adbf6bbbaac6'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# dynfrail

Version: 0.5.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpN3w3kf/Rd2pdfbc86411ccea2'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# easyformatr

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpKBhRxD/Rd2pdf1cbb727d7f92e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ecoseries

Version: 0.1.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpVDDXgU/Rd2pdf117a760cb2cc3'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# editData

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp1hSNt7/Rd2pdfa80b78930781'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# EdSurvey

Version: 2.0.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpYppqDK/Rd2pdf15aff3ec3a372'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# electoral

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpsYXWpC/Rd2pdf1a2a4123e2ea4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# emuR

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpHVEI6t/Rd2pdf141104daa2878'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ess

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpk3doU6/Rd2pdf648b208f1757'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# essurvey

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp3Teenf/Rd2pdf60d864e6315d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# exifr

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpEw0MvM/Rd2pdf1a2e9278d7a8e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.3Mb
      sub-directories of 1Mb or more:
        exiftool  12.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# fastDummies

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpo5JSOf/Rd2pdf35ae169d3dd2'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# fastqcr

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpxcHLVb/Rd2pdf1c49a4847bf'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# fcuk

Version: 0.1.21

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp3boBiP/Rd2pdf2d9624aeda2a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# fileplyr

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpPD8PyF/Rd2pdf1458b4afdc2f6'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# filesstrings

Version: 2.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpMPdA2v/Rd2pdf9f0ceb102b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# fixerapi

Version: 0.1.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpyiChcj/Rd2pdf1ce074d40ae73'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# flatr

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpteRbby/Rd2pdf1a29335ef416e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# fmbasics

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp1IWtYt/Rd2pdfbcee411cf00'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# foghorn

Version: 1.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp2nSW3t/Rd2pdfaf0d79e7a063'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# forestmodel

Version: 0.5.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmptvNZY3/Rd2pdf18d3549bebdf0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# frailtyEM

Version: 0.8.8

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpg8l26f/Rd2pdfe60330ab609f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    Loading required package: survival
    Loading required package: gridExtra
    Warning: Removed 2 rows containing missing values (geom_path).
    Warning in emfrail(Surv(time, status) ~ age + sex + cluster(id), data = kidney,  :
      Hessian virtually 0; frailty variance might be at the edge of the parameter space.
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'frailtyEM_manual.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# ftDK

Version: 1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpRKJlIb/Rd2pdf1a3506c680321'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 39 marked UTF-8 strings
    ```

# fulltext

Version: 1.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmppTAzpH/Rd2pdf96211b72d8d7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# gapminder

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpGv5ZCk/Rd2pdf1f2731e86834e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# gastempt

Version: 0.4.01

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpcHOJm7/Rd2pdf15f1057420090'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 59.1Mb
      sub-directories of 1Mb or more:
        libs  58.7Mb
    ```

# gdns

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJPfhto/Rd2pdf1aba91b715e09'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# geniusr

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpdBnGKy/Rd2pdf1146a5083cf92'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# genogeographer

Version: 0.1.8

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpdvNcjX/Rd2pdf1286944b67ff8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# geojson

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp3OLnvA/Rd2pdf5e8c2e1115a4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# GerminaR

Version: 1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpYWgKbC/Rd2pdf1addb3d8bc133'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DT’ ‘shinydashboard’
      All declared Imports should be used.
    ```

# getCRUCLdata

Version: 0.2.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpuOfLOm/Rd2pdfaa4758721952'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rappdirs’
      All declared Imports should be used.
    ```

# GetDFPData

Version: 0.7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpI62R2f/Rd2pdfe2de39a306af'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# GetITRData

Version: 0.7

## Newly fixed

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 99-112 (gitrd-vignette-introduction.Rmd) 
    Error: processing vignette 'gitrd-vignette-introduction.Rmd' failed with diagnostics:
    Zipped file contains 0 files. This is likelly a problem with the downloaded file. Try running the code again as the corrupted zip file was deleted and will be downloaded again.
    
    If the problem persists, my suggestions is to remove the time period with problem.
    Execution halted
    ```

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpxGZiER/Rd2pdfe45f6d8e3470'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# getlandsat

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp8QuKFE/Rd2pdf135623d07746'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# getTBinR

Version: 0.5.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpP6xrzX/Rd2pdf16f6066989f1b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ggalt

Version: 0.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpLD4x0b/Rd2pdfe4cb583090ba'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘plotly’
      All declared Imports should be used.
    ```

# ggconf

Version: 0.1.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmptqIe8w/Rd2pdf1faf34d81afd9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ggdag

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpjc7Bm9/Rd2pdf5e53eaa2a9b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggforce’ ‘plyr’
      All declared Imports should be used.
    ```

# ggenealogy

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpdvc2P8/Rd2pdfe2021f8e895d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2356 marked UTF-8 strings
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
      conversion failure on 'Barbara Choroś-Tomczyk' in 'mbcsToSbcs': dot substituted for <c5>
    Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y,  :
      conversion failure on 'Barbara Choroś-Tomczyk' in 'mbcsToSbcs': dot substituted for <9b>
    Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y,  :
      conversion failure on 'Barbara Choroś-Tomczyk' in 'mbcsToSbcs': dot substituted for <c5>
    Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y,  :
      conversion failure on 'Barbara Choroś-Tomczyk' in 'mbcsToSbcs': dot substituted for <9b>
    Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y,  :
      conversion failure on 'Ondřej Chochola' in 'mbcsToSbcs': dot substituted for <c5>
    Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y,  :
      conversion failure on 'Ondřej Chochola' in 'mbcsToSbcs': dot substituted for <99>
    Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y,  :
      conversion failure on 'Ondřej Chochola' in 'mbcsToSbcs': dot substituted for <c5>
    Warning in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y,  :
      conversion failure on 'Ondřej Chochola' in 'mbcsToSbcs': dot substituted for <99>
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'ggenealogy.tex' failed.
    Messages:
    sh: 1: /usr/bin/texi2dvi: not found
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# ggfan

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp0uhagP/Rd2pdf117343b00d77b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘colorspace’ ‘grid’ ‘rstan’
      All declared Imports should be used.
    ```

# ggfortify

Version: 0.4.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmppCeuF3/Rd2pdf3cfb2b047698'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ggguitar

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpnKkSSK/Rd2pdfe1426176d03c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gridExtra’ ‘lazyeval’ ‘readr’
      All declared Imports should be used.
    ```

# ggplot2

Version: 2.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpp7BRqK/Rd2pdf1fb326622d838'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘reshape2’
      All declared Imports should be used.
    ```

# ggplotAssist

Version: 0.1.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpKVpnnz/Rd2pdf1721b64aba470'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gcookbook’ ‘ggthemes’ ‘moonBook’ ‘tidyverse’
      All declared Imports should be used.
    ```

# ggraptR

Version: 1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpNjQfcI/Rd2pdfb1961e4e4277'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DBI’ ‘GGally’ ‘RColorBrewer’ ‘Rcpp’ ‘assertthat’ ‘backports’
      ‘colorspace’ ‘colourpicker’ ‘evaluate’ ‘futile.options’ ‘gdtools’
      ‘gtable’ ‘htmltools’ ‘htmlwidgets’ ‘httpuv’ ‘labeling’ ‘lambda.r’
      ‘lazyeval’ ‘magrittr’ ‘miniUI’ ‘munsell’ ‘plyr’ ‘reshape’ ‘rprojroot’
      ‘scales’ ‘stringi’ ‘stringr’ ‘svglite’ ‘tibble’ ‘xtable’ ‘yaml’
      All declared Imports should be used.
    ```

# ggthemes

Version: 3.5.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpZlReER/Rd2pdf660630015803'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘latticeExtra’
    ```

# gibble

Version: 0.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpohaHja/Rd2pdf1a8a61af71957'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# giphyr

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmppSpkuo/Rd2pdf19245451ba79'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# gitlabr

Version: 0.9

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpShutx6/Rd2pdf1346db9e48ce'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# googleLanguageR

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpSidC6w/Rd2pdf1eb2c35463ceb'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# graphframes

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp3GAj5z/Rd2pdf573d2c7f7adf'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# hansard

Version: 0.6.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp3V04bS/Rd2pdf895c5132a781'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# haploR

Version: 1.6.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpfIHK96/Rd2pdf488a14a44ef0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# heemod

Version: 0.9.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpguMKWl/Rd2pdf1fe793cab312f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# highcharter

Version: 0.5.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpE94Wvf/Rd2pdf1934b35418f00'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Highcharts (www.highcharts.com) is a Highsoft software product which is
    not free for commercial and Governmental use
    Quitting from lines 45-46 (charting-data-frames.Rmd) 
    Error: processing vignette 'charting-data-frames.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.5Mb
      sub-directories of 1Mb or more:
        doc          13.7Mb
        htmlwidgets   1.9Mb
    ```

# htmlTable

Version: 1.11.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpAThtfi/Rd2pdf1fc2f7f45b52f'
    ```

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘pxweb’ in Rd xrefs
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# HURDAT

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp3rtoGk/Rd2pdf1e7875e24a824'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# huxtable

Version: 3.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      6: withCallingHandlers(withVisible(code), warning = handle_warning, message = handle_message) at /tmp/RtmpLg7K2A/R.INSTALLf21f1a5e21ed/testthat/R/evaluate-promise.R:34
      7: withVisible(code) at /tmp/RtmpLg7K2A/R.INSTALLf21f1a5e21ed/testthat/R/evaluate-promise.R:34
      8: eval_bare(get_expr(quo), get_env(quo)) at /tmp/RtmpLg7K2A/R.INSTALLf21f1a5e21ed/testthat/R/evaluate-promise.R:34
      9: quick_pdf(m, dfr, ht, file = tf) at /tmp/RtmpsQCCjx/R.INSTALL15ed67b0b3a6/rlang/R/eval.R:103
      10: tools::texi2pdf(latex_file, clean = TRUE)
      11: texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet, texi2dvi = texi2dvi, 
             texinputs = texinputs, index = index)
      12: stop(msg, domain = NA)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 348 SKIPPED: 54 FAILED: 1
      1. Error: Quick output functions work (@test-output.R#135) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmps31dYU/Rd2pdf1aeb33344c17a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘xtable’
    ```

# hydroscoper

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmppqs3M1/Rd2pdfcf642a06d32c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3031 marked UTF-8 strings
    ```

# hypoparsr

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpSeul7Y/Rd2pdf74ed42ab241e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# incgraph

Version: 1.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpghyquC/Rd2pdf1a2ba25526940'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

# isdparser

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpOBpMba/Rd2pdf53b123e57027'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# jaod

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpz1z20g/Rd2pdf111b3199486fa'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# knitr

Version: 1.20

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/run-all.R’ failed.
    Last 13 lines of output:
      
      If you have a working LaTeX compiler, try one of the
      following solutions:
      
      	Set the path to your compiler as the value of either latexcmd or
      	tikzLatex in .Rprofile using options().
      
      	Set the path to your compiler as the value of either R_LATEXCMD or
      	R_PDFLATEXCMD in .Renviron.
      
      	Ensure the folder containing your compiler is included in PATH.
      
      8: In test_latex_pkg("framed", system.file("misc", "framed.sty", package = "knitr")) :
        unable to find LaTeX package 'framed'; will use a copy from knitr
      Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpyk4VN3/Rd2pdf16389b9d8a33'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# kntnr

Version: 0.4.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpKx6YB8/Rd2pdf19f563c907f6f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# KraljicMatrix

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpEJsYUZ/Rd2pdfd9756543cbef'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dplyr’ ‘tibble’
      All declared Imports should be used.
    ```

# landscapetools

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp0MAmxA/Rd2pdfd2351cd4ee6'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# learningCurve

Version: 1.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp4rQvLv/Rd2pdfc3378127f96'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gridExtra’ ‘scales’ ‘tibble’
      All declared Imports should be used.
    ```

# lifelogr

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmplnIoi1/Rd2pdf48d76dd8a0ba'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# magicLamp

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpklzaoK/Rd2pdfc165690f0ac9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# malariaAtlas

Version: 0.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpWfMOfH/Rd2pdf65047230b788'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘grid’
      All declared Imports should be used.
    ```

# manifestoR

Version: 1.2.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp9SebeP/Rd2pdface35c8988aa'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# mcmcr

Version: 0.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp2jHcFW/Rd2pdfc23e2284eb4c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rjags’
    ```

# meltt

Version: 0.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp4tgBW8/Rd2pdfd7ad7c7ef352'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# microdemic

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpKg7jap/Rd2pdf10f4775371e2f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# mnis

Version: 0.2.7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp4d8jdq/Rd2pdf93a273973c58'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# monkeylearn

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpsYcEPK/Rd2pdf1ce4f39270786'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ratelimitr’
      All declared Imports should be used.
    ```

# mosaicModel

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpkjyfxB/Rd2pdf156e05eb81f03'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘MASS’ ‘caret’ ‘ggformula’ ‘knitr’ ‘testthat’ ‘tidyverse’
      All declared Imports should be used.
    ```

# mregions

Version: 0.1.6

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpDH5jtE/Rd2pdf16816375262ba'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘leaflet’
    ```

# msgtools

Version: 0.2.7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpPZdbza/Rd2pdf146dc153c18d5'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# natserv

Version: 0.1.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpD2V5RA/Rd2pdf1e73b7dbb80b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# nls.multstart

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpuPQVNe/Rd2pdf18c4f625d969a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# nneo

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp4JBpUC/Rd2pdf1122d5c910c1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# nomisr

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmphp0NSB/Rd2pdf1dce7d6ad5f1'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# nycflights13

Version: 0.2.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp9Z8ZtR/Rd2pdf1a3027ec3756c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        data   6.9Mb
    ```

# oai

Version: 0.2.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpqbLwkQ/Rd2pdf15b1058f096a8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# observer

Version: 0.1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp40HQov/Rd2pdf8a34cb15b25'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘ensurer’, ‘validate’
    ```

# officer

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpqO8DEJ/Rd2pdfc9b3789a9a84'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# openadds

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpbosIE3/Rd2pdfb72663193d52'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# pangaear

Version: 0.6.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpvj0P7Y/Rd2pdf1511f44414702'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# pdfsearch

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpomlQ7o/Rd2pdf131ee346e50f9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# perccalc

Version: 1.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpyV8VZJ/Rd2pdf195372597ea48'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# photobiologyInOut

Version: 0.4.14

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpc1o286/Rd2pdf649b3d68df2c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# phylopath

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpZzFdxS/Rd2pdf4ac156e7680'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# pinnacle.data

Version: 0.1.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpnEtP0v/Rd2pdf10d45247cc233'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# poio

Version: 0.0-3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp2kppM3/Rd2pdf1ad8534e77a51'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ISOcodes’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 8 marked UTF-8 strings
    ```

# pool

Version: 0.1.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpRAUOJd/Rd2pdf1337b6f5ae03c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# postlightmercury

Version: 1.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpVGNQUE/Rd2pdf114ae64d10f20'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# prcr

Version: 0.1.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpDbjejl/Rd2pdf1fa4b3b916a80'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ProjectTemplate

Version: 0.8.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp45IGyM/Rd2pdf1ea31134ebbb5'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# PSTR

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJ6YQwq/Rd2pdfc31d42dc8758'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# psycho

Version: 0.2.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp2Lyrpa/Rd2pdf17c594a5467a6'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
        last_plot
    
    The following objects are masked from 'package:rstanarm':
    
        get_x, get_y
    
    The following object is masked from 'package:stats':
    
        filter
    
    The following object is masked from 'package:graphics':
    
        layout
    
    We recommend that you use the dev version of ggplot2 with `ggplotly()`
    Install it with: `devtools::install_github('hadley/ggplot2')`
    Quitting from lines 503-531 (bayesian.Rmd) 
    Error: processing vignette 'bayesian.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BayesFactor’ ‘methods’ ‘pbkrtest’
      All declared Imports should be used.
    ```

# radiant.data

Version: 0.8.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmppr9u8o/Rd2pdfaeae503e882b'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# railtrails

Version: 0.0.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp8MoUrp/Rd2pdf1cf4b2477452e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1583 marked UTF-8 strings
    ```

# randNames

Version: 0.2.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpbU3Kwd/Rd2pdfc11f5a91bfa8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rbcb

Version: 0.1.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpI9Rrnq/Rd2pdfc3842530ba51'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rbhl

Version: 0.8.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpkGTJyc/Rd2pdf155136664a31c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rbraries

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp449AdX/Rd2pdf111467eee28c9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rcongresso

Version: 0.3.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘rcongresso-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: fetch_despesas_deputado
    > ### Title: Fetches expenditures from deputy using its id
    > ### Aliases: fetch_despesas_deputado
    > 
    > ### ** Examples
    > 
    > gastos_abel_mesquita <- fetch_despesas_deputado(dep_id = 178957)
    Error in .congresso_api(.$path, query) : Bad Request (HTTP 400).
    Calls: fetch_despesas_deputado ... overscope_eval_next -> .congresso_api -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── 5. Failure: Dimensoes do dataframe (@test_votacoes.R#54)  ───────────────────
      dim(votos_pec241) not equal to c(478, 10).
      1/2 mismatches
      [1] 500 - 478 == 22
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 48 SKIPPED: 0 FAILED: 5
      1. Failure: GET deputado inexistente (@test_deputados.R#3) 
      2. Error: (unknown) (@test_deputados.R#10) 
      3. Failure: Atributos do dataframe (@test_proposicoes.R#50) 
      4. Failure: Campos do dataframe (@test_proposicoes.R#56) 
      5. Failure: Dimensoes do dataframe (@test_votacoes.R#54) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpCJ1l9W/Rd2pdf9d476b1a3fa6'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Quitting from lines 62-65 (introducao-rcongresso.Rmd) 
    Error: processing vignette 'introducao-rcongresso.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rcv

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpRX9HBc/Rd2pdf1e978650dcf86'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 6543 marked UTF-8 strings
    ```

# rdefra

Version: 0.3.4

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      6: httr::http_error(myURL) at /tmp/RtmpsQCCjx/R.INSTALL15ed67b0b3a6/rlang/R/eval.R:103
      7: http_error.character(myURL) at /tmp/RtmpYqyC9w/R.INSTALLbaaa193c7589/httr/R/response-status.r:162
      8: http_error(HEAD(x, ...)) at /tmp/RtmpYqyC9w/R.INSTALLbaaa193c7589/httr/R/response-status.r:166
      9: HEAD(x, ...) at /tmp/RtmpYqyC9w/R.INSTALLbaaa193c7589/httr/R/response-status.r:162
      10: request_perform(req, hu$handle$handle) at /tmp/RtmpYqyC9w/R.INSTALLbaaa193c7589/httr/R/http-head.r:28
      11: request_fetch(req$output, req$url, handle) at /tmp/RtmpYqyC9w/R.INSTALLbaaa193c7589/httr/R/request.R:137
      12: request_fetch.write_memory(req$output, req$url, handle) at /tmp/RtmpYqyC9w/R.INSTALLbaaa193c7589/httr/R/write-function.R:74
      13: curl::curl_fetch_memory(url, handle = handle) at /tmp/RtmpYqyC9w/R.INSTALLbaaa193c7589/httr/R/write-function.R:76
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 19 SKIPPED: 1 FAILED: 1
      1. Error: Hourly data for station ABD/2014 should be available (@test-data.R#11) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpvPf26U/Rd2pdfb7b9c59fc85'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rdflib

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpllJQ6z/Rd2pdf121ec312edbc0'
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    ✔ ggplot2 2.2.1     ✔ purrr   0.2.4
    ✔ tibble  1.4.2     ✔ dplyr   0.7.5
    ✔ tidyr   0.8.1     ✔ stringr 1.3.1
    ✔ readr   1.1.1     ✔ forcats 0.3.0
    ── Conflicts ───────────────────────────────────── tidyverse_conflicts() ──
    ✖ dplyr::filter() masks stats::filter()
    ✖ dplyr::lag()    masks stats::lag()
    
    Attaching package: 'jsonlite'
    
    The following object is masked from 'package:purrr':
    
        flatten
    
    Joining, by = "carrier"
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      Pandoc (>= 1.12.3) and/or pandoc-citeproc not available. Falling back to R Markdown v1.
    Quitting from lines 39-40 (rdf_intro.Rmd) 
    Error: processing vignette 'rdf_intro.Rmd' failed with diagnostics:
    there is no package called 'webshot'
    Execution halted
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rdiversity

Version: 1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpnIXH0v/Rd2pdfd6f82ff39370'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rdpla

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpQwnoX2/Rd2pdf1ea4d5008ba48'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# readtext

Version: 0.71

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpvSMrpo/Rd2pdf455e133b0b2a'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked Latin-1 string
      Note: found 1 marked UTF-8 string
      Note: found 7 strings marked as "bytes"
    ```

# readxl

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJn47tZ/Rd2pdf304f4de89350'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        libs   4.5Mb
    ```

# REDCapR

Version: 0.9.8

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpvX3kBg/Rd2pdf108f05c63db96'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# refimpact

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp9Z27V3/Rd2pdf51c47da1b289'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘curl’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 85 marked UTF-8 strings
    ```

# relatable

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp9FT9gn/Rd2pdf2ab94dacef75'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rematch2

Version: 2.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmprEcCnw/Rd2pdfc396278d8701'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# repurrrsive

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpwGv8nO/Rd2pdfc3ce2292f2b8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 8 marked UTF-8 strings
    ```

# rerddap

Version: 0.4.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpFdnRPR/Rd2pdfe9ed65444cc4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘taxize’
    ```

# reutils

Version: 0.2.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpAEFA3Y/Rd2pdfc22b6e29e5e8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rFSA

Version: 0.9.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpOV4azo/Rd2pdf57e13975b32'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# rgbif

Version: 0.9.9

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpTCeZgw/Rd2pdf1ea127e80310'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rgho

Version: 1.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpHZK1vy/Rd2pdf1dbd56f2c03a7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# riem

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmphcyG4N/Rd2pdf5444e309640'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rif

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpQnDM5y/Rd2pdf154662305698c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# Rilostat

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpLX8DQv/Rd2pdfe90c1f13ccc4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rio

Version: 0.5.10

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpkk9w3l/Rd2pdf14eca38dd3b3e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ritis

Version: 0.7.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpVlAx4w/Rd2pdfca05186aab26'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rmarkdown

Version: 1.9

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp5bOaZd/Rd2pdf159e415e38c63'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        rmd   6.1Mb
    ```

# rmweather

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpMQD85m/Rd2pdf1f53f4f5921e8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

# rnoaa

Version: 0.7.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpGWGam5/Rd2pdfdedf48aa3f8f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# roadoi

Version: 0.5.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpNsJeUM/Rd2pdf90e4463e648'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rodham

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpwsdga1/Rd2pdf1001727760c4f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 59 marked UTF-8 strings
    ```

# rorcid

Version: 0.4.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp1wwBsz/Rd2pdf14de2769f6f71'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rsunlight

Version: 0.7.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpap3aPw/Rd2pdf1109a7e0208c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘ggplot2’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

# rtide

Version: 0.0.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpI5jgjY/Rd2pdf1c38476830af4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rtimes

Version: 0.5.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpY2HtFz/Rd2pdf1fcc473f44df6'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rtimicropem

Version: 1.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpYtJ4rr/Rd2pdf17b847cff97e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# rtweet

Version: 0.6.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpl9Zs1S/Rd2pdfd381cc53dd2'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 113868 marked UTF-8 strings
    ```

# rtypeform

Version: 0.3.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpSBoGbu/Rd2pdf1a28237dd9d8c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rwalkr

Version: 0.3.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpd1PhBH/Rd2pdfe0cc1e7a7df5'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# rwunderground

Version: 0.1.8

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp5RvYF9/Rd2pdf1ccf06638ead0'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# RxODE

Version: 0.7.2-1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp9J7QOM/Rd2pdf15012308bd1e4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs   9.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘n1qn1’
      All declared Imports should be used.
    ```

# SanFranBeachWater

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmppeeQiO/Rd2pdfb76d72d2a43d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# SanzCircos

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpu31xHo/Rd2pdf1b2fd5dc0a8ce'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘purrr’ ‘tidyr’
      All declared Imports should be used.
    ```

# scanstatistics

Version: 1.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp59QSJY/Rd2pdf1fe2a33146215'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        libs   6.4Mb
    ```

# SEERaBomb

Version: 2018.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpuSg7Ss/Rd2pdf16d4c3bd7bac5'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# segregation

Version: 0.0.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpr7hKNU/Rd2pdfc3da41749d93'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# simglm

Version: 0.6.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpichpFG/Rd2pdf152735f8af4de'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# simTool

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpqtJTVm/Rd2pdf190be1c5ac810'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# snakecase

Version: 0.9.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpQw56Rk/Rd2pdf12a5f6dc53944'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# solrium

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpOm01dN/Rd2pdf1d3c5571800db'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘XML’
    ```

# splashr

Version: 0.4.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp069hMC/Rd2pdf117ee6f569ba'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# spocc

Version: 0.7.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpbfYjCo/Rd2pdf61b369056d5f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# staRdom

Version: 1.0.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp2gPc5X/Rd2pdffeda694df45c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘readr’ ‘tools’
      All declared Imports should be used.
    ```

# statsDK

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpG5JpB0/Rd2pdf179a5d080d58'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dplyr’ ‘ggplot2’ ‘stringr’
      All declared Imports should be used.
    ```

# stminsights

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpnQ3zC5/Rd2pdf89dd455f57ad'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘huge’ ‘scales’ ‘shinyjs’
      All declared Imports should be used.
    ```

# survminer

Version: 0.4.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpxN2LTF/Rd2pdf1ffd269e32567'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        doc   5.1Mb
    ```

# survtmle

Version: 1.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpFfcpTU/Rd2pdf9c1916bdaa55'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# sweep

Version: 0.2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpWb7qrF/Rd2pdf196957690fbf'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘lazyeval’ ‘lubridate’ ‘tidyr’
      All declared Imports should be used.
    ```

# tauturri

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpKP37PO/Rd2pdf172836cd5414d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘stringr’
    ```

# taxize

Version: 0.9.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpHX4uar/Rd2pdf1f45b671dd115'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tesseract

Version: 2.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpo3giq3/Rd2pdf11a3663109cbc'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tetraclasse

Version: 0.1.21

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp2UgxS4/Rd2pdff6846940b6f6'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tidyRSS

Version: 1.2.3

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpNdoGKB/Rd2pdfacb26340c3c9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

# timetk

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp69amJX/Rd2pdf197fb45c3287c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘forecast’
      All declared Imports should be used.
    ```

# tipr

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpEWyyMJ/Rd2pdf182ae5043b26d'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘broom’ ‘tibble’
      All declared Imports should be used.
    ```

# Tmisc

Version: 0.1.19

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpY80hDZ/Rd2pdf1f07c7b61922'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# traits

Version: 0.3.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpZsxJuG/Rd2pdf5f4e33d74c74'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# tsbox

Version: 0.0.2

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpPFmRAN/Rd2pdf1c6ec49b4893e'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# ukbtools

Version: 0.11.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpxraXTS/Rd2pdf1fa98481d79d3'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘plyr’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 5 marked UTF-8 strings
    ```

# understandBPMN

Version: 1.0.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpexqEzM/Rd2pdf1cdada755aed'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# useful

Version: 1.2.4

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpaHs51o/Rd2pdf1f280a78f658'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# vcfR

Version: 1.8.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmpk9l6kf/Rd2pdf1918f7f367025'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.9Mb
      sub-directories of 1Mb or more:
        libs   8.0Mb
    ```

# waccR

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpXlCPcO/Rd2pdfb4e836279ed7'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘lubridate’ ‘tibble’
      All declared Imports should be used.
    ```

# walkalytics

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpX6bVQY/Rd2pdf1b2d22bdc7404'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# walmartAPI

Version: 0.1.5

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpV5fH2c/Rd2pdf1adde18a2c5f'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# wand

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpwF5bVg/Rd2pdf17239c3b1183'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# wikitaxa

Version: 0.2.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpJTYL11/Rd2pdf5f3266d3eba9'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 166 marked UTF-8 strings
    ```

# worrms

Version: 0.2.8

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpuPFpGI/Rd2pdfc87f1e2f7768'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# XKCDdata

Version: 0.1.0

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/Rtmp19AV5n/Rd2pdf1abad36872ed8'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# zeligverse

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpQAKoUl/Rd2pdf35241b01dc8c'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Amelia’ ‘MatchIt’ ‘WhatIf’
      All declared Imports should be used.
    ```

# zFactor

Version: 0.1.7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpKDviM3/Rd2pdf96e53d80daf4'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rootSolve’
      All declared Imports should be used.
    ```

# ggforce

Version: 0.1.1

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpZMPpcK/Rd2pdfd92f756d4719'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

# iemisc

Version: 0.9.7

## In both

*   checking PDF version of manual without hyperrefs or index ... ERROR
    ```
    Re-running with no redirection of stdout/stderr.
    Hmm ... looks like a package
    You may want to clean up by 'rm -rf /tmp/RtmpBa7VHZ/Rd2pdf646f53dbac10'
    ```

*   checking PDF version of manual ... WARNING
    ```
    LaTeX errors when creating PDF version.
    This typically indicates Rd problems.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘matlab’
    ```

