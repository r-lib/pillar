new_column <- function(row, width = NULL, align = NULL) {
  ret <- structure(
    row,
    align = align,
    class = c("cf_column", "cf_vertical")
  )
  ret <- set_width(ret, width)
  ret
}

new_vertical <- function(row, ..., extra_class = NULL) {
  ret <- structure(
    row,
    ...,
    class = c(extra_class, "cf_vertical")
  )
  ret
}

#' @export
print.cf_vertical <- function(x, ...) {
  cat_line(paste(x, collapse = "\n"))
}
