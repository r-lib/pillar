#' @export
type_sum.vctrs_unspecified <- function(x) {
  # FIXME: Remove when vec_ptype_abbr.vctrs_unspecified() becomes available
  "???"
}

#' @export
pillar_shaft.vctrs_vctr <- function(x, ...) {
  align <- if (is_character(x)) "left" else "right"
  new_pillar_shaft_simple(format(x), align = align)
}

#' @export
type_sum.vctrs_vctr <- function(x) {
  vctrs::vec_ptype_abbr(x)
}

#' @export
pillar_shaft.vctrs_list_of <- function(x, ...) {
  out <- paste0("[", map_chr(x, pillar::dim_desc), "]")

  new_pillar_shaft_simple(out, align = "right")
}
