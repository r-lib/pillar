col_type <- function(x, ...) {
  type <- type_sum(x)
  structure(
    list(
      type = type,
      min_width = 3L,
      width = nchar(type, type = "width") + 2L
    ),
    class = "col_type"
  )
}

format.col_type <- function(x, ...) {
  paste0("<", x$type, ">")
}

#' Provide a succinct summary of an object
#'
#' @description
#' `type_sum()` gives a brief summary of object type. Objects that commonly
#' occur in a data frame should return a string with four or less characters.
#' @export
type_sum <- function(x) UseMethod("type_sum")

#' @export
type_sum.ordered <- function(x) "ord"
#' @export
type_sum.factor <- function(x) "fctr"
#' @export
type_sum.POSIXt <- function(x) "dttm"
#' @export
type_sum.difftime <- function(x) "time"
#' @export
type_sum.Date <- function(x) "date"
#' @export
type_sum.data.frame <- function(x) class(x)[[1]]
#' @export
type_sum.tbl_df <- function(x) "tibble"
#' @export
type_sum.default <- function(x) {
  if (!is.object(x)) {
    switch(typeof(x),
      logical = "lgl",
      integer = "int",
      double = "dbl",
      character = "chr",
      complex = "cplx",
      closure = "fun",
      environment = "env",
      typeof(x)
    )
  } else if (!isS4(x)) {
    paste0("S3: ", class(x)[[1]])
  } else {
    paste0("S4: ", methods::is(x)[[1]])
  }
}
