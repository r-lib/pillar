#' Deprecated functions
#' @keywords internal
#' @name deprecated
NULL

#' is_vector_s3()
#'
#' `is_vector_s3()` returns `TRUE` if an object represents an S3 vector.
#' The default implementation forwards to [vctrs::vec_is()].
#'
#' @section Lifecycle:
#' `is_vector_s3()` is soft-deprecated, because [vctrs::vec_is()]
#' provides the same functionality based on a robust framework.
#' The generic will remain available for a while but is no longer used.
#' Users and implementers are encouraged to ensure that `vctrs::vec_is()`
#' is `TRUE` for their class.
#'
#' @export
#' @rdname deprecated
is_vector_s3 <- function(x) {
  deprecate_soft("1.4.4", "pillar::is_vector_s3()", "vctrs::vec_is()")

  UseMethod("is_vector_s3")
}

#' @export
is_vector_s3.default <- function(x) {
  vec_is(x)
}
