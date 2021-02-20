set_show_source_hooks <- function() {
  width <- 40

  set_show_source_opts_hook(width)
  set_show_source_source_hook()
}

# Defines a `show_source` knitr option. If this chunk option is set, code is duplicated
# (running with tibbles or data frames, respectively): one line of df code
# followed by the same line of the corresponding tibble code.
# The code is also evaluated, if the results are identical (disregarding the
# class), only the tibble copy is retained.
#
set_show_source_opts_hook <- function(width) {
  force(width)

  show_source_opts_hook <- function(options) {
    qualified_fun_name <- options$code
    fun_name <- gsub("^.*:::", "", qualified_fun_name)

    fun <- eval(parse(text = fun_name))
    # Better than deparse(), because it keeps the original source
    code <- capture.output(print(fun))
    # Remove last line that shows the environment
    code <- grep("^[<]", code, invert = TRUE)

    options$code <- paste0(fun_name, " <- ", paste0(code, collapse = "\n"))
    options$eval <- FALSE
    # Store for later reuse by source hook
    options$show_source <- qualified_fun_name
    options
  }

  knitr::opts_hooks$set(show_source = show_source_opts_hook)
}

# show_source chunks are shown side by side, with the help of an HTML table.
# Each source chunk introduces a new table cell, even chunks also introduce
# a new table row.
# vertical-align: top keeps the table rows nicely aligned.
# This places some limitations on the chunk sources but works well so far.
set_show_source_source_hook <- function() {
  # Need to use a closure here to daisy-chain hooks and to keep state

  old_source_hook <- knitr::knit_hooks$get("source")

  show_source_source_hook <- function(x, options) {
    x <- old_source_hook(x, options)
    if (is.null(options$show_source)) {
      return(x)
    }

    qualified_fun_name <- options$show_source
    fun_name <- gsub("^.*:::", "", qualified_fun_name)

    paste0(
      "<details><summary>Source code of <code>",
      qualified_fun_name, "()</code></summary>",
      x, "</details>\n"
    )
  }

  knitr::knit_hooks$set(source = show_source_source_hook)
}
