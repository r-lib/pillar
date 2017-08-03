style_type <- function(x) {
  style_subtle(x)
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
  else type <- substr(x$type, 1, width - 2)
  style_type(paste0("<", type, ">"))
}
