# abjutils

Version: 0.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘httr’
      All declared Imports should be used.
    ```

# afmToolkit

Version: 0.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DBI’ ‘assertthat’ ‘tibble’
      All declared Imports should be used.
    ```

# alphavantager

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘devtools’
      All declared Imports should be used.
    ```

# anomalyDetection

Version: 0.2.4

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘caret’
      All declared Imports should be used.
    ```

# available

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘purrr’
      All declared Imports should be used.
    ```

# babynames

Version: 0.3.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        data   8.9Mb
    ```

# banR

Version: 0.2.0

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > ### Name: geocode_tbl
    > ### Title: Geocode tbl
    > ### Aliases: geocode_tbl
    > 
    > ### ** Examples
    > 
    > 
    > table_test <- tibble::tibble(
    + x = c("39 quai Andre Citroen", "64 Allee de Bercy", "20 avenue de Segur"), 
    + y = c("75015", "75012", "75007"), 
    + z = rnorm(3)
    + )
    > 
    > geocode_tbl(tbl = table_test, adresse = x)
    Writing tempfile to.../tmp/RtmpW8u4z5/filebbc77b932599.csv
    If file is larger than 8 MB, it must be splitted
    Size is : 61 bytes
    Server errorService UnavailableServer error: (503) Service Unavailable
    Error in geocode_tbl(tbl = table_test, adresse = x) : 
      The API sent back an error 503
    Execution halted
    ```

## Newly fixed

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 52-54 (geocode.Rmd) 
    Error: processing vignette 'geocode.Rmd' failed with diagnostics:
    The API sent back an error 503
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

# bcmaps

Version: 0.16.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bcmaps.rdata’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing or unexported object: ‘sf::st_make_valid’
    ```

# bikedata

Version: 0.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        doc    2.6Mb
        libs   5.8Mb
    ```

# billboard

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 660 marked UTF-8 strings
    ```

# bioCancer

Version: 1.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'bioCancer.Rmd' failed with diagnostics:
    path for html_dependency not found: 
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      ‘magrittr’ ‘ggplot2’ ‘lubridate’ ‘tidyr’ ‘cgdsr’ ‘RCurl’ ‘XML’
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 22.3Mb
      sub-directories of 1Mb or more:
        base        6.9Mb
        bioCancer   3.1Mb
        doc         2.8Mb
        quant       7.7Mb
    ```

# blkbox

Version: 1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bigrf’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘glmnet’ ‘gtools’ ‘knitr’ ‘nnet’ ‘parallel’ ‘rJava’ ‘reshape’
      ‘rmarkdown’ ‘shinyjs’
      All declared Imports should be used.
    Missing or unexported object: ‘xgboost::predict’
    ```

# brazilmaps

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘sp’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ggthemes’
    ```

# breathtestcore

Version: 0.4.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘breathteststan’
    ```

# breathteststan

Version: 0.4.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 28.8Mb
      sub-directories of 1Mb or more:
        libs  28.7Mb
    ```

# bsam

Version: 1.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rworldxtra’ ‘sp’
      All declared Imports should be used.
    ```

# caffsim

Version: 0.2.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘markdown’
      All declared Imports should be used.
    ```

# cdcfluview

Version: 0.7.0

## In both

*   checking whether package ‘cdcfluview’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/muelleki/git/R/pillar/revdep/checks/cdcfluview/new/cdcfluview.Rcheck/00install.out’ for details.
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
* removing ‘/home/muelleki/git/R/pillar/revdep/checks/cdcfluview/new/cdcfluview.Rcheck/cdcfluview’

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
* removing ‘/home/muelleki/git/R/pillar/revdep/checks/cdcfluview/old/cdcfluview.Rcheck/cdcfluview’

```
# cepR

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 287 marked UTF-8 strings
    ```

# childsds

Version: 0.6.7

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘gamlss.dist’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 20 marked UTF-8 strings
    ```

