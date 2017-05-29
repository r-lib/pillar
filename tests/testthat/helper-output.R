expect_colformat_output <- function(x, ..., filename) {
  old <- options(crayon.enabled = TRUE)
  on.exit(options(old))

  expect_output_file(print(colformat(x, ...)), file.path("out", filename), update = TRUE)
}

show_output_in_terminal <- function() {
  system2("xterm", c("-e", shQuote("head tests/testthat/out/*; sleep 600")))
}
