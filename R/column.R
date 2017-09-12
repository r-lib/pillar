new_column <- function(row, width = NULL, align = NULL) {
  ret <- structure(
    row,
    align = align,
    class = c("pillar_column", "pillar_vertical")
  )
  ret <- set_width(ret, width)
  ret
}

new_vertical <- function(row, ..., extra_class = NULL) {
  ret <- structure(
    row,
    ...,
    class = c(extra_class, "pillar_vertical")
  )
  ret
}

#' @export
print.pillar_vertical <- function(x, ...) {
  if (length(x) > 0) {
    cat_line(paste(x, collapse = "\n"))
  }
  invisible(x)
}
