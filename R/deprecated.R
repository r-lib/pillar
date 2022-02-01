#' Deprecated functions
#' @description
#' `r lifecycle::badge("deprecated")`
#' @keywords internal
#' @name deprecated
NULL

#' is_vector_s3()
#'
#' Use [vctrs::vec_is()] instead of `is_vector_s3()`.
#'
#' @export
#' @rdname deprecated
is_vector_s3 <- function(x) {
  deprecate_stop("1.7.0", "pillar::is_vector_s3()", "vctrs::vec_is()")
}
