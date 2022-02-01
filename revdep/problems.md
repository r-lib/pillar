# akc

<details>

* Version: 0.9.6
* GitHub: https://github.com/hope-data-science/akc
* Source code: https://github.com/cran/akc
* Date/Publication: 2022-01-10 03:22:40 UTC
* Number of recursive dependencies: 109

Run `cloud_details(, "akc")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘akc-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: doc_group
    > ### Title: Construct network of documents based on keyword co-occurrence
    > ### Aliases: doc_group
    > 
    > ### ** Examples
    > 
    >  library(akc)
    >  bibli_data_table %>%
    +    keyword_clean(id = "id",keyword = "keyword") %>%
    +    doc_group(id = "id",keyword = "keyword") -> grouped_doc
    > 
    >  grouped_doc
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘akc_vignette.Rmd’ using rmarkdown
    Quitting from lines 75-79 (akc_vignette.Rmd) 
    Error: processing vignette 'akc_vignette.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘akc_vignette.Rmd’
    
    --- re-building ‘tutorial_raw_text.Rmd’ using rmarkdown
    ...
      Some words could not fit on page. They have been placed at their original positions.
    Warning in wordcloud_boxes(data_points = points_valid_first, boxes = boxes,  :
      Some words could not fit on page. They have been placed at their original positions.
    --- finished re-building ‘tutorial_raw_text.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘akc_vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# anomalize

<details>

* Version: 0.2.2
* GitHub: https://github.com/business-science/anomalize
* Source code: https://github.com/cran/anomalize
* Date/Publication: 2020-10-20 18:50:03 UTC
* Number of recursive dependencies: 185

Run `cloud_details(, "anomalize")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘anomalize-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: anomalize
    > ### Title: Detect anomalies using the tidyverse
    > ### Aliases: anomalize
    > 
    > ### ** Examples
    > 
    > 
    ...
    > set_time_scale_template(time_scale_template())
    > 
    > data(tidyverse_cran_downloads)
    > 
    > tidyverse_cran_downloads %>%
    +     time_decompose(count, method = "stl") %>%
    +     anomalize(remainder, method = "iqr")
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘anomalize_methods.Rmd’ using rmarkdown
    --- finished re-building ‘anomalize_methods.Rmd’
    
    --- re-building ‘anomalize_quick_start_guide.Rmd’ using rmarkdown
    Quitting from lines 58-59 (anomalize_quick_start_guide.Rmd) 
    Error: processing vignette 'anomalize_quick_start_guide.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘anomalize_quick_start_guide.Rmd’
    ...
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘forecasting_with_cleaned_anomalies.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘anomalize_quick_start_guide.Rmd’
      ‘forecasting_with_cleaned_anomalies.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# arulesViz

<details>

* Version: 1.5-1
* GitHub: https://github.com/mhahsler/arulesViz
* Source code: https://github.com/cran/arulesViz
* Date/Publication: 2021-11-19 17:40:07 UTC
* Number of recursive dependencies: 100

Run `cloud_details(, "arulesViz")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘arulesViz-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: associations2igraph
    > ### Title: Convert rules or itemsets into a graph
    > ### Aliases: saveAsGraph associations2igraph igraph tidygraph
    > ### Keywords: file
    > 
    > ### ** Examples
    > 
    ...
        groups
    
    The following object is masked from ‘package:stats’:
    
        filter
    
    > as_tbl_graph(g)
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘arulesViz.Rnw’ using Sweave
    Loading required package: arules
    Loading required package: Matrix
    
    Attaching package: ‘arules’
    
    The following objects are masked from ‘package:base’:
    
        abbreviate, write
    ...
    l.55 \RequirePackage
                        [T1]{fontenc}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘arulesViz.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘arulesViz.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# cellranger

<details>

* Version: 1.1.0
* GitHub: https://github.com/rsheets/cellranger
* Source code: https://github.com/cran/cellranger
* Date/Publication: 2016-07-27 03:17:48
* Number of recursive dependencies: 53

Run `cloud_details(, "cellranger")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘cellranger-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: as.cell_addr
    > ### Title: Convert to a cell_addr object
    > ### Aliases: as.cell_addr as.cell_addr.character as.cell_addr.ra_ref
    > ###   as.cell_addr_v as.cell_addr_v.character as.cell_addr_v.list
    > 
    > ### ** Examples
    > 
    ...
    > as.cell_addr(ra_ref())
    <cell_addr: 1 cells>
    Warning: `as_data_frame()` was deprecated in tibble 2.0.0.
    Please use `as_tibble()` instead.
    The signature and semantics have changed, see `?as_tibble`.
    This warning is displayed once every 8 hours.
    Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated.
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# chunked

