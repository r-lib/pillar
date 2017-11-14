#' Test helpers
#'
#' Helper functions for packages that implement their own pillar.
#' `expect_pillar_output()` is an expectation that allows storing the
#' desired result in a file, and comparing the output with the file contents.
#'
#' @inheritParams testthat::expect_output
#' @param ... Unused.
#' @param crayon Color the output?
#' @param width Output width.
#' @export
expect_known_display <- function(object, file, ...,
                                 crayon = TRUE, width = 80L) {
  if (crayon) {
    old <- options(crayon.enabled = TRUE, crayon.colors = 16L, width = width)
    crayon::num_colors(forget = TRUE)
  } else {
    old <- options(crayon.enabled = FALSE, width = width)
  }

  on.exit({
    options(old)
    crayon::num_colors(forget = TRUE)
  })

  # FIXME: Pass width argument here with testthat >= 2.0.0
  testthat::expect_output_file(print(object), file, update = TRUE)
}
