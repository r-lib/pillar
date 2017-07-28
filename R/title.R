col_title <- function(title, ...) {
  structure(
    list(
      title = title,
      width = if (is.null(title)) 0L else nchar(title, "width")
    ),
    class = "col_title"
  )
}

#' @export
format.col_title <- function(x, ...) {
  if (is.null(x$title)) character()
  else crayon::bold(x$title)
}