<details>

* Version: 0.5.1
* GitHub: https://github.com/edwindj/chunked
* Source code: https://github.com/cran/chunked
* Date/Publication: 2020-11-03 06:40:19 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "chunked")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        9. │   │     │ └─base::force(code)
       10. │   │     └─base::withVisible(code)
       11. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       12. ├─base::print(tbl_iris)
       13. └─chunked:::print.chunkwise(tbl_iris)
       14.   ├─base::print(trunc_mat(h, n = n, width = width))
       15.   └─tibble::trunc_mat(h, n = n, width = width)
       16.     └─tibble:::shrink_mat(df, rows, n, star = has_rownames(x))
       17.       └─pillar::colonnade(df, has_row_id = if (star) "*" else TRUE)
       18.         └─lifecycle::deprecate_stop("1.6.6", "pillar::colonnade()", "pillar::tbl_format_setup()")
       19.           └─lifecycle:::deprecate_stop0(msg)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 43 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# dplyr

<details>

* Version: 1.0.7
* GitHub: https://github.com/tidyverse/dplyr
* Source code: https://github.com/cran/dplyr
* Date/Publication: 2021-06-18 23:20:01 UTC
* Number of recursive dependencies: 93

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

# edeaR

<details>

* Version: 0.8.6
* GitHub: https://github.com/bupaverse/edeaR
* Source code: https://github.com/cran/edeaR
* Date/Publication: 2020-10-01 12:20:02 UTC
* Number of recursive dependencies: 76

Run `cloud_details(, "edeaR")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘filters.Rmd’ using rmarkdown
    Quitting from lines 47-52 (filters.Rmd) 
    Error: processing vignette 'filters.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘filters.Rmd’
    
    --- re-building ‘metrics.Rmd’ using rmarkdown
    ...
    Error: processing vignette 'metrics.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘metrics.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘filters.Rmd’ ‘metrics.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# egor

<details>

* Version: 1.22.1
* GitHub: https://github.com/tilltnet/egor
* Source code: https://github.com/cran/egor
* Date/Publication: 2022-01-14 20:52:41 UTC
* Number of recursive dependencies: 89

Run `cloud_details(, "egor")` for more info

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
    > 
    > e <- make_egor(5,50)
    > e %>% 
    +    activate("aatie") %>% 
    +    mutate(weight2 = 2 + weight) %>% 
    +    activate("alter") %>% 
    +    mutate(age.years = age.years^3)
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘egor_allbus.Rmd’ using rmarkdown
    Loading required package: dplyr
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    ...
    Error: processing vignette 'using_egor.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘using_egor.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘qualtrics.Rmd’ ‘using_egor.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# ergm.ego

<details>

* Version: 1.0.0
* GitHub: https://github.com/statnet/ergm.ego
* Source code: https://github.com/cran/ergm.ego
* Date/Publication: 2021-06-23 07:00:04 UTC
* Number of recursive dependencies: 74

Run `cloud_details(, "ergm.ego")` for more info

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
    > data(faux.mesa.high)
    > fmh.ego <- as.egor(faux.mesa.high)
    > 
    > # Create a tiny weighted sample:
    > (s3 <- sample(fmh.ego, 3, replace=TRUE, prob=1:nrow(fmh.ego$ego)))
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

# fastRG

<details>

* Version: 0.3.0
* GitHub: https://github.com/RoheLab/fastRG
* Source code: https://github.com/cran/fastRG
* Date/Publication: 2021-02-26 09:40:03 UTC
* Number of recursive dependencies: 78

Run `cloud_details(, "fastRG")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘fastRG-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: sample_edgelist.directed_erdos_renyi
    > ### Title: Sample a random edgelist from a random dot product graph
    > ### Aliases: sample_edgelist.directed_erdos_renyi sample_edgelist
    > ###   sample_edgelist.undirected_factor_model
    > ###   sample_edgelist.directed_factor_model
    > ###   sample_edgelist.undirected_erdos_renyi sample_edgelist.undirected_sbm
    > 
    ...
    [55] 74--80  94--65  6 --64  15--26  71--84  17--59  22--83  44--85  39--84 
    [64] 74--23  94--73  27--13  38--76  16--92  22--99  57--81  16--43  14--48 
    + ... omitted several edges
    > 
    > ### sampling graphs as tidygraph graphs ---------------
    > 
    > sample_tidygraph(ufm)
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# ggraph

