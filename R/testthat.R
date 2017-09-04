#' Test helpers
#'
#' Unexported functions for packages that implement their own colformat.
#'
#' @param x An object to be formatted.
#' @param ... Passed on to [colformat()] if `xf` is left at its default.
#' @param filename File name that contains the desired output.
#' @param xp Pass a value here instead of `x` if you want to omit appending
#'   `NA` and `Inf` values.
#' @param xf Pass the result of a [colformat()] call here for full control.
#' @param crayon Color the output?
expect_colformat_output <- function(x, ..., filename,
                                    xp = add_special(x), xf = colformat(xp, ...),
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

#' @rdname expect_colformat_output
add_special <- function(x) {
  x <- c(x, NA)
  if (is.numeric(x) && is.double(x)) {
    x <- c(x, -Inf, Inf)
  }
  x
}
