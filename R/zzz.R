# nocov start - zzz.R

#' @import rlang
#' @import ellipsis
#' @import lifecycle
NULL

# nolint start
.onLoad <- function(libname, pkgname) {
# nolint end
  s3_register("knitr::knit_print", "pillar_squeezed_colonnade")
  s3_register("vctrs::vec_ptype_abbr", "pillar_empty_col")
  s3_register("bit64::pillar_shaft", "integer64")
  s3_register("survival::pillar_shaft", "Surv")
  s3_register("survival::pillar_shaft", "Surv2")

  assign_crayon_styles()

  if (getRversion() < "3.3.0") {
    strrep <<- strrep_compat
  } else {
    rm("strrep", inherits = TRUE)
  }

  # Necessary to re-parse environment variable
  if (requireNamespace("debugme", quietly = TRUE)) {
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
