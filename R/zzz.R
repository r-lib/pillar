# nocov start - zzz.R

#' @import rlang
#' @import ellipsis
#' @import lifecycle
#' @importFrom vctrs data_frame
#' @importFrom vctrs new_data_frame
#' @importFrom vctrs obj_print_data
#' @importFrom vctrs s3_register
#' @importFrom vctrs vec_arith
#' @importFrom vctrs vec_arith.numeric
#' @importFrom vctrs vec_arith_base
#' @importFrom vctrs vec_c
#' @importFrom vctrs vec_cast
#' @importFrom vctrs vec_cast.double
#' @importFrom vctrs vec_cast.integer
#' @importFrom vctrs vec_data
#' @importFrom vctrs vec_is
#' @importFrom vctrs vec_math
#' @importFrom vctrs vec_math_base
#' @importFrom vctrs vec_proxy_compare
#' @importFrom vctrs vec_proxy_order
#' @importFrom vctrs vec_ptype_abbr
#' @importFrom vctrs vec_ptype_full
#' @importFrom vctrs vec_ptype2
#' @importFrom vctrs vec_rbind
#' @importFrom vctrs vec_restore
#' @importFrom vctrs vec_size
NULL

# nolint start
.onLoad <- function(libname, pkgname) {
# nolint end
  # Can't use vctrs::s3_register() here with vctrs 0.1.0
  # https://github.com/r-lib/vctrs/pull/314
  register_s3_method("knitr", "knit_print", "pillar_squeezed_colonnade")
  register_s3_method("vctrs", "vec_ptype_abbr", "pillar_empty_col")
  register_s3_method("bit64", "pillar_shaft", "integer64", gen_pkg = "pillar")
  register_s3_method("survival", "pillar_shaft", "Surv", gen_pkg = "pillar")
  register_s3_method("survival", "type_sum", "Surv", gen_pkg = "pillar")
  register_s3_method("survival", "pillar_shaft", "Surv2", gen_pkg = "pillar")
  register_s3_method("survival", "type_sum", "Surv2", gen_pkg = "pillar")

  assign_crayon_styles()

  if (getRversion() < "3.3.0") {
    strrep <<- strrep_compat
  } else {
    rm("strrep", inherits = TRUE)
  }

  # Necessary to re-parse environment variable
  if (Sys.getenv("DEBUGME") != "" && requireNamespace("debugme", quietly = TRUE)) {
    # activate_debugme()
    debugme::debugme()
    debug_info()
  }

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
      # FIXME: Need to work around base R bug, as mentioned by Carson?
      registerS3method(generic, class, fun, envir = envir)
    }
  )
}

activate_debugme <- function(level = 2) {
  old_debugme <- remove_from_logging(get_debugme())
  old_debugme <- gsub("(.)$", "\\1,", old_debugme)

  my_debugme <- paste0(strrep("!", level), get_pkgname())

  set_debugme(paste0(old_debugme, my_debugme))
}

deactivate_debugme <- function() {
  new_debugme <- remove_from_logging(get_debugme())
  set_debugme(new_debugme)
}

get_debugme <- function() {
  Sys.getenv("DEBUGME")
}

set_debugme <- function(debugme) {
  Sys.setenv("DEBUGME" = debugme)
  message("DEBUGME=", debugme)
}

remove_from_logging <- function(spec) {
  spec <- gsub(paste0("!*", get_pkgname(), ""), "", spec)
  spec <- gsub(",,+", ",", spec)
  spec
}

debug_info <- function(pkgname) {
  "!DEBUG Loaded"
  "!!DEBUG Level 2"
  "!!!DEBUG Level 3"
  "!!!!DEBUG Level 4"
  "!!!!!DEBUG Level 5"
  "!!!!!!DEBUG Level 6"
}

get_pkgname <- function() {
  environmentName(topenv(environment()))
}
# nocov end
