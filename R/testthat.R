#' Test helpers
#'
#' Expectation for packages that implement a data type with pillar support.
#' Allows storing the desired result in a file,
#' and comparing the output with the file contents.
#' Note that this expectation sets options that affect the formatting of the
#' pillar, see examples for usage.
#'
#' @inheritParams testthat::expect_output_file
#' @param ... Unused.
#' @param width The width of the output.
#' @param crayon Color the output?
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
    old <- options(crayon.enabled = TRUE, crayon.colors = 16L, width = width)
    has_color(forget = TRUE)
    crayon::num_colors(forget = TRUE)
    assign_style_grey()
  } else {
    old <- options(crayon.enabled = FALSE, width = width)
    has_color(forget = TRUE)
    crayon::num_colors(forget = TRUE)
  }

  on.exit({
    options(old)
    has_color(forget = TRUE)
    crayon::num_colors(forget = TRUE)
    assign_style_grey()
  })

  # FIXME: Use expect_known_output() for testthat >= 2.0.0, and avoid
  # setting the width in the options above
  if (utils::packageVersion("testthat") <= "1.0.2") {
    testthat::expect_output_file(print(eval_tidy(object)), file, update = TRUE)
  } else {
    testthat::expect_output_file(print(eval_tidy(object)), file, update = TRUE, width = width)
  }
}
