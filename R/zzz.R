# nocov start - zzz.R

#' @import rlang
#' @import lifecycle
#' @importFrom glue as_glue
#' @importFrom vctrs data_frame
#' @importFrom vctrs new_data_frame
#' @importFrom vctrs new_list_of
#' @importFrom vctrs new_vctr
#' @importFrom vctrs obj_print_footer
#' @importFrom vctrs obj_print_header
#' @importFrom vctrs obj_print_data
#' @importFrom vctrs unspecified
#' @importFrom vctrs vec_arith
#' @importFrom vctrs vec_arith.numeric
#' @importFrom vctrs vec_arith_base
#' @importFrom vctrs vec_assert
#' @importFrom vctrs vec_c
#' @importFrom vctrs vec_cast
#' @importFrom vctrs vec_cast.double
#' @importFrom vctrs vec_cast.integer
#' @importFrom vctrs vec_data
#' @importFrom vctrs vec_is
#' @importFrom vctrs vec_math
#' @importFrom vctrs vec_math_base
#' @importFrom vctrs vec_proxy
#' @importFrom vctrs vec_proxy_compare
#' @importFrom vctrs vec_proxy_order
#' @importFrom vctrs vec_ptype_abbr
#' @importFrom vctrs vec_ptype_full
#' @importFrom vctrs vec_ptype2
#' @importFrom vctrs vec_rbind
#' @importFrom vctrs vec_restore
#' @importFrom vctrs vec_size
#' @importFrom vctrs vec_slice
#' @importFrom cli symbol ansi_strwrap
NULL

# nolint start
.onLoad <- function(libname, pkgname) {
  # nolint end
  # Can't use vctrs::s3_register() here with vctrs 0.1.0
  # https://github.com/r-lib/vctrs/pull/314
  s3_register("scales::rescale", "pillar_num")
  s3_register("ggplot2::scale_type", "pillar_num")
  s3_register("knitr::knit_print", "pillar_squeezed_colonnade")

  assign_crayon_styles()

  if (getRversion() < "3.3.0") {
    strrep <<- strrep_compat
  } else {
    rm("strrep", inherits = TRUE)
  }

  # Necessary to re-parse environment variable
  if (Sys.getenv("DEBUGME") != "" && rlang::is_installed("debugme")) {
    # activate_debugme()
    debugme::debugme()
    debug_info()
  }

  invisible()
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
