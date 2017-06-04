context("format_decimal")

format_decimal_bw <- function(x, ...) {
  old <- options(crayon.enabled = FALSE)
  on.exit(options(old))

  format_decimal(x, ...)
}

test_that("compute_rhs_digits() works", {
  x <- c(NA, NaN, Inf, 0, 1, 100, 1e10, 0.001, 1e-20)
  expect_equal(compute_rhs_digits(x, 3), c(0, 0, 0, 0, 2, 0, 0, 5, 22))
  expect_equal(compute_rhs_digits(x, 7), c(0, 0, 0, 0, 6, 3, 0, 9, 26))
})

test_that("compute_exp() does not return NA for positive input", {
  x <- c(NA, NaN, Inf, 0, 1, 100, 0.001)
  expect_equal(compute_exp(x), c(Inf, Inf, Inf, Inf, 0, 2, -3))
})

test_that("special values appear in LHS", {
  x <- c(NA, NaN, Inf)
  f <- format_decimal_bw(x)

  expect_equal(format_lhs(f), format(x))
})

test_that("all-positive values get nothing in neg", {
  f <- format_decimal_bw(c(0, Inf))
  expect_equal(format_neg(f), c("", ""))
})

test_that("negative values get - in neg", {
  f <- format_decimal_bw(c(-Inf, Inf))
  expect_equal(format_neg(f), c("-", " "))
})

test_that("trailing zeros pad to sigfigs", {
  f <- format_decimal_bw(c(1.5, 0.5))
  expect_equal(format_lhs(f), c("1", "0"))
  expect_equal(format_rhs(f), c("50 ", "500"))
})

test_that("sigfigs split between lhs and rhs", {
  x <- c(1.50, 10.50, 100.50)
  f <- format_decimal_bw(x)

  expect_equal(format_lhs(f), format(trunc(x)))
  expect_equal(format_rhs(f), c("50", "5 ", "  "))
})

test_that("leading 0 added to rhs", {
  f <- format_decimal_bw(1.01)

  expect_equal(format_lhs(f), "1")
  expect_equal(format_rhs(f), "01")
})

test_that("values rounded up as expect", {
  f <- format_decimal_bw(c(18.9, 18.99))

  expect_equal(format_lhs(f), c("18", "19"))
  expect_equal(format_rhs(f), c("9", "0"))
})

test_that("values on LHS not rounded", {
  f <- format_decimal_bw(123456)
  expect_equal(format_lhs(f), "123456")
})

test_that("output test", {
  expect_colformat_output((10 ^ (-3:4)) * c(-1, 1), filename = "basic.txt")
  expect_colformat_output(1.23456 * 10 ^ (-3:3), filename = "decimal-insignif.txt")
})
