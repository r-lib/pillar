col_title <- function(title, ...) {
  ret <- structure(
    list(
      title = title
    ),
    class = "col_title"
  )
  ret <- set_width(ret, if (is.null(title)) 0L else nchar(title, "width"))
  ret <- set_min_width(ret, 3L)
  ret
}

#' @export
format.col_title <- function(x, width, ...) {
  title <- x$title
  if (is.null(title)) return(character())

  desired_width <- get_width(x)
  if (width < desired_width) {
    title <- str_trunc(title, width)
  }

  crayon::bold(title)
}
