col_title <- function(title, ...) {
  structure(
    list(title = title),
    class = "col_title"
  )
}

#' @export
format.col_title <- function(x, ...) {
  if (is.null(x$title)) character()
  else crayon::bold(x$title)
}
