style_star <- function(x) {
  style_hint(x)
}

rif_type <- function(has_star, ...) {
  star <- if (has_star) "*" else ""
  ret <- structure(
    list(
      star = star
    ),
    class = "rif_type"
  )
  ret <- set_width(ret, 1L)
  ret
}

#' @export
format.rif_type <- function(x, width = NULL, ...) {
  style_star(x$star)
}
