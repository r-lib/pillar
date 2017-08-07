new_column <- function(row, width = NULL, align = NULL) {
  ret <- structure(
    row,
    align = align,
    class = c("cf_column", "cf_vertical")
  )
  ret <- set_width(ret, width)
  ret
}

new_vertical <- function(row) {
  ret <- structure(
    row,
    class = "cf_vertical"
  )
  ret
}

#' @export
print.cf_vertical <- function(x, ...) {
  cat_line(paste(x, collapse = "\n"))
}