<details>

* Version: 2.0.5
* GitHub: https://github.com/thomasp85/ggraph
* Source code: https://github.com/cran/ggraph
* Date/Publication: 2021-02-23 12:20:30 UTC
* Number of recursive dependencies: 90

Run `cloud_details(, "ggraph")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Edges.Rmd’ using rmarkdown
    Loading required package: ggplot2
    
    Attaching package: 'tidygraph'
    
    The following object is masked from 'package:stats':
    
        filter
    
    ...
    Error: processing vignette 'tidygraph.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘tidygraph.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘Layouts.Rmd’ ‘tidygraph.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        doc    3.6Mb
        libs   5.4Mb
    ```

# malan

<details>

* Version: 1.0.2
* GitHub: https://github.com/mikldk/malan
* Source code: https://github.com/cran/malan
* Date/Publication: 2020-06-25 12:00:06 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "malan")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘case-study-partial.Rmd’ using rmarkdown
    Loading required package: dplyr
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    ...
    
        filter
    
    --- finished re-building ‘introduction.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘case-study-partial.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 23.1Mb
      sub-directories of 1Mb or more:
        libs  22.1Mb
    ```

# migraph

<details>

* Version: 0.8.13
* GitHub: https://github.com/snlab-ch/migraph
* Source code: https://github.com/cran/migraph
* Date/Publication: 2021-12-19 02:10:02 UTC
* Number of recursive dependencies: 115

Run `cloud_details(, "migraph")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘migraph-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: coercion
    > ### Title: Coercion between graph/network/edgelist/matrix object classes
    > ### Aliases: coercion as_edgelist as_matrix as_igraph as_tidygraph
    > ###   as_network
    > 
    > ### ** Examples
    > 
    ...
    C 1 1 0
    > as_igraph(test)
    IGRAPH 8a972d2 DN-B 6 5 -- 
    + attr: name (v/c), type (v/l)
    + edges from 8a972d2 (vertex names):
    [1] A->I B->G B->I C->G C->H
    > as_tidygraph(test)
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘p1data.Rmd’ using rmarkdown
    Quitting from lines 105-113 (p1data.Rmd) 
    Error: processing vignette 'p1data.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘p1data.Rmd’
    
    --- re-building ‘p3centrality.Rmd’ using rmarkdown
    Quitting from lines 39-42 (p3centrality.Rmd) 
    ...
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘p7linearmodel.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘p1data.Rmd’ ‘p3centrality.Rmd’ ‘p4community.Rmd’ ‘p5blockmodel.Rmd’
      ‘p7linearmodel.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# multidplyr

<details>

* Version: 0.1.1
* GitHub: https://github.com/tidyverse/multidplyr
* Source code: https://github.com/cran/multidplyr
* Date/Publication: 2021-12-01 21:10:02 UTC
* Number of recursive dependencies: 75

Run `cloud_details(, "multidplyr")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘multidplyr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: partition
    > ### Title: Partition data across workers in a cluster
    > ### Aliases: partition
    > 
    > ### ** Examples
    > 
    > library(dplyr)
    ...
    > cluster_library(cl, "dplyr")
    > 
    > mtcars2 <- partition(mtcars, cl)
    > mtcars2 %>% mutate(cyl2 = 2 * cyl)
    Source: party_df [32 x 12]
    Shards: 2 [16--16 rows]
    
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-partydf.R:14:3): can construct and print partydf ────────────────
      `df` threw an unexpected error.
      Message: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
      Please use `tbl_format_setup()` instead.
      Class:   lifecycle_error_deprecated/defunctError/error/condition/condition
      ── Error (test-partydf.R:15:3): can construct and print partydf ────────────────
      `group_by(df, y)` threw an unexpected error.
      Message: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
      Please use `tbl_format_setup()` instead.
      Class:   lifecycle_error_deprecated/defunctError/error/condition/condition
      
      [ FAIL 2 | WARN 0 | SKIP 3 | PASS 49 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘multidplyr.Rmd’ using rmarkdown
    Quitting from lines 50-52 (multidplyr.Rmd) 
    Error: processing vignette 'multidplyr.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘multidplyr.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘multidplyr.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# multinma

<details>

* Version: 0.4.0
* GitHub: https://github.com/dmphillippo/multinma
* Source code: https://github.com/cran/multinma
* Date/Publication: 2022-01-18 11:42:41 UTC
* Number of recursive dependencies: 136

Run `cloud_details(, "multinma")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘multinma-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: as.igraph.nma_data
    > ### Title: Convert networks to graph objects
    > ### Aliases: as.igraph.nma_data as_tbl_graph.nma_data
    > 
    > ### ** Examples
    > 
    > # Set up network of smoking cessation data
    ...
     [6] Individual counselling--Self-help             
     [7] No intervention       --Individual counselling
     [8] No intervention       --Individual counselling
    + ... omitted several edges
    > 
    > # Convert to tbl_graph object
    > tidygraph::as_tbl_graph(smk_net)  # Edges combined by default
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 249.4Mb
      sub-directories of 1Mb or more:
        doc     3.7Mb
        libs  244.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# panelr

