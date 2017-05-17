context("format_scientific")

format_scientific_bw <- function(x, ...) {
  old <- options(crayon.enabled = FALSE)
  on.exit(options(old))

  format_scentific(x, ...)
}

test_that("negative values displayed correct", {
  f <- as.vector(format_scientific_bw(-0.123, superscript = FALSE))
  expect_equal(f, "1.23e-1")
})
