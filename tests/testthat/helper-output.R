expect_colformat_output <- function(x, ..., filename, xp = add_special(x), crayon = TRUE) {
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

  expect_output_file(print(colformat(xp, ...)), file.path("out", filename), update = TRUE)
}

add_special <- function(x) {
  x <- c(x, NA)
  if (is.numeric(x) && is.double(x)) x <- c(x, -Inf, Inf)
  x
}

show_output_in_terminal <- function() {
  system2("xterm", c("-e", shQuote("head tests/testthat/out/*; sleep 600")))
}