<details>

* Version: 0.7.6
* GitHub: https://github.com/jacob-long/panelr
* Source code: https://github.com/cran/panelr
* Date/Publication: 2021-12-17 07:40:02 UTC
* Number of recursive dependencies: 170

Run `cloud_details(, "panelr")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘panelr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: complete_data
    > ### Title: Filter out entities with too few observations
    > ### Aliases: complete_data
    > 
    > ### ** Examples
    > 
    > 
    > data("WageData")
    > wages <- panel_data(WageData, id = id, wave = t)
    > complete_data(wages, wks, lwage, min.waves = 3)
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘reshape.Rmd’ using rmarkdown
    Loading required package: lme4
    Loading required package: Matrix
    
    Attaching package: 'panelr'
    
    The following object is masked from 'package:stats':
    
    ...
    Error: processing vignette 'wbm.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘wbm.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘wbm.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘AER’
    ```

# photobiology

<details>

* Version: 0.10.8
* GitHub: https://github.com/aphalo/photobiology
* Source code: https://github.com/cran/photobiology
* Date/Publication: 2021-12-08 11:50:02 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "photobiology")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘photobiology-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: A.illuminant.spct
    > ### Title: CIE A illuminant data
    > ### Aliases: A.illuminant.spct
    > ### Keywords: datasets
    > 
    > ### ** Examples
    > 
    ...
    > A.illuminant.spct
    Object: source_spct [97 x 2]
    Wavelength range 300 to 780 nm, step 5 nm 
    Label: CIE A standard illuminant, normalized to one at 560 nm 
    Time unit 1s
    Spectral data normalized to 1 at 560 nm 
    
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘userguide-1-radiation.Rmd’ using rmarkdown
    News at https://www.r4photobiology.info/
    
    Attaching package: 'lubridate'
    
    The following objects are masked from 'package:base':
    
        date, intersect, setdiff, union
    
    ...
    
        date, intersect, setdiff, union
    
    --- finished re-building ‘userguide-2-astronomy.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘userguide-1-radiation.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# photobiologyFilters

<details>

* Version: 0.5.2
* GitHub: NA
* Source code: https://github.com/cran/photobiologyFilters
* Date/Publication: 2020-10-05 07:10:06 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "photobiologyFilters")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘photobiologyFilters-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: acetate_filters
    > ### Title: Spectral data for filters made from different materials
    > ### Aliases: acetate_filters materials acrylic_filters
    > ###   polycarbonate_filters plexiglas_filters polystyrene_filters
    > ###   polyester_filters polyvynil_chloride_filters optical_glass_filters
    > ###   plastic_film_filters plastic_films plastic_sheet_filters
    > ###   plastic_sheets
    ...
    --- Member: Evonik_Cherry_3C01_GT ---
    Object: filter_spct [911 x 2]
    Wavelength range 190 to 1100 nm, step 1 nm 
    Label: Poly(methyl methacrylate) (PMMA) 'acrylic' sheet; Plexiglas 'Cherry 3C01 GT'; 0.002 m thick; new; from Evonik Industries, Germany 
    Transmittance of type 'total'
    Rfr (/1): 0.065, thickness (mm): 3, attenuation mode: absorption.
    
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘user-guide.Rmd’ using rmarkdown
    Quitting from lines 259-260 (user-guide.Rmd) 
    Error: processing vignette 'user-guide.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘user-guide.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘user-guide.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# photobiologyInOut

<details>

* Version: 0.4.23
* GitHub: https://github.com/aphalo/photobiologyinout
* Source code: https://github.com/cran/photobiologyInOut
* Date/Publication: 2021-10-11 04:10:01 UTC
* Number of recursive dependencies: 117

