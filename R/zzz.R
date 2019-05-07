#' @import rlang
NULL

.onAttach <- function(...) {
  crayon::num_colors(forget = TRUE)
}

.onLoad <- function(libname, pkgname) {
  vctrs::s3_register("knitr::knit_print", "pillar_squeezed_colonnade")
  vctrs::s3_register("vctrs::vec_ptype_abbr", "pillar_empty_col")

  assign_crayon_styles()

  if (getRversion() < "3.3.0") {
    strrep <<- strrep_compat
  } else {
    rm("strrep", inherits = TRUE)
  }

  if (utils::packageVersion("vctrs") > "0.1.0") {
    vec_is <<- get("vec_is", asNamespace("vctrs"))
  } else {
    vec_is <<- compat_vec_is
  }

  compat_lengths()

  invisible()
}
