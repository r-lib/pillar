#' Format dimensions
#'
#' Multi-dimensional objects are formatted as `a x b x ...`, for vectors the
#' length is returned.
#'
#' @param x The object to format the dimensions for
#'
#' @export
#' @examples
#' dim_desc(1:10)
#' dim_desc(Titanic)
dim_desc <- function(x) {
  dim <- vctrs::vec_dim(x)
  format_dim <- map_chr(dim, big_mark)
  format_dim[is.na(dim)] <- "??"
  paste0(format_dim, collapse = spaces_around(mult_sign()))
}

size_sum <- function(x) {
  if (!is_vector_s3(x)) return("")

  paste0(" [", dim_desc(x), "]")
}

mult_sign <- function() {
  symbol$times
}

spaces_around <- function(x) {
  paste0(" ", x, " ")
}

# function for the thousand separator,
# returns "," unless it's used for the decimal point, in which case returns "."
big_mark <- function(x, ...) {
  mark <- if (identical(getOption("OutDec"), ",")) "." else ","
  formatC(x, big.mark = mark, ...)
}