Run `cloud_details(, "photobiologyInOut")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘photobiologyInOut-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: colorSpec2mspct
    > ### Title: Convert 'colorSpec::colorSpec' objects
    > ### Aliases: colorSpec2mspct as.source_spct.colorSpec
    > ###   as.source_mspct.colorSpec as.response_spct.colorSpec
    > ###   as.response_mspct.colorSpec as.filter_spct.colorSpec
    > ###   as.filter_mspct.colorSpec as.reflector_spct.colorSpec
    > ###   as.reflector_mspct.colorSpec as.chroma_mspct.colorSpec colorSpec2spct
    ...
    
        normalize
    
    Object: source_spct [93 x 2]
    Wavelength range 320 to 780 nm, step 5 nm 
    Time unit 1s
    
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘user-guide.Rmd’ using rmarkdown
    News at https://www.r4photobiology.info/
    
    Attaching package: 'lubridate'
    
    The following objects are masked from 'package:base':
    
        date, intersect, setdiff, union
    
    ...
    Error: processing vignette 'user-guide.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘user-guide.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘user-guide.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# photobiologyLamps

<details>

* Version: 0.4.3
* GitHub: NA
* Source code: https://github.com/cran/photobiologyLamps
* Date/Publication: 2019-06-14 22:14:35 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "photobiologyLamps")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘photobiologyLamps-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: incandescent_lamps
    > ### Title: Spectral data for Lamps of different types
    > ### Aliases: incandescent_lamps types led_lamps mercury_lamps
    > ###   multimetal_lamps sodium_lamps xenon_lamps
    > ### Keywords: datasets
    > 
    > ### ** Examples
    ...
    Object: source_spct [301 x 2]
    Wavelength range 300 to 900 nm, step 2 nm 
    Label: File: Osram.Super.Vialox.PRN 
    Measured on 0-10-17 12:14:11 UTC 
    Time unit 1s
    Spectral data normalized to 1 at 820 nm 
    
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘user-guide.Rmd’ using rmarkdown
    News at https://www.r4photobiology.info/
    ggspectra: default axis labels updated
    Quitting from lines 67-68 (user-guide.Rmd) 
    Error: processing vignette 'user-guide.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘user-guide.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘user-guide.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘photobiologyLEDs’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked Latin-1 string
    ```

# photobiologyLEDs

<details>

* Version: 0.4.3-1
* GitHub: NA
* Source code: https://github.com/cran/photobiologyLEDs
* Date/Publication: 2018-01-14 15:47:06 UTC
* Number of recursive dependencies: 54

Run `cloud_details(, "photobiologyLEDs")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘photobiologyLEDs-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: leds.mspct
    > ### Title: Spectral irradiance for diverse LEDs
    > ### Aliases: leds.mspct
    > ### Keywords: datasets
    > 
    > ### ** Examples
    > 
    ...
    Object: source_spct [1,425 x 2]
    Wavelength range 250.05 to 899.78 nm, step 0.43 to 0.48 nm 
    Label: White LED from hardware store
    supplier Clas Ohlsson, Finland 
    Time unit 1s
    Spectral data normalized to 1 at 453.47 nm 
    
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

# photobiologySensors

<details>

* Version: 0.5.0
* GitHub: NA
* Source code: https://github.com/cran/photobiologySensors
* Date/Publication: 2020-10-05 07:10:03 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "photobiologySensors")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘photobiologySensors-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: uv_sensors
    > ### Title: Sensors responsive to different wavebands
    > ### Aliases: uv_sensors 'sensors by waveband' uvc_sensors uvb_sensors
    > ###   erythemal_sensors uva_sensors par_sensors vis_sensors
    > ###   photometric_sensors shortwave_sensors pyranometer_sensors red_sensors
    > ###   far_red_sensors blue_sensors multichannel_sensors
    > ### Keywords: datasets
    ...
    > # select PAR sensors
    > sensors.mspct[par_sensors]
    $Skye_SKP215
    Object: response_spct [736 x 2]
    Wavelength range 382.04143 to 750.07094 nm, step 0.5007204 nm 
    Time unit 1s
    
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘user-guide.Rmd’ using rmarkdown
    News at https://www.r4photobiology.info/
    ggspectra: default axis labels updated
    Quitting from lines 63-64 (user-guide.Rmd) 
    Error: processing vignette 'user-guide.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘user-guide.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘user-guide.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# photobiologySun

<details>

* Version: 0.4.1
* GitHub: NA
* Source code: https://github.com/cran/photobiologySun
* Date/Publication: 2019-03-27 22:20:03 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "photobiologySun")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘user-guide.Rmd’ using rmarkdown
    News at https://www.r4photobiology.info/
    
    Attaching package: 'lubridate'
    
    The following objects are masked from 'package:base':
    
        date, intersect, setdiff, union
    ...
    Error: processing vignette 'user-guide.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘user-guide.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘user-guide.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# photobiologyWavebands

<details>

* Version: 0.4.5
* GitHub: NA
* Source code: https://github.com/cran/photobiologyWavebands
* Date/Publication: 2022-01-07 19:52:40 UTC
* Number of recursive dependencies: 43

Run `cloud_details(, "photobiologyWavebands")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘r4p-introduction.Rmd’ using rmarkdown
    --- finished re-building ‘r4p-introduction.Rmd’
    
    --- re-building ‘user-guide.Rmd’ using rmarkdown
    Quitting from lines 222-223 (user-guide.Rmd) 
    Error: processing vignette 'user-guide.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘user-guide.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘user-guide.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# prt

