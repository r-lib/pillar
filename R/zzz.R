#' @import rlang
#' @import ellipsis
#' @import lifecycle
NULL

.onAttach <- function(...) {
  crayon::num_colors(forget = TRUE)
}

.onLoad <- function(libname, pkgname) {
  # Can't use vctrs::s3_register() here with vctrs 0.1.0
  # https://github.com/r-lib/vctrs/pull/314
  register_s3_method("knitr", "knit_print", "pillar_squeezed_colonnade")
  register_s3_method("vctrs", "vec_ptype_abbr", "pillar_empty_col")
  register_s3_method("bit64", "pillar_shaft", "integer64", gen_pkg = "pillar")

  assign_crayon_styles()

  invisible()
}

register_s3_method <- function(pkg, generic, class, fun = NULL, gen_pkg = pkg) {
  stopifnot(is.character(pkg), length(pkg) == 1)
  stopifnot(is.character(generic), length(generic) == 1)
  stopifnot(is.character(class), length(class) == 1)
  if (is.null(fun)) {
    fun <- get(paste0(generic, ".", class), envir = parent.frame())
  }
  stopifnot(is.function(fun))

  if (pkg %in% loadedNamespaces()) {
    envir <- asNamespace(gen_pkg)
    registerS3method(generic, class, fun, envir = envir)
  }

  # Always register hook in case package is later unloaded & reloaded
  setHook(
    packageEvent(pkg, "onLoad"),
    function(...) {
      envir <- asNamespace(gen_pkg)
      registerS3method(generic, class, fun, envir = envir)
    }
  )
}
