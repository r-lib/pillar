style_star <- function(x) {
  style_hint(x)
}

rif_type <- function(has_star, ...) {
  star <- if (has_star) "*" else ""
  ret <- structure(
    list(
      star = star
    ),
    class = "pillar_rif_type"
  )
  ret <- set_width(ret, 1L)
  ret
}

#' @export
format.pillar_rif_type <- function(x, width = NULL, ...) {
  style_star(x$star)
}
