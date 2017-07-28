col_title <- function(title, ...) {
  ret <- structure(
    list(
      title = title
    ),
    class = "col_title"
  )
  ret <- set_width(ret, if (is.null(title)) 0L else nchar(title, "width"))
  ret
}

#' @export
format.col_title <- function(x, ...) {
  if (is.null(x$title)) character()
  else crayon::bold(x$title)
}
