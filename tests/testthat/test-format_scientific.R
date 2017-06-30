context("format_scientific")

format_scientific_bw <- function(x, ...) {
  old <- options(crayon.enabled = FALSE)
  on.exit(options(old))

  format_scientific(x, ...)
}

test_that("negative values displayed correct", {
  f <- format_scientific_bw(-0.123, superscript = FALSE)
  expect_equal(unname(format(format(f))), "-1.23e-1")
})

test_that("exponents correct in presence of NA", {
  f <- format_scientific_bw(c(NA, 1e-5), superscript = FALSE)
  expect_equal(unname(format(format(f))), c("NA      ", " 1.00e-5"))
})

test_that("output test", {
  expect_colformat_output(10 ^ c(-9, -6, 3, 9), filename = "scientific.txt")
  expect_colformat_output((10 ^ c(3, 9, 15, 22)) * c(-1, 1), filename = "scientific-short-neg.txt")
})
