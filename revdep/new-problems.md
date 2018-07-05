# banR

Version: 0.2.0

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    Writing tempfile to.../tmp/Rtmp4MBuwC/file1342226fe4ee7.csv
    If file is larger than 8 MB, it must be splitted
    Size is : 61 bytes
    SuccessOKSuccess: (200) OK
    # A tibble: 3 x 16
      y          z x     latitude longitude result_label result_score result_type
      <chr>  <dbl> <chr>    <dbl>     <dbl> <chr>               <dbl> <chr>      
    1 75015 -0.626 39 q…     48.8      2.28 39 Quai And…         0.94 housenumber
    2 75012  0.184 64 A…     48.8      2.38 64 Allée de…         0.93 housenumber
    3 75007 -0.836 20 a…     48.9      2.31 20 Avenue d…         0.95 housenumber
    # ... with 8 more variables: result_id <chr>, result_housenumber <int>,
    #   result_name <chr>, result_street <chr>, result_postcode <int>,
    #   result_city <chr>, result_context <chr>, result_citycode <chr>
    > geocode_tbl(tbl = table_test, adresse = x, code_postal = y)
    Writing tempfile to.../tmp/Rtmp4MBuwC/file13422489d7fa1.csv
    If file is larger than 8 MB, it must be splitted
    Size is : 81 bytes
    Server errorService UnavailableServer error: (503) Service Unavailable
    Error in geocode_tbl(tbl = table_test, adresse = x, code_postal = y) : 
      The API sent back an error 503
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

# dexter

Version: 0.8.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      40: tryCatch(withCallingHandlers({    eval(code, test_env)    if (!handled && !is.null(test)) {        skip_empty()    }}, expectation = handle_expectation, skip = handle_skip, warning = handle_warning,     message = handle_message, error = handle_error), error = handle_fatal,     skip = function(e) {    })
      41: test_code(NULL, exprs, env)
      42: source_file(path, new.env(parent = env), chdir = TRUE, wrap = wrap)
      43: force(code)
      44: with_reporter(reporter = reporter, start_end_reporter = start_end_reporter,     {        lister$start_file(basename(path))        source_file(path, new.env(parent = env), chdir = TRUE,             wrap = wrap)        end_context()    })
      45: FUN(X[[i]], ...)
      46: lapply(paths, test_file, env = env, reporter = current_reporter,     start_end_reporter = FALSE, load_helpers = FALSE, wrap = wrap)
      47: force(code)
      48: with_reporter(reporter = current_reporter, results <- lapply(paths,     test_file, env = env, reporter = current_reporter, start_end_reporter = FALSE,     load_helpers = FALSE, wrap = wrap))
      49: test_files(paths, reporter = reporter, env = env, stop_on_failure = stop_on_failure,     stop_on_warning = stop_on_warning, wrap = wrap)
      50: test_dir(path = test_path, reporter = reporter, env = env, filter = filter,     ..., stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning,     wrap = wrap)
      51: test_package_dir(package = package, test_path = test_path, filter = filter,     reporter = reporter, ..., stop_on_failure = stop_on_failure,     stop_on_warning = stop_on_warning, wrap = wrap)
      52: test_check("dexter")
      An irrecoverable exception occurred. R is aborting now ...
      Segmentation fault (core dumped)
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    38: evaluate::evaluate(...)
    39: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))
    40: in_dir(input_dir(), evaluate(code, envir = env, new_device = FALSE,     keep_warning = !isFALSE(options$warning), keep_message = !isFALSE(options$message),     stop_on_error = if (options$error && options$include) 0L else 2L,     output_handler = knit_handlers(options$render, options)))
    41: block_exec(params)
    42: call_block(x)
    43: process_group.block(group)
    44: process_group(group)
    45: withCallingHandlers(if (tangle) process_tangle(group) else process_group(group),     error = function(e) {        setwd(wd)        cat(res, sep = "\n", file = output %n% "")        message("Quitting from lines ", paste(current_lines(i),             collapse = "-"), " (", knit_concord$get("infile"),             ") ")    })
    46: process_file(text, output)
    47: knit(input, text = text, envir = envir, encoding = encoding,     quiet = quiet)
    48: knit2html(..., force_v1 = TRUE)
    49: (if (grepl("\\.[Rr]md$", file)) knit2html_v1 else if (grepl("\\.[Rr]rst$",     file)) knit2pandoc else knit)(file, encoding = encoding,     quiet = quiet, envir = globalenv())
    50: vweave(...)
    51: engine$weave(file, quiet = quiet, encoding = enc)
    52: doTryCatch(return(expr), name, parentenv, handler)
    53: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    54: tryCatchList(expr, classes, parentenv, handlers)
    55: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    find_vignette_product(name, by = "weave", engine = engine)}, error = function(e) {    stop(gettextf("processing vignette '%s' failed with diagnostics:\n%s",         file, conditionMessage(e)), domain = NA, call. = FALSE)})
    56: buildVignettes(dir = "/tmp/RtmpyfkCmo/file17a0e365d9b3/dexter.Rcheck/vign_test/dexter")
    An irrecoverable exception occurred. R is aborting now ...
    Segmentation fault (core dumped)
    ```

