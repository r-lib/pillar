# jstor

<details>

* Version: 0.3.10
* GitHub: https://github.com/ropensci/jstor
* Source code: https://github.com/cran/jstor
* Date/Publication: 2021-12-08 08:50:07 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "jstor")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘jstor-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: jst_define_import
    > ### Title: Define an import specification
    > ### Aliases: jst_define_import
    > 
    > ### ** Examples
    > 
    > # articles will be imported via `jst_get_article()` and `jst_get_authors()`
    > jst_define_import(article = c(jst_get_article, jst_get_authors))
    Error in str_trunc(formatted) : 
      argument "width" is missing, with no default
    Calls: <Anonymous> ... emit_pillars -> do_emit_pillars -> do_emit_pillars -> str_trunc
    Execution halted
    ```

# RNeXML

<details>

* Version: 2.4.5
* GitHub: https://github.com/ropensci/RNeXML
* Source code: https://github.com/cran/RNeXML
* Date/Publication: 2020-06-18 18:40:02 UTC
* Number of recursive dependencies: 141

Run `cloud_details(, "RNeXML")` for more info

</details>

## Newly broken

*   checking whether the namespace can be unloaded cleanly ... WARNING
    ```
    ---- unloading
    Error in .mergeMethodsTable(generic, mtable, tt, attach) : 
      trying to get slot "defined" from an object of a basic class ("environment") with no slots
    Calls: unloadNamespace ... <Anonymous> -> .updateMethodsInTable -> .mergeMethodsTable
    Execution halted
    ```

# wrappedtools

<details>

* Version: 0.7.9
* GitHub: NA
* Source code: https://github.com/cran/wrappedtools
* Date/Publication: 2021-09-06 14:30:02 UTC
* Number of recursive dependencies: 123

Run `cloud_details(, "wrappedtools")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘wrappedtools-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: compare_n_qualvars
    > ### Title: Comparison for columns of factors for more than 2 groups with
    > ###   post-hoc
    > ### Aliases: compare_n_qualvars
    > 
    > ### ** Examples
    > 
    ...
    14 "     8" "1 (3.12%)"   "0 (0%)"     "0 (0%)"     "1 (20%)"  " "    
    > # All levels in one row but with linebreaks:
    > compare_n_qualvars(
    +   data = mtcars, dep_vars = c("am", "cyl", "carb"), indep_var = "gear",
    +   singleline = TRUE
    + )
    Error in str_trunc(formatted) : 
      argument "width" is missing, with no default
    Calls: <Anonymous> ... emit_pillars -> do_emit_pillars -> do_emit_pillars -> str_trunc
    Execution halted
    ```

