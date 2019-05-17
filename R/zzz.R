#' @import rlang
NULL

.onAttach <- function(...) {
  crayon::num_colors(forget = TRUE)
}

.onLoad <- function(libname, pkgname) {
  # Can't use vctrs::s3_register() here with vctrs 0.1.0
  # https://github.com/r-lib/vctrs/pull/314
  register_s3_method("knitr", "knit_print", "pillar_squeezed_colonnade")
  register_s3_method("vctrs", "vec_ptype_abbr", "pillar_empty_col")

  assign_crayon_styles()

  if (getRversion() < "3.3.0") {
    strrep <<- strrep_compat
  } else {
    rm("strrep", inherits = TRUE)
  }

  if (utils::packageVersion("vctrs") <= "0.1.0") {
    vec_is <<- compat_vec_is
  }

  compat_lengths()

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
