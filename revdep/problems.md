# arrow

<details>

* Version: 17.0.0.1
* GitHub: https://github.com/apache/arrow
* Source code: https://github.com/cran/arrow
* Date/Publication: 2024-08-21 12:20:06 UTC
* Number of recursive dependencies: 77

Run `revdepcheck::cloud_details(, "arrow")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘arrow-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: to_duckdb
    > ### Title: Create a (virtual) DuckDB table from an Arrow object
    > ### Aliases: to_duckdb
    > 
    > ### ** Examples
    > 
    > ## Don't show: 
    > if (getFromNamespace("run_duckdb_examples", "arrow")()) (if (getRversion() >= "3.4") withAutoprint else force)({ # examplesIf
    + ## End(Don't show)
    + library(dplyr)
    + 
    + ds <- InMemoryDataset$create(mtcars)
    + 
    + ds %>%
    +   filter(mpg < 30) %>%
    +   group_by(cyl) %>%
    +   to_duckdb() %>%
    +   slice_min(disp)
    + ## Don't show: 
    + }) # examplesIf
    > library(dplyr)
    
    Attaching package: ‘dplyr’
    
    The following objects are masked from ‘package:stats’:
    
        filter, lag
    
    The following objects are masked from ‘package:base’:
    
        intersect, setdiff, setequal, union
    
    > ds <- InMemoryDataset$create(mtcars)
    > ds %>% filter(mpg < 30) %>% group_by(cyl) %>% to_duckdb() %>% slice_min(disp)
    Error in if (is.na(rows_total)) { : argument is of length zero
    Calls: <Anonymous> ... tbl_format_header.tbl_sql -> tbl_desc -> paste0 -> op_rows
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 124.1Mb
      sub-directories of 1Mb or more:
        R       7.5Mb
        libs  115.9Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘readr’
    ```

# dbplyr

<details>

* Version: 2.5.0
* GitHub: https://github.com/tidyverse/dbplyr
* Source code: https://github.com/cran/dbplyr
* Date/Publication: 2024-03-19 17:00:05 UTC
* Number of recursive dependencies: 79

