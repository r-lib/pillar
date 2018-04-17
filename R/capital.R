pillar_capital <- function(x, title = NULL, ...) {
  title <- new_pillar_title(title, ...)
  type <- new_pillar_type(x, ...)
  new_pillar_capital(title, type)
}

new_pillar_capital <- function(title, type) {
  ret <- structure(
    list(
      title = title,
      type = type
    ),
    class = "pillar_capital"
  )

  ret <- set_width(ret, max(get_width(title), get_width(type)))
  ret <- set_min_width(ret, max(get_min_width(title), get_min_width(type)))
  ret
}

#' @export
format.pillar_capital <- function(x, width, ...) {
  c(
    format(x$title, width = width, ...),
    format(x$type, width = width, ...)
  )
}
