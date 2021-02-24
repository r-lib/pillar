set_show_source_hooks <- function() {
  width <- 40

  set_show_source_opts_hook(width)
  set_show_source_source_hook()
}

# Defines a `show_source` knitr option. If this chunk option is set,
# the code should be a single function (use ::: for internal functions).
# The code will be replaced by the function definition, and not evaluated.
set_show_source_opts_hook <- function(width) {
  force(width)

  show_source_opts_hook <- function(options) {
    qualified_fun_name <- options$code
    fun_name <- gsub("^.*:::", "", qualified_fun_name)

    fun <- eval(parse(text = fun_name))
    code <- deparse(fun, control = "useSource")

    options$code <- paste0(fun_name, " <- ", paste0(code, collapse = "\n"))
    options$eval <- FALSE
    # Store for later reuse by source hook
    options$show_source <- qualified_fun_name
    options
  }

  knitr::opts_hooks$set(show_source = show_source_opts_hook)
}

# show_source chunks are included in a <details> tag.
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
