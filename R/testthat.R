# nocov start - expect_known_display()
#' Test helpers
#'
#' Use [testthat::expect_snapshot()] instead of `expect_known_display()`.
#'
#' @inheritParams testthat::expect_known_output
#' @param object An object to check.
#' @param ... Unused.
#' @param width The width of the output.
#' @param crayon Color the output?
#' @rdname deprecated
#' @export
expect_known_display <- function(object, file, ..., width = 80L, crayon = TRUE) {
  lifecycle::deprecate_stop(
    "1.6.5", "pillar::expect_known_display()",
    "testthat::expect_snapshot()"
  )
}
# nocov end
