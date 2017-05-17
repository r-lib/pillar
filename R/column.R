new_column <- function(row, title, width, align = "right") {
  row <- col_align(row, width = width, align = align)
  title <- col_align(title, width = width, align = align)

  structure(
    row,
    title = title,
    width = width,
    class = "column"
  )
}

#' @export
print.column <- function(x, ...) {
  cat_line(crayon::bold(attr(x, "title")))
  cat_line(paste(x, collapse = "\n"))
}
