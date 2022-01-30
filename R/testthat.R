# nocov start - expect_known_display()
#' Test helpers
#'
#' @description
#' `r lifecycle::badge("superseded")`
#'
#' Expectation for packages that implement a data type with pillar support.
#' Allows storing the desired result in a file,
#' and comparing the output with the file contents.
#' Note that this expectation sets options that affect the formatting of the
#' pillar, see examples for usage.
#'
#' @section Life cycle:
#' This function is deprecated in favor of [testthat::expect_snapshot()].
#' If your package uses the third edition of testthat, do not use this function.
#'
#' @inheritParams testthat::expect_known_output
#' @param object An object to check.
#' @param ... Unused.
#' @param width The width of the output.
#' @param crayon Color the output?
#' @keywords internal
#' @export
expect_known_display <- function(object, file, ..., width = 80L, crayon = TRUE) {
  lifecycle::deprecate_stop(
    "1.6.5", "pillar::expect_known_display()",
    "testthat::expect_snapshot()"
  )

  object <- enquo(object)

  if (crayon) {
    old_cli <- options(cli.num_ansi_colors = 16L)
  } else {
    old_cli <- options(cli.num_ansi_colors = 1L)
  }
  num_colors(forget = TRUE)

  old_unicode <- options(cli.unicode = l10n_info()$`UTF-8`)

  on.exit({
    options(old_cli)
    options(old_unicode)
    num_colors(forget = TRUE)
  })

  testthat::local_edition(2)
  testthat::expect_known_output(print(eval_tidy(object)), file, update = TRUE, width = width)
}
# nocov end
