#' Provide a succinct summary of an object
#'
#' @description
#' `type_sum()` gives a brief summary of object type. Objects that commonly
#' occur in a data frame should return a string with four or less characters.
#'
#' @param x an object to summarise. Generally only methods of atomic vectors
#'   and variants have been implemented.
#'
#' @export
type_sum <- function(x) UseMethod("type_sum")

#' @export
type_sum.ordered <- function(x) "ord"
#' @export
type_sum.factor <- function(x) "fctr"
#' @export
type_sum.POSIXct <- function(x) "dttm"
#' @export
type_sum.difftime <- function(x) "time"
#' @export
type_sum.Date <- function(x) "date"
#' @export
type_sum.data.frame <- function(x) class(x)[[1]]
#' @export
type_sum.tbl_df <- function(x) "tibble"
#' @export
type_sum.AsIs <- function(x) paste0("I(", type_sum(remove_as_is_class(x)), ")")
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

#' @description
#' `obj_sum()` also includes the size of the object if `is_vector_s3()`
#' is `TRUE`.
#'
#' @keywords internal
#' @examples
#' obj_sum(1:10)
#' obj_sum(matrix(1:10))
#' obj_sum(Sys.Date())
#' obj_sum(Sys.time())
#' obj_sum(mean)
#' @rdname type_sum
#' @export
obj_sum <- function(x) UseMethod("obj_sum")

#' @export
obj_sum.default <- function(x) {
  paste0(type_sum(x), size_sum(x))
}

#' @export
obj_sum.list <- function(x) {
  map_chr(x, obj_sum.default)
}

#' @export
obj_sum.POSIXlt <- function(x) {
  rep("POSIXlt", length(x))
}

#' @export
obj_sum.AsIs <- function(x) {
  paste0("I(", obj_sum(remove_as_is_class(x)), ")")
}

#' @export
#' @rdname type_sum
is_vector_s3 <- function(x) UseMethod("is_vector_s3")
#' @export
is_vector_s3.ordered <- function(x) TRUE
#' @export
is_vector_s3.factor <- function(x) TRUE
#' @export
is_vector_s3.Date <- function(x) TRUE
#' @export
is_vector_s3.POSIXct <- function(x) TRUE
#' @export
is_vector_s3.difftime <- function(x) TRUE
#' @export
is_vector_s3.data.frame <- function(x) TRUE
#' @export
is_vector_s3.default <- function(x) !is.object(x) && is_vector(x)
