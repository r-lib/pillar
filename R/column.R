new_column <- function(row, width = NULL, align = NULL) {
  structure(
    row,
    width = width,
    align = align,
    class = "column"
  )
}

#' @export
print.column <- function(x, ...) {
  cat_line(paste(x, collapse = "\n"))
}
