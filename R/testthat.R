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
