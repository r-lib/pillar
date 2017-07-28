new_column <- function(row, width = NULL, align = NULL) {
  ret <- structure(
    row,
    align = align,
    class = "column"
  )
  ret <- set_width(ret, width)
  ret
}

#' @export
print.column <- function(x, ...) {
  cat_line(paste(x, collapse = "\n"))
}
