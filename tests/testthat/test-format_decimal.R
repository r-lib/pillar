split_decimal_3 <- function(x, sigfig = 3, ...) {
  split_decimal(x, sigfig = sigfig, ...)
}

test_that("compute_rhs_digits() works", {
  x <- c(NA, NaN, Inf, 0, 1, 100, 1e10, 0.001, 1e-14)
  expect_equal(
    compute_rhs_digits(x, 3),
    c(0, 0, 0, 0, 0, 0, 0, 3, 14)
  )
  expect_equal(
    compute_rhs_digits(x + 1e-8, 3),
    c(0, 0, 0, 8, 2, 0, 0, 5, 10)
  )
  expect_equal(
    compute_rhs_digits(x, 7),
    c(0, 0, 0, 0, 0, 0, 0, 3, 14)
  )
  expect_equal(
    compute_rhs_digits(x, 7 + 1e-8),
    c(0, 0, 0, 0, 6, 4, 0, 9, 20)
  )
})

test_that("compute_exp() returns NA if not relevant", {
  x <- c(NA, NaN, Inf, 0, 1, 100, 0.001)
  expect_equal(compute_exp(x, 6), c(NA, NA, NA, NA, 0, 2, -3))
})

test_that("compute_exp() respectis significant digits", {
  x <- c(0.9, 0.99, 0.999, 0.99949, 0.9995, 0.99951, 0.9999, 0.99999, 0.999999)
  expect_equal(compute_exp(x, 3), c(-1, -1, -1, -1, 0, 0, 0, 0, 0))
})

test_that("special values appear in LHS", {
  x <- c(NA, NaN, Inf)
  f <- split_decimal_3(x)

  expect_equal(format_lhs(f), format(x, trim = TRUE))
})

test_that("all-positive values get nothing in neg", {
  f <- split_decimal_3(c(0, Inf))
  expect_equal(format_neg(f), c("", ""))
})

test_that("negative values get - in neg", {
  f <- split_decimal_3(c(-Inf, Inf))
  expect_equal(format_neg(f), c("-", ""))
})

test_that("trailing zeros removed if whole decimal fraction", {
  f <- split_decimal_3(c(1.5, 0.5))
  expect_equal(format_lhs(f), c("1", "0"))
  expect_equal(format_rhs(f), c("5", "5"))
})

test_that("trailing zeros pad to sigfigs if data not shown", {
  f <- split_decimal_3(c(1.5, 0.5) + 1e-6)
  expect_equal(format_lhs(f), c("1", "0"))
  expect_equal(format_rhs(f), c("50 ", "500"))
})

test_that("sigfigs split between lhs and rhs", {
  x <- c(1.43, 10.43, 100.43)
  f <- split_decimal_3(x)

  expect_equal(format_lhs(f), as.character(trunc(x)))
  expect_equal(format_rhs(f), c("43", "4 ", "  "))
})

test_that("leading 0 added to rhs", {
  f <- split_decimal_3(1.01)

  expect_equal(format_lhs(f), "1")
  expect_equal(format_rhs(f), "01")
})

test_that("values rounded up as expect", {
  f <- split_decimal_3(c(18.9, 18.99))

  expect_equal(format_lhs(f), c("18", "19"))
  expect_equal(format_rhs(f), c("9", "0"))
})

test_that("values on LHS not rounded", {
  f <- format_lhs(split_decimal(123456, 3))
  expect_equal(f, "123456")
})

test_that("corner cases", {
  expect_equal(format_lhs(split_decimal_3(numeric())), character())
})

test_that("output test", {
  expect_snapshot({
    pillar(add_special((10^(-3:4)) * c(-1, 1)))
    pillar(add_special(1.23456 * 10^(-3:3)))
  })
  withr::with_options(
    list(pillar.sigfig = 5),
    expect_snapshot({
      pillar(add_special((10^(c(-2:4, 0L))) * c(-1, 1)))
    })
  )
  withr::with_options(
    list(pillar.sigfig = 7),
    expect_snapshot({
      pillar(add_special((10^(0:-5)) * c(-1, 1)), width = 20)
    })
  )
  expect_snapshot({
    pillar(add_special((10^(4:-4)) + 1e-6), width = 20)
  })
})

expect_decimal_width <- function(x) {
  get_formatted_width <- function(x) {
    get_max_extent(assemble_decimal(x))
  }

  expect_equal(
    get_formatted_width(split_decimal(!!x, 3)),
    !!get_width(split_decimal(x, 3))
  )
}

test_that("width computation", {
  expect_decimal_width(c(1, 10, 100))
  expect_decimal_width(c(0, NA))
  expect_decimal_width(c(1, NaN))
  expect_decimal_width(c(-12, 3))
  expect_decimal_width(c(-1, 23))
  expect_decimal_width(c(1.01, 10.1))
  expect_decimal_width(c(1.01, -10.1))
  expect_decimal_width(c(NA_integer_, NA_integer_))
  expect_decimal_width(c(1.234, 1.2345))
  expect_decimal_width(c(1.2, -Inf))
  expect_decimal_width(c(1, Inf))
})

test_that("9.99...95 (tidyverse/tibble#1648)", {
  x <- num(0x1.3fd70a3d70a3dp+3, sigfig = 3)
  expect_snapshot({
    format(x)
  })

  x <- num(0x1.3ffff583a53b8p+3, sigfig = 6)
  expect_snapshot({
    format(x)
  })

  x <- num(0x1.3ffffef39085ep+3, sigfig = 7)
  expect_snapshot({
    format(x)
  })

  x <- num(0x1.3ffffffff920cp+3, sigfig = 8)
  expect_snapshot({
    format(x)
  })

  x <- num(0x1.3ffffffffffe3p+3, sigfig = 14)
  expect_snapshot({
    format(x)
  })

  x <- num(0x1.3fffffffffffep+3, sigfig = 16)
  expect_snapshot({
    format(x)
  })

  x <- num(0x1.3ffffffffffffp+3, sigfig = 16)
  expect_snapshot({
    format(x)
  })
})
