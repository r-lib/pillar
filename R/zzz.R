#' @import rlang
NULL

.onAttach <- function(...) {
  crayon::num_colors(forget = TRUE)
}

.onLoad <- function(libname, pkgname) {
  register_s3_method("knitr", "knit_print", "squeezed_colonnade")

  # if memoise is available:
  #   memoise abbreviate_olson, assign to package environment
  if (requireNamespace("memoise", quietly = TRUE)) {
    assign(
      "abbreviate_olson",
      value = memoise::memoise(abbreviate_olson),
      envir = parent.env(as.environment(-1))
    )
  }

  invisible()
}

register_s3_method <- function(pkg, generic, class, fun = NULL) {
  stopifnot(is.character(pkg), length(pkg) == 1)
  stopifnot(is.character(generic), length(generic) == 1)
  stopifnot(is.character(class), length(class) == 1)
  if (is.null(fun)) {
    fun <- get(paste0(generic, ".", class), envir = parent.frame())
  }
  stopifnot(is.function(fun))


  if (pkg %in% loadedNamespaces()) {
    envir <- asNamespace(pkg)
    registerS3method(generic, class, fun, envir = envir)
  }

  # Always register hook in case package is later unloaded & reloaded
  setHook(
    packageEvent(pkg, "onLoad"),
    function(...) {
      envir <- asNamespace(pkg)
      registerS3method(generic, class, fun, envir = envir)
    }
  )
}
