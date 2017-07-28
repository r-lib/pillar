new_column <- function(row, width, align = "right") {
  row <- col_align(row, width = width, align = align)

  structure(
    row,
    width = width,
    class = "column"
  )
}

#' @export
print.column <- function(x, ...) {
  cat_line(paste(x, collapse = "\n"))
}
