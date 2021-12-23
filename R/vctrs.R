#' @export
pillar_shaft.vctrs_unspecified <- function(x, ...) {
  new_pillar_shaft_simple(rep(".", vec_size(x)), align = "right")
}

#' @export
pillar_shaft.vctrs_vctr <- function(x, ...) {
  align <- if (is_character(x)) "left" else "right"
  new_pillar_shaft_simple(format(x), align = align)
}

#' @export
type_sum.vctrs_vctr <- function(x) {
  pillar_attr <- attr(x, "pillar", exact = TRUE)

  label <- pillar_attr$label
  if (!is.null(label)) {
    return(I(label))
  }

  vec_ptype_abbr(x)
}

#' @export
pillar_shaft.vctrs_list_of <- function(x, ...) {
  out <- style_subtle(map_chr(x, size_sum))

  new_pillar_shaft_simple(out, align = "right")
}
