context("decimal_format")

decimal_bw <- function(x, ...) {
  old <- options(crayon.enabled = FALSE)
  on.exit(options(old))

  decimal_format(x, ...)
}

test_that("special values appear in LHS", {
  x <- c(NA, NaN, Inf)
  f <- decimal_bw(x)

  expect_equal(f$lhs, format(x))
})

test_that("negative values get - in neg", {
  f <- decimal_bw(c(-Inf, Inf))
  expect_equal(f$neg, c("-", " "))
})

test_that("trailing zeros pad to sigfigs", {
  f <- decimal_bw(c(1.5, 0.5))
  expect_equal(f$lhs, c("1", "0"))
  expect_equal(f$rhs, c("50", "500"))
})
