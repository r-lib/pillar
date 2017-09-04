style_type <- function(x) {
  crayon::underline(style_subtle(x))
}

cf_type <- function(x, ...) {
  type <- type_sum(x)
  ret <- structure(
    list(
      type = type
    ),
    class = "cf_type"
  )
  ret <- set_width(ret, width = nchar(type, type = "width") + 2L)
  ret <- set_min_width(ret, 5L)
  ret
}

#' @export
format.cf_type <- function(x, width = NULL, ...) {
  if (is.null(width) || width >= get_width(x)) type <- x$type
  else type <- crayon::col_substr(x$type, 1, width - 2)
  # Style is applied later on because we want a continuous underline over the
  # whole width and over all columns in multicolformat()
  paste0("<", type, ">")
}
