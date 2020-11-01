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
#' @inheritParams testthat::expect_output_file
#' @param object An object to check.
#' @param ... Unused.
#' @param width The width of the output.
#' @param crayon Color the output?
#' @keywords internal
#' @export
#' @examples
#' file <- tempfile("pillar", fileext = ".txt")
#'
#' # The pillar is constructed after options have been set
#' # (need two runs because reference file doesn't exist during the first run)
#' suppressWarnings(tryCatch(
#'   expect_known_display(pillar(1:3), file, crayon = FALSE),
#'   expectation_failure = function(e) {}
#' ))
#' expect_known_display(pillar(1:3), file, crayon = FALSE)
#'
#' # Good: Use tidyeval to defer construction
#' pillar_quo <- rlang::quo(pillar(1:3))
#' expect_known_display(!!pillar_quo, file, crayon = FALSE)
#'
#' \dontrun{
#' # Bad: Options set in the active session may affect the display
#' integer_pillar <- pillar(1:3)
#' expect_known_display(integer_pillar, file, crayon = FALSE)
#' }
expect_known_display <- function(object, file, ..., width = 80L, crayon = TRUE) {

  object <- enquo(object)

  if (crayon) {
    old_crayon <- options(crayon.enabled = TRUE, crayon.colors = 16L)
    crayon::num_colors(forget = TRUE)
    has_color(forget = TRUE)
  } else {
    old_crayon <- options(crayon.enabled = FALSE)
    crayon::num_colors(forget = TRUE)
    has_color(forget = TRUE)
  }

  old_unicode <- options(cli.unicode = l10n_info()$`UTF-8`)

  on.exit({
    options(old_crayon)
    options(old_unicode)
    crayon::num_colors(forget = TRUE)
    has_color(forget = TRUE)
  })

  testthat::expect_known_output(print(eval_tidy(object)), file, update = TRUE, width = width)
}
