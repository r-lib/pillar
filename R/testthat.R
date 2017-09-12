#' Test helpers
#'
#' Helper functions for packages that implement their own pillar.
#' `expect_pillar_output()` is an expectation that allows storing the
#' desired result in a file, and comparing the output with the file contents.
#'
#' @param x An object to be formatted.
#' @param ... Passed on to [pillar()] if `xf` is left at its default.
#' @param filename File name that contains the desired output.
#' @param xp Pass a value here instead of `x` if you want to omit appending
#'   `NA` and `Inf` values.
#' @param xf Pass the result of a [pillar()] call here for full control.
#' @param crayon Color the output?
#' @export
expect_pillar_output <- function(x, ..., filename,
                                    xp = add_special(x), xf = pillar(xp, ...),
                                    crayon = TRUE) {
  if (crayon) {
    old <- options(crayon.enabled = TRUE, crayon.colors = 16L)
    crayon::num_colors(forget = TRUE)
  } else {
    old <- options(crayon.enabled = FALSE)
  }

  on.exit({
    options(old)
    crayon::num_colors(forget = TRUE)
  })

  expect_output_file(print(xf), file.path("out", filename), update = TRUE)
}

#' `add_special()` is not exported, and used only for initializing default
#' values to `expect_pillar_output()`.
#' @rdname expect_pillar_output
add_special <- function(x) {
  x <- c(x, NA)
  if (is.numeric(x) && is.double(x)) {
    x <- c(x, -Inf, Inf)
  }
  x
}
