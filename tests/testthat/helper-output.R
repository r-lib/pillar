expect_colformat_output <- function(x, ..., filename) {
  x <- c(x, NA)
  if (is.numeric(x)) x <- c(x, -Inf, Inf)

  old <- options(crayon.enabled = TRUE, crayon.colors = 16L)
  crayon::num_colors(forget = TRUE)

  on.exit({
    options(old)
    crayon::num_colors(forget = TRUE)
  })

  expect_output_file(print(colformat(x, ...)), file.path("out", filename), update = TRUE)
}

show_output_in_terminal <- function() {
  system2("xterm", c("-e", shQuote("head tests/testthat/out/*; sleep 600")))
}
