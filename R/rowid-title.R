rif_title <- function(has_title, ...) {
  ret <- structure(
    list(
      has_title = has_title
    ),
    class = "pillar_rif_title"
  )

  ret <- set_width(ret, 0L)
  ret
}

#' @export
format.pillar_rif_title <- function(x, width, ...) {
  if (!x$has_title) {
    character()
  } else {
    ""
  }
}
