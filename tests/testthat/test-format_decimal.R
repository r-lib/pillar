context("format_decimal")

format_decimal_bw <- function(x, ...) {
  old <- options(crayon.enabled = FALSE)
  on.exit(options(old))

  format_decimal(x, ...)
}

test_that("special values appear in LHS", {
  x <- c(NA, NaN, Inf)
  f <- format_decimal_bw(x)

  expect_equal(f$lhs, format(x))
})

test_that("negative values get - in neg", {
  f <- format_decimal_bw(c(-Inf, Inf))
  expect_equal(f$neg, c("-", " "))
})

test_that("trailing zeros pad to sigfigs", {
  f <- format_decimal_bw(c(1.5, 0.5))
  expect_equal(f$lhs, c("1", "0"))
  expect_equal(f$rhs, c("50 ", "500"))
})

test_that("sigfigs split between lhs and rhs", {
  x <- c(1.50, 10.50, 100.50)
  f <- format_decimal_bw(x)

  expect_equal(f$lhs, format(trunc(x)))
  expect_equal(f$rhs, c("50", "5 ", "  "))
})

test_that("leading 0 added to rhs", {
  f <- format_decimal_bw(1.01)

  expect_equal(f$lhs, "1")
  expect_equal(f$rhs, "01")
})

test_that("values rounded up as expect", {
  f <- format_decimal_bw(c(18.9, 18.99))

  expect_equal(f$lhs, c("18", "19"))
  expect_equal(f$rhs, c("9", "0"))
})

test_that("values on LHS not rounded", {
  f <- format_decimal_bw(123456)
  expect_equal(f$lhs, "123456")
})