# congressbr

Version: 0.1.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# countyweather

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# crosswalkr

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# dataonderivatives

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# dbplyr

Version: 1.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# dexter

Version: 0.6.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 109 marked UTF-8 strings
    ```

# dplyr

Version: 0.7.4

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 33.0Mb
      sub-directories of 1Mb or more:
        libs  31.1Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# driftR

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggplot2’ ‘readr’
      All declared Imports should be used.
    ```

# esc

Version: 0.4.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘metafor’
    ```

# exifr

Version: 0.2.1

## In both

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

# filesstrings

Version: 2.0.2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘dplyr’
    ```

# ftDK

Version: 1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 39 marked UTF-8 strings
    ```

# gastempt

Version: 0.4.01

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 58.8Mb
      sub-directories of 1Mb or more:
        libs  58.4Mb
    ```

# GerminaR

Version: 1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DT’ ‘shinydashboard’
      All declared Imports should be used.
    ```

# getTBinR

Version: 0.5.0

## Newly broken

*   R CMD check timed out
    

# ggalt

Version: 0.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘plotly’
      All declared Imports should be used.
    ```

# ggconf

Version: 0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# ggeffects

Version: 0.3.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ordinal’
    ```

# ggenealogy

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2356 marked UTF-8 strings
    ```

# ggformula

Version: 0.6.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 180-186 (ggformula.Rmd) 
    Error: processing vignette 'ggformula.Rmd' failed with diagnostics:
    there is no package called 'mosaicModel'
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘mosaicModel’
    ```

# ggfortify

Version: 0.4.1

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### ** Examples
    > 
    > data(Canada, package = 'vars')
    > autoplot(AirPassengers)
    > autoplot(UKgas, ts.geom = 'bar')
    > autoplot(Canada)
    > autoplot(Canada, facets = FALSE)
    > 
    > library(zoo)
    
    Attaching package: ‘zoo’
    
    The following objects are masked from ‘package:base’:
    
        as.Date, as.Date.numeric
    
    > autoplot(xts::as.xts(AirPassengers))
    Error in data.frame(index(model), ...) : 
      arguments imply differing number of rows: 144, 1, 0
    Calls: autoplot ... autoplot.xts -> <Anonymous> -> fortify.zoo -> cbind -> data.frame
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      10: FUN(X[[i]], ...)
      11: as.vector(lag(ts, k))
      12: lag(ts, k)
      13: bad_args("x", "must be a vector, not a ts object, do you want `stats::lag()`?")
      14: glubort(fmt_args(args), ..., .envir = .envir)
      15: .abort(text)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 1435 SKIPPED: 9 FAILED: 3
      1. Error: fortify.ts works for timeserieses (@test-base_ts.R#13) 
      2. Error: autoplot works for xts (@test-ts.R#122) 
      3. Error: gglagplot (@test-tslib.R#103) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Loading required package: ggplot2
    Loading required package: MASS
    Loading required package: strucchange
    Loading required package: zoo
    
    Attaching package: 'zoo'
    
    The following objects are masked from 'package:base':
    
        as.Date, as.Date.numeric
    
    Loading required package: sandwich
    Loading required package: urca
    Loading required package: lmtest
    Quitting from lines 169-174 (intro_Chinese.Rmd) 
    Error: processing vignette 'intro_Chinese.Rmd' failed with diagnostics:
    arguments imply differing number of rows: 144, 1, 0
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc   5.0Mb
    ```

# ggguitar

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gridExtra’ ‘lazyeval’ ‘readr’
      All declared Imports should be used.
    ```

# ggimage

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘scales’
      All declared Imports should be used.
    ```

# ggplot2

Version: 2.2.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘reshape2’
      All declared Imports should be used.
    ```

# ggplotAssist

Version: 0.1.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gcookbook’ ‘ggthemes’ ‘moonBook’ ‘tidyverse’
      All declared Imports should be used.
    ```