<details>

* Version: 0.1.4
* GitHub: https://github.com/nbenn/prt
* Source code: https://github.com/cran/prt
* Date/Publication: 2021-05-16 08:00:06 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "prt")` for more info

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
    > 
    > print(cars)
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       15.   │ │   └─base::sub(re, "", x, perl = TRUE)
       16.   │ │     └─base::is.factor(x)
       17.   │ └─base::paste0(...)
       18.   ├─base::format(x, ..., n = n, width = width, n_extra = n_extra)
       19.   └─prt:::format.prt(x, ..., n = n, width = width, n_extra = n_extra)
       20.     ├─base::format(trunc_dt(x, n = n, width = width, n_extra = n_extra))
       21.     └─prt::trunc_dt(x, n = n, width = width, n_extra = n_extra)
       22.       └─prt:::shrink_dt(df, rows)
       23.         └─pillar::colonnade(df, has_row_id = FALSE)
       24.           └─lifecycle::deprecate_stop("1.6.6", "pillar::colonnade()", "pillar::tbl_format_setup()")
       25.             └─lifecycle:::deprecate_stop0(msg)
      
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
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘prt.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘prt.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# readtext

<details>

* Version: 0.81
* GitHub: https://github.com/quanteda/readtext
* Source code: https://github.com/cran/readtext
* Date/Publication: 2021-07-14 14:40:02 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "readtext")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        9. │       │     │ └─base::force(code)
       10. │       │     └─base::withVisible(code)
       11. │       └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       12. ├─base::print(readtext("../data/fox/fox.txt"))
       13. └─readtext:::print.readtext(readtext("../data/fox/fox.txt"))
       14.   ├─base::print(tibble::trunc_mat(x, n = n))
       15.   └─tibble::trunc_mat(x, n = n)
       16.     └─tibble:::shrink_mat(df, rows, n, star = has_rownames(x))
       17.       └─pillar::colonnade(df, has_row_id = if (star) "*" else TRUE)
       18.         └─lifecycle::deprecate_stop("1.6.6", "pillar::colonnade()", "pillar::tbl_format_setup()")
       19.           └─lifecycle:::deprecate_stop0(msg)
      
      [ FAIL 1 | WARN 0 | SKIP 10 | PASS 156 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘readtext_vignette.Rmd’ using rmarkdown
    Quitting from lines 47-49 (readtext_vignette.Rmd) 
    Error: processing vignette 'readtext_vignette.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘readtext_vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘readtext_vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked Latin-1 string
      Note: found 1 marked UTF-8 string
      Note: found 7 strings marked as "bytes"
    ```

# ricu

<details>

* Version: 0.5.1
* GitHub: https://github.com/eth-mds/ricu
* Source code: https://github.com/cran/ricu
* Date/Publication: 2021-10-07 07:40:11 UTC
* Number of recursive dependencies: 107

