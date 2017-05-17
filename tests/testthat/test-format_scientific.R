context("format_scientific")

format_scientific_bw <- function(x, ...) {
  old <- options(crayon.enabled = FALSE)
  on.exit(options(old))

  format_scientific(x, ...)
}

test_that("negative values displayed correct", {
  f <- as.vector(format_scientific_bw(-0.123, superscript = FALSE))
  expect_equal(f, "1.23e-1")
})

test_that("exponents correct in presence of NA", {
  f <- as.vector(format_scientific_bw(c(NA, 1e-5), superscript = FALSE))

  expect_equal(f, c("  NA", "1.00e-5"))
})