Run `revdepcheck::cloud_details(, "dbplyr")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘dbplyr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: arrange.tbl_lazy
    > ### Title: Arrange rows by column values
    > ### Aliases: arrange.tbl_lazy
    > 
    > ### ** Examples
    > 
    > library(dplyr, warn.conflicts = FALSE)
    > 
    > db <- memdb_frame(a = c(3, 4, 1, 2), b = c(5, 1, 2, NA))
    > db %>% arrange(a) %>% show_query()
    <SQL>
    SELECT `dbplyr_4dMaH8wQnr`.*
    FROM `dbplyr_4dMaH8wQnr`
    ORDER BY `a`
    > 
    > # Note that NAs are sorted first
    > db %>% arrange(b)
    Error in if (is.na(rows_total)) { : argument is of length zero
    Calls: <Anonymous> ... tbl_format_header.tbl_sql -> tbl_desc -> paste0 -> op_rows
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(dbplyr)
      > 
      > test_check("dbplyr")
      Starting 2 test processes
      [ FAIL 2 | WARN 0 | SKIP 358 | PASS 1588 ]
      
      ══ Skipped tests (358) ═════════════════════════════════════════════════════════
      • Need at least two srcs to compare (5): 'test-verb-compute.R:34:3',
        'test-verb-copy-to.R:18:3', 'test-verb-copy-to.R:27:3',
        'test-verb-set-ops.R:49:3', 'test-verb-set-ops.R:93:3'
      • No MariaDB (5): 'test-backend-mysql.R:104:3', 'test-backend-mysql.R:109:3',
        'test-backend-mysql.R:114:3', 'test-backend-mysql.R:125:3',
        'test-backend-mysql.R:153:3'
      • No mssql (13): 'test-backend-mssql.R:375:3', 'test-backend-mssql.R:407:3',
        'test-backend-mssql.R:426:3', 'test-backend-mssql.R:442:3',
        'test-backend-mssql.R:468:3', 'test-backend-mssql.R:495:3',
        'test-backend-mssql.R:519:3', 'test-backend-mssql.R:544:3',
        'test-backend-mssql.R:570:3', 'test-backend-mssql.R:597:3',
        'test-backend-mssql.R:622:3', 'test-backend-mssql.R:649:3',
        'test-backend-mssql.R:674:3'
      • No postgres (9): 'test-backend-postgres.R:190:3',
        'test-backend-postgres.R:198:3', 'test-backend-postgres.R:205:3',
        'test-backend-postgres.R:219:3', 'test-backend-postgres.R:280:3',
        'test-backend-postgres.R:295:3', 'test-backend-postgres.R:350:3',
        'test-backend-postgres.R:410:3', 'test-verb-joins.R:103:3'
      • On CRAN (320): 'test-backend-access.R:69:3', 'test-backend-hana.R:4:3',
        'test-backend-hana.R:17:3', 'test-backend-.R:75:3', 'test-backend-.R:84:3',
        'test-backend-.R:90:3', 'test-backend-.R:107:3', 'test-backend-.R:170:3',
        'test-backend-.R:182:3', 'test-backend-hive.R:13:3',
        'test-backend-impala.R:22:3', 'test-backend-mysql.R:49:3',
        'test-backend-mysql.R:73:3', 'test-backend-oracle.R:23:3',
        'test-backend-oracle.R:31:3', 'test-backend-oracle.R:43:3',
        'test-backend-oracle.R:59:3', 'test-backend-oracle.R:76:3',
        'test-backend-postgres.R:115:3', 'test-backend-postgres.R:123:3',
        'test-backend-postgres.R:139:3', 'test-backend-postgres.R:173:3',
        'test-backend-mssql.R:64:3', 'test-backend-mssql.R:105:3',
        'test-backend-mssql.R:125:3', 'test-backend-mssql.R:176:3',
        'test-backend-mssql.R:191:3', 'test-backend-mssql.R:197:3',
        'test-backend-mssql.R:209:3', 'test-backend-mssql.R:219:3',
        'test-backend-mssql.R:231:3', 'test-backend-mssql.R:254:3',
        'test-backend-mssql.R:276:3', 'test-backend-mssql.R:296:3',
        'test-backend-mssql.R:319:3', 'test-backend-mssql.R:339:3',
        'test-backend-mssql.R:355:3', 'test-backend-mssql.R:367:3',
        'test-backend-mssql.R:394:3', 'test-backend-redshift.R:51:3',
        'test-backend-snowflake.R:158:3', 'test-backend-snowflake.R:168:3',
        'test-backend-sqlite.R:41:3', 'test-backend-sqlite.R:51:3',
        'test-backend-sqlite.R:57:3', 'test-backend-sqlite.R:105:3',
        'test-backend-teradata.R:55:3', 'test-backend-teradata.R:62:3',
        'test-backend-teradata.R:68:3', 'test-backend-teradata.R:78:3',
        'test-backend-teradata.R:85:3', 'test-backend-teradata.R:92:3',
        'test-build-sql.R:3:3', 'test-build-sql.R:58:3', 'test-build-sql.R:70:3',
        'test-db-io.R:6:3', 'test-db-io.R:24:3', 'test-db-io.R:49:3',
        'test-db-sql.R:8:3', 'test-db-sql.R:28:3', 'test-ident.R:14:3',
        'test-lazy-join-query.R:18:3', 'test-escape.R:112:3', 'test-escape.R:123:3',
        'test-lazy-select-query.R:4:3', 'test-pillar.R:2:3', 'test-query-join.R:6:3',
        'test-query-join.R:16:3', 'test-query-join.R:25:3', 'test-query-join.R:32:3',
        'test-query-join.R:40:3', 'test-query-semi-join.R:4:3',
        'test-query-semi-join.R:11:3', 'test-query-select.R:7:3',
        'test-query-select.R:16:3', 'test-query-select.R:20:3',
        'test-query-set-op.R:5:3', 'test-query-set-op.R:10:3', 'test-schema.R:2:3',
        'test-sql-build.R:3:3', 'test-sql.R:8:3', 'test-table-name.R:2:3',
        'test-table-name.R:14:3', 'test-table-name.R:83:3', 'test-table-name.R:93:3',
        'test-tbl-lazy.R:7:3', 'test-tbl-lazy.R:11:3', 'test-tbl-lazy.R:22:3',
        'test-tbl-lazy.R:45:3', 'test-tbl-lazy.R:52:3', 'test-tbl-sql.R:58:3',
        'test-rows.R:7:3', 'test-rows.R:53:3', 'test-rows.R:66:3',
        'test-rows.R:121:3', 'test-rows.R:162:3', 'test-rows.R:193:3',
        'test-rows.R:222:3', 'test-rows.R:230:3', 'test-rows.R:277:3',
        'test-rows.R:317:3', 'test-rows.R:337:3', 'test-rows.R:352:3',
        'test-rows.R:436:3', 'test-rows.R:477:3', 'test-rows.R:524:3',
        'test-rows.R:542:3', 'test-rows.R:590:3', 'test-rows.R:616:3',
        'test-rows.R:657:3', 'test-rows.R:699:3', 'test-rows.R:743:3',
        'test-rows.R:781:3', 'test-rows.R:835:3', 'test-rows.R:875:3',
        'test-rows.R:916:3', 'test-rows.R:962:3', 'test-rows.R:978:3',
        'test-tidyeval.R:78:3', 'test-translate-sql-conditional.R:3:3',
        'test-translate-sql-conditional.R:10:3',
        'test-translate-sql-conditional.R:15:3',
        'test-translate-sql-conditional.R:27:3',
        'test-translate-sql-conditional.R:62:3',
        'test-translate-sql-conditional.R:70:3',
        'test-translate-sql-conditional.R:165:3',
        'test-translate-sql-conditional.R:234:3',
        'test-translate-sql-conditional.R:251:3',
        'test-translate-sql-conditional.R:283:3',
        'test-translate-sql-conditional.R:290:3', 'test-translate-sql-cut.R:103:3',
        'test-translate-sql-cut.R:146:3', 'test-tidyeval-across.R:57:3',
        'test-tidyeval-across.R:101:3', 'test-tidyeval-across.R:222:3',
        'test-tidyeval-across.R:229:3', 'test-tidyeval-across.R:237:3',
        'test-tidyeval-across.R:371:3', 'test-tidyeval-across.R:380:3',
        'test-tidyeval-across.R:387:3', 'test-tidyeval-across.R:430:3',
        'test-tidyeval-across.R:447:3', 'test-tidyeval-across.R:463:3',
        'test-tidyeval-across.R:470:3', 'test-tidyeval-across.R:477:3',
        'test-tidyeval-across.R:512:3', 'test-tidyeval-across.R:540:3',
        'test-tidyeval-across.R:548:3', 'test-tidyeval-across.R:628:3',
        'test-tidyeval-across.R:634:3', 'test-tidyeval-across.R:640:3',
        'test-tidyeval-across.R:650:3', 'test-translate-sql-helpers.R:2:3',
        'test-translate-sql-helpers.R:26:3', 'test-translate-sql-helpers.R:43:3',
        'test-translate-sql-helpers.R:47:3', 'test-translate-sql-helpers.R:84:3',
        'test-translate-sql-helpers.R:110:3', 'test-translate-sql-quantile.R:3:3',
        'test-translate-sql-string.R:15:3', 'test-translate-sql.R:6:3',
        'test-translate-sql.R:17:3', 'test-translate-sql-window.R:102:3',
        'test-translate-sql-window.R:151:3', 'test-translate-sql-window.R:158:3',
        'test-translate-sql-window.R:209:3', 'test-translate-sql-window.R:230:3',
        'test-verb-arrange.R:16:3', 'test-verb-arrange.R:21:3',
        'test-verb-arrange.R:45:3', 'test-verb-arrange.R:64:3',
        'test-verb-compute.R:58:3', 'test-verb-compute.R:107:3',
        'test-verb-compute.R:116:3', 'test-verb-compute.R:125:3',
        'test-verb-copy-to.R:55:3', 'test-verb-copy-to.R:71:3',
        'test-verb-copy-to.R:94:3', 'test-verb-copy-to.R:102:3',
        'test-verb-copy-to.R:128:3', 'test-verb-count.R:4:3',
        'test-verb-count.R:64:3', 'test-verb-do.R:33:3', 'test-verb-do.R:71:3',
        'test-verb-distinct.R:149:3', 'test-verb-distinct.R:191:3',
        'test-verb-distinct.R:200:3', 'test-verb-fill.R:45:3',
        'test-verb-fill.R:58:3', 'test-verb-fill.R:71:3', 'test-verb-fill.R:84:3',
        'test-verb-fill.R:98:3', 'test-verb-fill.R:104:3', 'test-verb-expand.R:7:3',
        'test-verb-expand.R:19:3', 'test-verb-expand.R:24:3',
        'test-verb-expand.R:30:3', 'test-verb-expand.R:50:3',
        'test-verb-expand.R:54:3', 'test-verb-expand.R:58:3',
        'test-verb-expand.R:63:3', 'test-verb-expand.R:104:3',
        'test-verb-expand.R:110:3', 'test-verb-expand.R:132:3',
        'test-verb-group_by.R:12:3', 'test-verb-group_by.R:19:3',
        'test-verb-group_by.R:26:3', 'test-verb-group_by.R:34:3',
        'test-verb-group_by.R:157:3', 'test-verb-filter.R:22:3',
        'test-verb-filter.R:57:3', 'test-verb-filter.R:63:3',
        'test-verb-filter.R:170:3', 'test-verb-filter.R:186:3',
        'test-verb-filter.R:221:3', 'test-verb-filter.R:295:3',
        'test-verb-filter.R:331:3', 'test-verb-filter.R:341:3',
        'test-verb-mutate.R:30:3', 'test-verb-mutate.R:43:3',
        'test-verb-mutate.R:57:3', 'test-verb-mutate.R:64:3',
        'test-verb-mutate.R:105:3', 'test-verb-mutate.R:129:3',
        'test-verb-mutate.R:156:3', 'test-verb-mutate.R:176:3',
        'test-verb-mutate.R:188:3', 'test-verb-mutate.R:416:3',
        'test-verb-mutate.R:423:3', 'test-verb-mutate.R:474:3',
        'test-verb-mutate.R:481:3', 'test-verb-mutate.R:488:3',
        'test-verb-pivot-longer.R:13:3', 'test-verb-pivot-longer.R:31:3',
        'test-verb-pivot-longer.R:40:3', 'test-verb-pivot-longer.R:44:3',
        'test-verb-pivot-longer.R:77:3', 'test-verb-pivot-longer.R:81:3',
        'test-verb-pivot-longer.R:88:3', 'test-verb-pivot-longer.R:142:3',
        'test-verb-pivot-longer.R:158:3', 'test-verb-pivot-longer.R:191:3',
        'test-verb-pivot-longer.R:235:3', 'test-verb-pivot-longer.R:251:3',
        'test-verb-pivot-longer.R:259:3', 'test-verb-joins.R:31:3',
        'test-verb-joins.R:54:3', 'test-verb-joins.R:71:3',
        'test-verb-joins.R:172:3', 'test-verb-joins.R:284:3',
        'test-verb-joins.R:366:3', 'test-verb-joins.R:503:3',
        'test-verb-joins.R:537:3', 'test-verb-joins.R:581:3',
        'test-verb-joins.R:633:3', 'test-verb-joins.R:653:3',
        'test-verb-joins.R:680:3', 'test-verb-joins.R:695:3',
        'test-verb-joins.R:858:3', 'test-verb-joins.R:905:3',
        'test-verb-joins.R:975:3', 'test-verb-joins.R:985:3',
        'test-verb-joins.R:1007:3', 'test-verb-joins.R:1016:3',
        'test-verb-joins.R:1026:3', 'test-verb-joins.R:1066:3',
        'test-verb-joins.R:1112:3', 'test-verb-joins.R:1317:3',
        'test-verb-pull.R:45:3', 'test-verb-select.R:28:3',
        'test-verb-select.R:65:3', 'test-verb-select.R:122:3',
        'test-verb-select.R:183:3', 'test-verb-select.R:206:3',
        'test-verb-select.R:242:3', 'test-verb-select.R:281:3',
        'test-verb-select.R:307:3', 'test-verb-select.R:321:3',
        'test-verb-select.R:344:3', 'test-verb-select.R:352:3',
        'test-verb-select.R:367:3', 'test-verb-set-ops.R:63:3',
        'test-verb-pivot-wider.R:23:3', 'test-verb-pivot-wider.R:48:3',
        'test-verb-pivot-wider.R:60:3', 'test-verb-pivot-wider.R:237:3',
        'test-verb-pivot-wider.R:245:3', 'test-verb-pivot-wider.R:267:3',
        'test-verb-pivot-wider.R:279:3', 'test-verb-pivot-wider.R:328:3',
        'test-verb-pivot-wider.R:347:3', 'test-verb-pivot-wider.R:378:3',
        'test-verb-pivot-wider.R:417:3', 'test-verb-pivot-wider.R:476:3',
        'test-verb-pivot-wider.R:481:3', 'test-verb-pivot-wider.R:486:3',
        'test-verb-pivot-wider.R:493:3', 'test-verb-pivot-wider.R:500:3',
        'test-verb-slice.R:3:3', 'test-verb-slice.R:17:3', 'test-verb-slice.R:27:3',
        'test-verb-slice.R:35:3', 'test-verb-slice.R:49:3', 'test-verb-slice.R:64:3',
        'test-verb-slice.R:75:3', 'test-verb-slice.R:103:3',
        'test-verb-slice.R:118:3', 'test-verb-uncount.R:5:3',
        'test-verb-summarise.R:2:3', 'test-verb-summarise.R:27:3',
        'test-verb-summarise.R:50:3', 'test-verb-summarise.R:72:3',
        'test-verb-summarise.R:82:3', 'test-verb-summarise.R:113:3',
        'test-verb-summarise.R:122:3', 'test-verb-summarise.R:133:3',
        'test-verb-window.R:2:3', 'test-verb-window.R:13:3',
        'test-verb-window.R:19:3', 'test-verb-window.R:33:3'
      • `grouped_df()` needs a `name_repair` argument (1):
        'test-verb-pivot-wider.R:81:3'
      • empty test (1): 'test-verb-set-ops.R:110:1'
      • identical(Sys.getenv("GITHUB_POSTGRES"), "true") is not TRUE (1):
        'test-backend-postgres-old.R:2:3'
      • not clear whether test makes sense (2): 'test-verb-arrange.R:2:3',
        'test-verb-arrange.R:131:3'
      • not yet correctly supported (1): 'test-tidyeval-across.R:272:3'
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-tbl-sql.R:33:3'): sql tbl can be printed ───────────────────────
      Error in `if (is.na(rows_total)) {
          "??"
      } else {
          big_mark(rows_total)
      }`: argument is of length zero
      Backtrace:
          ▆
       1. └─testthat::expect_snapshot(...) at test-tbl-sql.R:33:3
       2.   └─rlang::cnd_signal(state$error)
      ── Error ('test-tbl-sql.R:68:3'): check_from is deprecated ─────────────────────
      Error in `if (is.na(rows_total)) {
          "??"
      } else {
          big_mark(rows_total)
      }`: argument is of length zero
      Backtrace:
          ▆
       1. └─testthat::expect_snapshot(tbl(con, "x", check_from = FALSE)) at test-tbl-sql.R:68:3
       2.   └─rlang::cnd_signal(state$error)
      
      [ FAIL 2 | WARN 0 | SKIP 358 | PASS 1588 ]
      Error: Test failures
      Execution halted
    ```

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘dbplyr.Rmd’
      ...
    +     indexes = list(c("year", "month", "day"), "carrier", "tailnum", 
    +          .... [TRUNCATED] 
    
    > flights_db <- tbl(con, "flights")
    
    > flights_db
    
      When sourcing ‘dbplyr.R’:
    Error: argument is of length zero
    Execution halted
    when running code in ‘new-backend.Rmd’
      ...
    
    > con <- DBI::dbConnect(RSQLite::SQLite(), path = ":memory:")
    
    > DBI::dbWriteTable(con, "mtcars", mtcars)
    
    > tbl(con, "mtcars")
    
      When sourcing ‘new-backend.R’:
    Error: argument is of length zero
    Execution halted
    when running code in ‘reprex.Rmd’
      ...
        ident, sql
    
    
    > mf <- memdb_frame(g = c(1, 1, 2, 2, 2), x = 1:5, y = 5:1)
    
    > mf
    
      When sourcing ‘reprex.R’:
    Error: argument is of length zero
    Execution halted
    when running code in ‘translation-function.Rmd’
      ...
    1    10     3      1
    2    10    -3     -2
    3   -10     3      2
    4   -10    -3     -1
    
    > mf %>% mutate(x%%y)
    
      When sourcing ‘translation-function.R’:
    Error: argument is of length zero
    Execution halted
    
      ‘backend-2.Rmd’ using ‘UTF-8’... OK
      ‘dbplyr.Rmd’ using ‘UTF-8’... failed
      ‘new-backend.Rmd’ using ‘UTF-8’... failed
      ‘reprex.Rmd’ using ‘UTF-8’... failed
      ‘sql.Rmd’ using ‘UTF-8’... OK
      ‘translation-function.Rmd’ using ‘UTF-8’... failed
      ‘translation-verb.Rmd’ using ‘UTF-8’... OK
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘backend-2.Rmd’ using rmarkdown
    --- finished re-building ‘backend-2.Rmd’
    
    --- re-building ‘dbplyr.Rmd’ using rmarkdown
    
    Quitting from lines 104-105 [unnamed-chunk-6] (dbplyr.Rmd)
    Error: processing vignette 'dbplyr.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘dbplyr.Rmd’
    
    --- re-building ‘new-backend.Rmd’ using rmarkdown
    
    Quitting from lines 39-43 [unnamed-chunk-2] (new-backend.Rmd)
    Error: processing vignette 'new-backend.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘new-backend.Rmd’
    
    --- re-building ‘reprex.Rmd’ using rmarkdown
    
    Quitting from lines 40-46 [unnamed-chunk-2] (reprex.Rmd)
    Error: processing vignette 'reprex.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘reprex.Rmd’
    
    --- re-building ‘sql.Rmd’ using rmarkdown
    --- finished re-building ‘sql.Rmd’
    
    --- re-building ‘translation-function.Rmd’ using rmarkdown
    
    Quitting from lines 88-96 [unnamed-chunk-8] (translation-function.Rmd)
    Error: processing vignette 'translation-function.Rmd' failed with diagnostics:
    argument is of length zero
    --- failed re-building ‘translation-function.Rmd’
    
    --- re-building ‘translation-verb.Rmd’ using rmarkdown
    --- finished re-building ‘translation-verb.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘dbplyr.Rmd’ ‘new-backend.Rmd’ ‘reprex.Rmd’
      ‘translation-function.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# dplyr

<details>

* Version: 1.1.4
* GitHub: https://github.com/tidyverse/dplyr
* Source code: https://github.com/cran/dplyr
* Date/Publication: 2023-11-17 16:50:02 UTC
* Number of recursive dependencies: 95

Run `revdepcheck::cloud_details(, "dplyr")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘dplyr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: compute
    > ### Title: Force computation of a database query
    > ### Aliases: compute collect collapse
    > 
    > ### ** Examples
    > 
    > ## Don't show: 
    > if (requireNamespace("dbplyr", quietly = TRUE) && requireNamespace("RSQLite", quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)({ # examplesIf
    + ## End(Don't show)
    + mtcars2 <- dbplyr::src_memdb() %>%
    +   copy_to(mtcars, name = "mtcars2-cc", overwrite = TRUE)
    + 
    + remote <- mtcars2 %>%
    +   filter(cyl == 8) %>%
    +   select(mpg:drat)
    + 
    + # Compute query and save in remote table
    + compute(remote)
    + 
    + # Compute query bring back to this session
    + collect(remote)
    + 
    + # Creates a fresh query based on the generated SQL
    + collapse(remote)
    + ## Don't show: 
    + }) # examplesIf
    > mtcars2 <- dbplyr::src_memdb() %>% copy_to(mtcars, name = "mtcars2-cc", 
    +     overwrite = TRUE)
    > remote <- mtcars2 %>% filter(cyl == 8) %>% select(mpg:drat)
    > compute(remote)
    Error in if (is.na(rows_total)) { : argument is of length zero
    Calls: <Anonymous> ... tbl_format_header.tbl_sql -> tbl_desc -> paste0 -> op_rows
    Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