Run `cloud_details(, "ricu")` for more info

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
    > 
    > subtract_3 <- transform_fun(binary_op(`-`, 3))
    > subtract_3(data.table::copy(dat), val_var = "z")
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘jss.Rmd’ using rmarkdown
    Quitting from lines 437-441 (jss.Rmd) 
    Error: processing vignette 'jss.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘jss.Rmd’
    
    --- re-building ‘ricu.Rmd’ using rmarkdown
    Quitting from lines 83-88 (ricu.Rmd) 
    ...
    Error: processing vignette 'uom.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘uom.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘jss.Rmd’ ‘ricu.Rmd’ ‘uom.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘glue’
      All declared Imports should be used.
    ```

# saeSim

<details>

* Version: 0.10.0
* GitHub: https://github.com/wahani/saeSim
* Source code: https://github.com/cran/saeSim
* Date/Publication: 2019-03-28 12:50:03 UTC
* Number of recursive dependencies: 94

Run `cloud_details(, "saeSim")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘saeSim-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: agg_all
    > ### Title: Aggregation function
    > ### Aliases: agg_all
    > 
    > ### ** Examples
    > 
    > sim_base() %>% sim_gen_x() %>% sim_gen_e() %>% sim_agg(agg_all())
    ...
    This warning is displayed once every 8 hours.
    Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated.
    Warning: `group_by_()` was deprecated in dplyr 0.7.0.
    Please use `group_by()` instead.
    See vignette('programming') for more help
    This warning is displayed once every 8 hours.
    Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated.
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      Please use `tbl_format_setup()` instead.
      Backtrace:
          ▆
       1. ├─methods::show(setup) at test-sim_setup.R:14:2
       2. └─saeSim::show(setup)
       3.   ├─base::print(trunc_mat(dat, n = 6, width = NULL))
       4.   └─tibble::trunc_mat(dat, n = 6, width = NULL)
       5.     └─tibble:::shrink_mat(df, rows, n, star = has_rownames(x))
       6.       └─pillar::colonnade(df, has_row_id = if (star) "*" else TRUE)
       7.         └─lifecycle::deprecate_stop("1.6.6", "pillar::colonnade()", "pillar::tbl_format_setup()")
       8.           └─lifecycle:::deprecate_stop0(msg)
      
      [ FAIL 1 | WARN 6 | SKIP 0 | PASS 133 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Introduction.Rmd’ using rmarkdown
    Quitting from lines 31-39 (Introduction.Rmd) 
    Error: processing vignette 'Introduction.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘Introduction.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Introduction.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# sfnetworks

<details>

* Version: 0.5.4
* GitHub: https://github.com/luukvdmeer/sfnetworks
* Source code: https://github.com/cran/sfnetworks
* Date/Publication: 2021-12-17 09:00:02 UTC
* Number of recursive dependencies: 139

Run `cloud_details(, "sfnetworks")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘sfnetworks-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: as_sfnetwork
    > ### Title: Convert a foreign object to a sfnetwork
    > ### Aliases: as_sfnetwork as_sfnetwork.default as_sfnetwork.sf
    > ###   as_sfnetwork.linnet as_sfnetwork.psp as_sfnetwork.sfc
    > ###   as_sfnetwork.sfNetwork as_sfnetwork.sfnetwork as_sfnetwork.tbl_graph
    > 
    > ### ** Examples
    ...
    > as_sfnetwork(roxel)
    # A sfnetwork with 701 nodes and 851 edges
    #
    # CRS:  EPSG:4326 
    #
    # A directed multigraph with 14 components with spatially explicit edges
    #
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘sfn01_structure.Rmd’ using rmarkdown
    Linking to GEOS 3.8.0, GDAL 3.0.4, PROJ 6.3.1; sf_use_s2() is TRUE
    
    Attaching package: 'tidygraph'
    
    The following object is masked from 'package:stats':
    
        filter
    
    ...
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘sfn05_morphers.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘sfn01_structure.Rmd’ ‘sfn02_preprocess_clean.Rmd’
      ‘sfn03_join_filter.Rmd’ ‘sfn04_routing.Rmd’ ‘sfn05_morphers.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# tibble

<details>

* Version: 3.1.6
* GitHub: https://github.com/tidyverse/tibble
* Source code: https://github.com/cran/tibble
* Date/Publication: 2021-11-07 17:30:02 UTC
* Number of recursive dependencies: 97

Run `cloud_details(, "tibble")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       14. │ │ └─mockr:::with_mock_(.dots = .dots, .parent = .parent, .env = .env)
       15. │ │   └─mockr:::evaluate_with_mock_env(...)
       16. │ │     └─lazyeval::lazy_eval(code[[length(code)]])
       17. │ │       └─base::eval(x$expr, x$env, emptyenv())
       18. │ │         └─base::eval(x$expr, x$env, emptyenv())
       19. │ └─base::print(x, ...)
       20. └─tibble::trunc_mat(df_all, n = 1L, n_extra = 2L, width = 30L)
       21.   └─tibble:::shrink_mat(df, rows, n, star = has_rownames(x))
       22.     └─pillar::colonnade(df, has_row_id = if (star) "*" else TRUE)
       23.       └─lifecycle::deprecate_stop("1.6.6", "pillar::colonnade()", "pillar::tbl_format_setup()")
       24.         └─lifecycle:::deprecate_stop0(msg)
      
      [ FAIL 2 | WARN 0 | SKIP 139 | PASS 1348 ]
      Error: Test failures
      Execution halted
    ```

# tibbletime

<details>

* Version: 0.1.6
* GitHub: https://github.com/business-science/tibbletime
* Source code: https://github.com/cran/tibbletime
* Date/Publication: 2020-07-21 13:50:02 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "tibbletime")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘tibbletime-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: as_period
    > ### Title: Change 'tbl_time' periodicity
    > ### Aliases: as_period
    > 
    > ### ** Examples
    > 
    > 
    ...
    > 
    > # FB stock prices
    > data(FB)
    > FB <- as_tbl_time(FB, date)
    > 
    > # Aggregate FB to yearly data
    > as_period(FB, "yearly")
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        5. │   │   └─testthat:::eval_with_output(code, print = print, width = width)
        6. │   │     ├─withr::with_output_sink(path, withVisible(code))
        7. │   │     │ └─base::force(code)
        8. │   │     └─base::withVisible(code)
        9. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       10. └─tibbletime:::print.tbl_time(test_tbl_time_g)
       11.   └─tibble::trunc_mat(x, ...)
       12.     └─tibble:::shrink_mat(df, rows, n, star = has_rownames(x))
       13.       └─pillar::colonnade(df, has_row_id = if (star) "*" else TRUE)
       14.         └─lifecycle::deprecate_stop("1.6.6", "pillar::colonnade()", "pillar::tbl_format_setup()")
       15.           └─lifecycle:::deprecate_stop0(msg)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 143 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘TT-01-time-based-filtering.Rmd’ using rmarkdown
    
    Attaching package: 'tibbletime'
    
    The following object is masked from 'package:stats':
    
        filter
    
    
    ...
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘TT-04-use-with-dplyr.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘TT-01-time-based-filtering.Rmd’ ‘TT-02-changing-time-periods.Rmd’
      ‘TT-04-use-with-dplyr.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# tidygraph

<details>

* Version: 1.2.0
* GitHub: https://github.com/thomasp85/tidygraph
* Source code: https://github.com/cran/tidygraph
* Date/Publication: 2020-05-12 07:30:03 UTC
* Number of recursive dependencies: 75

Run `cloud_details(, "tidygraph")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘tidygraph-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: bind_graphs
    > ### Title: Add graphs, nodes, or edges to a tbl_graph
    > ### Aliases: bind_graphs bind_nodes bind_edges
    > 
    > ### ** Examples
    > 
    > graph <- create_notable('bull')
    > new_graph <- create_notable('housex')
    > 
    > # Add nodes
    > graph %>% bind_nodes(data.frame(new = 1:4))
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# tidyseurat

<details>

* Version: 0.3.0
* GitHub: https://github.com/stemangiola/tidyseurat
* Source code: https://github.com/cran/tidyseurat
* Date/Publication: 2021-10-19 04:50:02 UTC
* Number of recursive dependencies: 184

Run `cloud_details(, "tidyseurat")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘tidyseurat-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: bind
    > ### Title: Efficiently bind multiple data frames by row and column
    > ### Aliases: bind
    > 
    > ### ** Examples
    > 
    > `%>%` = magrittr::`%>%`
    > tt = pbmc_small
    > bind_rows(    tt, tt  )
    Warning in CheckDuplicateCellNames(object.list = objects) :
      Some cell names are duplicated across objects provided. Renaming to enforce unique cell names.
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘figures_article.Rmd’ using knitr
    --- finished re-building ‘figures_article.Rmd’
    
    --- re-building ‘introduction.Rmd’ using knitr
    
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
    ...
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    --- failed re-building ‘introduction.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘introduction.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# wordgraph

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/wordgraph
* Date/Publication: 2020-07-01 08:40:03 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "wordgraph")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘wordgraph-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get.word.combinations.as.tbl_graph
    > ### Title: Calculate all word pairs frequencies.
    > ### Aliases: get.word.combinations.as.tbl_graph
    > 
    > ### ** Examples
    > 
    > # It is a time consuming function...
    ...
    > 
    > freeassociationdata_part = dplyr::sample_n(freeassociationdata, 10)
    > 
    > df.word.combinations.as.tbl_graph = get.word.combinations.as.tbl_graph(
    + c("diet1stword", "diet2ndword", "diet3rdword"), freeassociationdata_part)
    > 
    > print(df.word.combinations.as.tbl_graph)
    Error: `colonnade()` was deprecated in pillar 1.6.6 and is now defunct.
    Please use `tbl_format_setup()` instead.
    Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 6738 marked UTF-8 strings
    ```

