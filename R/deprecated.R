#' Deprecated functions
#' @keywords internal
#' @name deprecated
NULL

#' is_vector_s3()
#'
#' `is_vector_s3()` forwards to [vctrs::vec_is()].
#'
#' @section Lifecycle:
#' `is_vector_s3()` is soft-deprecated and no longer generic,
#'  use [vctrs::vec_is()] instead.
#'
#' @export
#' @rdname deprecated
is_vector_s3 <- function(x) {
  deprecate_stop("1.7.0", "pillar::is_vector_s3()", "vctrs::vec_is()")
  vec_is(x)
}