# ggraptR

Version: 1.0

## In both

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

# GSODR

Version: 1.1.2

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    Attaching package: 'gridExtra'
    
    The following object is masked from 'package:dplyr':
    
        combine
    
    trying URL 'http://biogeo.ucdavis.edu/data/gadm2.8/rds/PHL_adm0.rds'
    Content type 'text/html; charset=iso-8859-1' length 3439625 bytes (3.3 MB)
    ==================================================
    downloaded 3.3 MB
    
    trying URL 'http://biogeo.ucdavis.edu/data/gadm2.8/rds/PHL_adm1.rds'
    Content type 'text/html; charset=iso-8859-1' length 3687395 bytes (3.5 MB)
    ==================================================
    downloaded 3.5 MB
    
    Quitting from lines 145-167 (Specified_stations_for_a_range_of_years.Rmd) 
    Error: processing vignette 'Specified_stations_for_a_range_of_years.Rmd' failed with diagnostics:
    Got a 530 ftp-server response when 220 was expected
    Execution halted
    ```

# hansard

Version: 0.5.5

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 157-162 (introduction.Rmd) 
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    HTTP error 524.
    Execution halted
    ```

# haven

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘hms’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# hddtools

Version: 0.7

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      trying URL 'ftp://ftp.bafg.de/pub/REFERATE/GRDC/ltdata/africa.zip'
      Content type 'unknown' length 10558875 bytes (10.1 MB)
      ==================================================
      ── 1. Error: Test tsGRDC function (@test-tsGRDC.R#6)  ──────────────────────────
      cannot open the connection
      1: tsGRDC(stationID = 1107700) at testthat/test-tsGRDC.R:6
      2: readLines(fpath)
      3: file(con, "r")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 25 SKIPPED: 0 FAILED: 1
      1. Error: Test tsGRDC function (@test-tsGRDC.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# highcharter

Version: 0.5.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.5Mb
      sub-directories of 1Mb or more:
        doc          13.7Mb
        htmlwidgets   1.9Mb
    ```

# hms

Version: 0.4.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `print(eval_tidy(object))` has changed from known value recorded in 'out/mss.txt'.
      1/8 mismatches
      x[8]: "    \033[31mNA\033[39m     "
      y[8]: "    \033[43m\033[30mNA\033[39m\033[49m     "
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 133 SKIPPED: 0 FAILED: 5
      1. Failure: pillar (@test-colformat.R#4) 
      2. Failure: pillar (@test-colformat.R#8) 
      3. Failure: pillar (@test-colformat.R#12) 
      4. Failure: pillar (@test-colformat.R#16) 
      5. Failure: pillar (@test-colformat.R#20) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# huxtable

Version: 2.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      9: rmarkdown::render("table-tester-2.Rmd", quiet = TRUE, output_format = "pdf_document")
      10: convert(output_file, run_citeproc)
      11: pandoc_convert(utf8_input, pandoc_to, output_format$pandoc$from, output, citeproc, 
             output_format$pandoc$args, !quiet)
      12: stop("pandoc document conversion failed with error ", result, call. = FALSE)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 298 SKIPPED: 48 FAILED: 4
      1. Failure: Quick output functions work (@test-output.R#135) 
      2. Failure: Quick output functions work (@test-output.R#136) 
      3. Error: Row heights do not screw up LaTeX multicol (@test-with-pandoc.R#20) 
      4. Error: table-tester-2.Rmd renders without errors in LaTeX (@test-with-pandoc.R#27) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    ! LaTeX Error: File `siunitx.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    Enter file name: 
    ! Emergency stop.
    <read *> 
             
    l.132 \usepackage
    
    pandoc: Error producing PDF
    Error: processing vignette 'huxtable.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘xtable’
    ```

# hydrolinks

Version: 0.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘sp’
      All declared Imports should be used.
    ```

# incgraph

Version: 1.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

# IONiseR

Version: 2.0.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    The following object is masked from 'package:base':
    
        apply
    
    
    Attaching package: 'GenomicAlignments'
    
    The following object is masked from 'package:dplyr':
    
        last
    
    
    Attaching package: 'ShortRead'
    
    The following object is masked from 'package:dplyr':
    
        id
    
    Error: processing vignette 'IONiseR.Rmd' failed with diagnostics:
    path for html_dependency not found: 
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc       3.6Mb
        extdata   1.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘start_time’
    readFast5Summary.mc: no visible binding for global variable ‘duration’
    readFast5Summary.mc: no visible binding for global variable
      ‘num_events’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘baseCalledTemplate’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘baseCalledComplement’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘component’
    [,Fast5Summary-ANY-ANY-ANY: no visible binding for global variable
      ‘idx’
    show,Fast5Summary: no visible binding for global variable ‘full_2D’
    show,Fast5Summary: no visible binding for global variable ‘pass’
    Undefined global functions or variables:
      := AAAAA TTTTT accumulation baseCalledComplement baseCalledTemplate
      bases_called category channel circleFun component duration error freq
      full_2D group hour idx matrixCol matrixRow meanZValue mean_value
      median_signal minute mux name nbases new_reads num_events oddEven
      pass pentamer rbindlist readIDs seq_length start_time time_bin
      time_group x y zvalue
    ```

# jpmesh

Version: 1.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘readr’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 176 marked UTF-8 strings
    ```

# jpndistrict

Version: 0.3.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 502 marked UTF-8 strings
    ```

# kokudosuuchi

Version: 0.4.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringi’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 52458 marked UTF-8 strings
    ```

# KraljicMatrix

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dplyr’ ‘tibble’
      All declared Imports should be used.
    ```

# linemap

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 15 marked UTF-8 strings
    ```

# mapedit

Version: 0.3.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘geojsonio’
    ```

# mapsapi

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘plyr’
      All declared Imports should be used.
    ```

# modelr

Version: 0.1.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘lme4’, ‘rstanarm’
    ```

# modeval

Version: 0.1.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Warning: Deprecated
    Quitting from lines 112-115 (modeval.Rmd) 
    Error: processing vignette 'modeval.Rmd' failed with diagnostics:
    the argument has already been evaluated
    Execution halted
    ```

# mosaicModel

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘MASS’ ‘caret’ ‘ggformula’ ‘knitr’ ‘testthat’ ‘tidyverse’
      All declared Imports should be used.
    ```

# mregions

Version: 0.1.6

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘geojsonio’
    
    Package which this enhances but not available for checking: ‘leaflet’
    ```

# mrgsolve

Version: 0.8.10

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        libs   5.7Mb
    ```

# mudata2

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘hms’ ‘methods’
      All declared Imports should be used.
    ```

# myTAI

Version: 0.6.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        doc    2.7Mb
    ```

# Nippon

Version: 0.6.5

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘cshapes’, ‘mapdata’, ‘timeDate’, ‘TimeWarp’, ‘Holidays’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 395 marked UTF-8 strings
    ```

# NipponMap

Version: 0.1

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      ‘kokudosuuchi’ ‘estatapi’ ‘jpndistrict’ ‘jpmesh’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘cshapes’, ‘mapdata’
    ```

# nycflights13

Version: 0.2.2

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        data   6.9Mb
    ```

# observer

Version: 0.1.2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘ensurer’, ‘validate’
    ```

# parlitools

Version: 0.2.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 13 marked UTF-8 strings
    ```

# perccalc

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘MASS’ ‘devtools’ ‘ggplot2’ ‘haven’ ‘tidyverse’
      All declared Imports should be used.
    ```

# petro.One

Version: 0.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      8: all.equal(x, y, tolerance = tolerance, check.attributes = check.attributes, ...)
      9: all.equal.numeric(x, y, tolerance = tolerance, check.attributes = check.attributes, 
             ...)
      10: stop(gettextf("'%s' must be logical", "check.attributes"), domain = NA)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 78 SKIPPED: 0 FAILED: 5
      1. Error: when read_multipage standard type only (@test_multipage.R#79) 
      2. Error: when read_multipage journal-paper only (@test_multipage.R#90) 
      3. Error: when read_multipage journal-paper only (@test_multipage.R#97) 
      4. Error: when read_multipage journal-paper only (@test_multipage.R#104) 
      5. Error: expect_equal_scale is 10% tolerance (@test_utils.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rgraphviz’ ‘cluster’ ‘graph’
      All declared Imports should be used.
    ```

# pointblank

Version: 0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Hmisc’ ‘digest’ ‘htmltools’ ‘knitr’ ‘lazyWeave’ ‘lubridate’ ‘rJava’
      All declared Imports should be used.
    ```

# poio

Version: 0.0-3

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘ISOcodes’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 8 marked UTF-8 strings
    ```

# prisonbrief

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2 marked UTF-8 strings
    ```

# profile

Version: 1.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘profile-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: read_rprof
    > ### Title: File I/O for profiler data
    > ### Aliases: read_rprof read_pprof write_rprof write_pprof
    > 
    > ### ** Examples
    > 
    > rprof_file <- system.file("samples/rprof/1.out", package = "profile")
    > ds <- read_rprof(rprof_file)
    > ds
    Profile data: 22 samples
    > pprof_file <- tempfile("profile", fileext = ".pb.gz")
    > write_pprof(ds, pprof_file)
    Error: Package RProtoBuf is required to read pprof files.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RProtoBuf’
    ```

# psychmeta

Version: 0.2.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 5 marked UTF-8 strings
    ```

# railtrails

Version: 0.0.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4483 marked UTF-8 strings
    ```

# rclimateca

Version: 1.0.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 24 marked UTF-8 strings
    ```

# rcv

Version: 0.2.1

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 6543 marked UTF-8 strings
    ```

# readr

Version: 1.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.3Mb
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

# readtext

Version: 0.50

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘antiword’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# readxl

Version: 1.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        libs   4.3Mb
    ```

# refimpact

Version: 1.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘curl’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 85 marked UTF-8 strings
    ```

# repurrrsive

Version: 0.1.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 8 marked UTF-8 strings
    ```

# rerddap

Version: 0.4.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘taxize’
    ```

# rFSA

Version: 0.9.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# rmapzen

Version: 0.3.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘geojsonio’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# rnaturalearth

Version: 0.1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rnaturalearthhires’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 7 marked Latin-1 strings
    ```

# rodham

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 59 marked UTF-8 strings
    ```

# rtimicropem

Version: 1.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# rtweet

Version: 0.6.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 113868 marked UTF-8 strings
    ```

# SanFranBeachWater

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# scanstatistics

Version: 1.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        libs   6.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘gamlss.dist’
      All declared Imports should be used.
    ```

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

# sjlabelled

Version: 1.0.6

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘sjPlot’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘sjPlot’
    ```

# sjmisc

Version: 2.6.3

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘sjPlot’
    ```

# sjPlot

Version: 2.4.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘prediction’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘plm’
    ```

# sjstats

Version: 0.13.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘sjPlot’, ‘MuMIn’, ‘piecewiseSEM’
    ```

# skimr

Version: 1.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘knitr’
      All declared Imports should be used.
    ```

# solrium

Version: 1.0.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘XML’
    ```

# statesRcontiguous

Version: 0.1.0

## In both

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

# statsDK

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dplyr’ ‘ggplot2’ ‘stringr’
      All declared Imports should be used.
    ```

# stplanr

Version: 0.2.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘tmap’
    ```

# survminer

Version: 0.4.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        doc   4.9Mb
    ```

# sweep

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘lazyeval’ ‘lubridate’ ‘tidyr’
      All declared Imports should be used.
    ```

# taxa

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘lazyeval’ ‘rlang’
      All declared Imports should be used.
    ```

# TCGAbiolinks

Version: 2.5.9

## In both

*   checking examples ... ERROR
    ```
    ...
    |NA                          |NA                             |NA                   |NA                           |
    |Thymic Epithelial Neoplasms |Neuroepitheliomatous Neoplasms |Basal Cell Neoplasms |Ductal and Lobular Neoplasms |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    |NA                          |NA                             |NA                   |NA                           |
    Error in checkProjectInput(project) : 
      Please set a valid project argument from the column id above. Project TCGA-ACC was not found.
    Calls: GDCquery -> checkProjectInput
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 113 SKIPPED: 0 FAILED: 16
      1. Error: TCGAanalyze_survival creates pdf (@test-analyse.R#4) 
      2. Error: Results from TCGAanalyze_DEA and DMR in starburst plot are correct (@test-analyse.R#182) 
      3. Error: GDCdownload API method for two files is working  (@test-prepare-download.R#4) 
      4. Error: GDCdownload API method for one files is working  (@test-prepare-download.R#20) 
      5. Error: GDCprepare accepts more than one project (@test-prepare-download.R#50) 
      6. Error: Accecpts more than one platform (@test-prepare-download.R#68) 
      7. Error: GDCquery can filter by data.category (@test-query.R#5) 
      8. Error: GDCquery accepts more than one project (@test-query.R#11) 
      9. Error: GDCquery can filter by sample.type (@test-query.R#23) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    
    The following objects are masked from 'package:S4Vectors':
    
        first, intersect, rename, setdiff, setequal, union
    
    The following objects are masked from 'package:BiocGenerics':
    
        combine, intersect, setdiff, union
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    Quitting from lines 16-20 (clinical.Rmd) 
    Error: processing vignette 'clinical.Rmd' failed with diagnostics:
    there is no package called 'DT'
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 61.0Mb
      sub-directories of 1Mb or more:
        R      1.1Mb
        data   2.3Mb
        doc   57.4Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      ‘limmacontrasts.fit’
    TCGAanalyze_analyseGRN: no visible global function definition for
      ‘knnmi.cross’
    TCGAanalyze_networkInference: no visible global function definition for
      ‘c3net’
    TCGAanalyze_networkInference: no visible global function definition for
      ‘minet’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dNetInduce’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dNetPipeline’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘dCommSignif’
    TCGAvisualize_SurvivalCoxNET: no visible global function definition for
      ‘visNet’
    TCGAvisualize_oncoprint: no visible binding for global variable ‘value’
    getTSS: no visible global function definition for ‘promoters’
    Undefined global functions or variables:
      c3net dCommSignif dNetInduce dNetPipeline knnmi.cross
      limmacontrasts.fit limmamakeContrasts minet portions promoters value
      visNet
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' call not declared from: ‘DT’
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

# tibbletime

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyselect’
      All declared Imports should be used.
    ```

# tidyinftheo

Version: 0.2.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘tibble’ ‘tidyverse’
      All declared Imports should be used.
    ```

# tidyquant

Version: 0.5.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
         })
      9: expr_type_of(.x)
      10: typeof(x)
      11: duplicate(quo)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 149 SKIPPED: 2 FAILED: 5
      1. Failure: Test returns tibble with correct rows and columns. (@test_tq_get_key_stats.R#15) 
      2. Failure: Test returns tibble with correct rows and columns. (@test_tq_get_key_stats.R#17) 
      3. Failure: Test returns tibble with correct rows and columns. (@test_tq_get_key_stats.R#19) 
      4. Error: Test error on invalid data inputs. (@test_tq_mutate.R#142) 
      5. Error: Test error on invalid data inputs. (@test_tq_transmute.R#121) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Warning in download.file(url, destfile = tmp, quiet = TRUE) :
      URL 'http://download.finance.yahoo.com/d/quotes.csv?s=AAPL&f=aa2a5bb4b6c1c4dd1ee7e8e9f6ghjj1j2j4j5j6kk3k4k5ll1mm3m4m5m6m7m8nopp2p5p6qrr1r5r6r7s6s7t8vwxy&e=.csv': status was 'Couldn't resolve host name'
    Warning: x = 'AAPL', get = 'key.stats': Error in download.file(url, destfile = tmp, quiet = TRUE): cannot open URL 'http://download.finance.yahoo.com/d/quotes.csv?s=AAPL&f=aa2a5bb4b6c1c4dd1ee7e8e9f6ghjj1j2j4j5j6kk3k4k5ll1mm3m4m5m6m7m8nopp2p5p6qrr1r5r6r7s6s7t8vwxy&e=.csv'
    
    Warning in download.file(url, destfile = tmp, quiet = TRUE) :
      URL 'http://download.finance.yahoo.com/d/quotes.csv?s=AAPL&f=aa2a5bb4b6c1c4dd1ee7e8e9f6ghjj1j2j4j5j6kk3k4k5ll1mm3m4m5m6m7m8nopp2p5p6qrr1r5r6r7s6s7t8vwxy&e=.csv': status was 'Couldn't resolve host name'
    Warning: x = 'AAPL', get = 'key.stats': Error in download.file(url, destfile = tmp, quiet = TRUE): cannot open URL 'http://download.finance.yahoo.com/d/quotes.csv?s=AAPL&f=aa2a5bb4b6c1c4dd1ee7e8e9f6ghjj1j2j4j5j6kk3k4k5ll1mm3m4m5m6m7m8nopp2p5p6qrr1r5r6r7s6s7t8vwxy&e=.csv'
     Removing AAPL.
    Warning in download.file(url, destfile = tmp, quiet = TRUE) :
      URL 'http://download.finance.yahoo.com/d/quotes.csv?s=FB&f=aa2a5bb4b6c1c4dd1ee7e8e9f6ghjj1j2j4j5j6kk3k4k5ll1mm3m4m5m6m7m8nopp2p5p6qrr1r5r6r7s6s7t8vwxy&e=.csv': status was 'Couldn't resolve host name'
    Warning: x = 'FB', get = 'key.stats': Error in download.file(url, destfile = tmp, quiet = TRUE): cannot open URL 'http://download.finance.yahoo.com/d/quotes.csv?s=FB&f=aa2a5bb4b6c1c4dd1ee7e8e9f6ghjj1j2j4j5j6kk3k4k5ll1mm3m4m5m6m7m8nopp2p5p6qrr1r5r6r7s6s7t8vwxy&e=.csv'
     Removing FB.
    Warning in download.file(url, destfile = tmp, quiet = TRUE) :
      URL 'http://download.finance.yahoo.com/d/quotes.csv?s=GOOG&f=aa2a5bb4b6c1c4dd1ee7e8e9f6ghjj1j2j4j5j6kk3k4k5ll1mm3m4m5m6m7m8nopp2p5p6qrr1r5r6r7s6s7t8vwxy&e=.csv': status was 'Couldn't resolve host name'
    Warning: x = 'GOOG', get = 'key.stats': Error in download.file(url, destfile = tmp, quiet = TRUE): cannot open URL 'http://download.finance.yahoo.com/d/quotes.csv?s=GOOG&f=aa2a5bb4b6c1c4dd1ee7e8e9f6ghjj1j2j4j5j6kk3k4k5ll1mm3m4m5m6m7m8nopp2p5p6qrr1r5r6r7s6s7t8vwxy&e=.csv'
     Removing GOOG.
    Warning in value[[3L]](cond) : Returning as nested data frame.
    Quitting from lines 211-214 (TQ01-core-functions-in-tidyquant.Rmd) 
    Error: processing vignette 'TQ01-core-functions-in-tidyquant.Rmd' failed with diagnostics:
    object 'Ask' not found
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘broom’ ‘curl’ ‘devtools’ ‘rvest’ ‘timeSeries’ ‘tseries’ ‘zoo’
      All declared Imports should be used.
    ```

# tidyr

Version: 0.7.2

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 23 marked UTF-8 strings
    ```

# tidyRSS

Version: 1.2.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘testthat’
      All declared Imports should be used.
    ```

# tidyverse

Version: 1.2.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘dbplyr’ ‘reprex’ ‘rlang’
      All declared Imports should be used.
    ```

# tilegramsR

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘sp’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 341 marked UTF-8 strings
    ```

# timekit

Version: 0.3.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘forecast’
      All declared Imports should be used.
    ```

# timetk

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘forecast’
      All declared Imports should be used.
    ```

# tipr

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘broom’ ‘tibble’
      All declared Imports should be used.
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

# uavRmp

Version: 0.5.1

## In both

*   checking examples ... ERROR
    ```
    ...
    > 
    > ## (2) make position flight plan
    > makeTP  <-  makeTP(missionTrackList= tutorial_flightArea,
    +                    demFn = dsmFn,
    +                    uavType = "solo",
    +                    followSurfaceRes=5,
    +                    launchPos = c(8.679,50.856))
    preprocessing DSM data...
    Warning in gdal_setInstallation(ignore.full_scan = ignore.full_scan, verbose = verbose) :
      No GDAL installation found. Please install 'gdal' before continuing:
    	- www.gdal.org (no HDF4 support!)
    	- www.trac.osgeo.org/osgeo4w/ (with HDF4 support RECOMMENDED)
    	- www.fwtools.maptools.org (with HDF4 support)
    
    Warning in gdal_setInstallation(ignore.full_scan = ignore.full_scan, verbose = verbose) :
      If you think GDAL is installed, please run:
    gdal_setInstallation(ignore.full_scan=FALSE)
    Error in (function (classes, fdef, mtable)  : 
      unable to find an inherited method for function ‘crop’ for signature ‘"NULL"’
    Calls: makeTP -> makeFlightPathT3 -> <Anonymous> -> <Anonymous>
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: xelatex not found. xelatex is needed for pdf output.
    Error: processing vignette 'uavRmp_1.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 41
    Execution halted
    ```

# ukbtools

Version: 0.10.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘plyr’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 5 marked UTF-8 strings
    ```

# unpivotr

Version: 0.3.0

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > tidy_table(Formaldehyde)
    # A tibble: 12 x 3
         row   col    dbl
       <int> <int>  <dbl>
     1     1     1 0.100 
     2     2     1 0.300 
     3     3     1 0.500 
     4     4     1 0.600 
     5     5     1 0.700 
     6     6     1 0.900 
     7     1     2 0.0860
     8     2     2 0.269 
     9     3     2 0.446 
    10     4     2 0.538 
    11     5     2 0.626 
    12     6     2 0.782 
    > tidy_table(tidyr::nest(chickwts, -feed))
    Error in mutate_impl(.data, dots) : 
      Evaluation error: `false` must be type NULL, not integer.
    Calls: tidy_table ... <Anonymous> -> mutate -> mutate.tbl_df -> mutate_impl -> .Call
    Execution halted
    ```

# valr

Version: 0.3.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.6Mb
      sub-directories of 1Mb or more:
        libs  14.1Mb
    ```

# velox

Version: 0.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.7Mb
      sub-directories of 1Mb or more:
        libs  15.4Mb
    ```

# waccR

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘lubridate’ ‘tibble’
      All declared Imports should be used.
    ```

# wikitaxa

Version: 0.2.0

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 166 marked UTF-8 strings
    ```

# XKCDdata

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# zeligverse

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Amelia’ ‘MatchIt’ ‘WhatIf’
      All declared Imports should be used.
    ```

# zFactor

Version: 0.1.7

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rootSolve’
      All declared Imports should be used.
    ```

