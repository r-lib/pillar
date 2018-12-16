context("format_scientific")

format_scientific_bw <- function(x, ...) {
  without_color({
    ret <- pillar_shaft(x, ...)
    # Hack: Pretend decimal format requires 100 characters
    ret$dec <- set_width(ret$dec, 100)
    ret <- set_width(ret, 100)
    ret <- set_min_width(ret, min(get_min_widths(ret)))
    format(ret, width = get_min_width(ret))
  })
}

test_that("negative values displayed correct", {
  f <- format_scientific_bw(-0.123)
  expect_equal(unname(format(f)), "-1.23e-1")
})

test_that("exponents correct in presence of NA", {
  f <- format_scientific_bw(c(NA, 1e-5))
  expect_equal(unname(format(f, justify = "right")), c("NA      ", " 1.00e-5"))
})

test_that("output test", {
  expect_pillar_output(10^c(-9, -6, 3, 9), width = 10, filename = "scientific.txt")
  expect_pillar_output((10^c(3, 9, 15, 22)) * c(-1, 1), width = 10, filename = "scientific-short-neg.txt")
  expect_pillar_output(1.25 * 10^(-309:-319), width = 10, filename = "scientific-tiny.txt")
})

expect_scientific_width <- function(x) {
  get_formatted_width <- function(x) {
    get_max_extent(assemble_decimal(x))
  }

  expect_equal(
    get_formatted_width(format_scientific(!!x, 3)),
    get_width(format_scientific(x, 3))
  )
}

test_that("width computation", {
  expect_scientific_width(c(1, 10, 100))
  expect_scientific_width(c(0, NA))
  expect_scientific_width(c(1, NaN))
  expect_scientific_width(c(-12, 3))
  expect_scientific_width(c(-1, 23))
  expect_scientific_width(c(1.01, 10.1))
  expect_scientific_width(c(1.01, -10.1))
  expect_scientific_width(c(NA_integer_, NA_integer_))
  expect_scientific_width(c(1e5, 1e15, 1e150))
  expect_scientific_width(c(1e5, -1e15, 1e150))
  expect_scientific_width(c(1e5, 1e15, -1e150))
  expect_scientific_width(c(1e5, NaN))
  expect_scientific_width(c(1e5, 1.23e15, 1.23e150))
  expect_scientific_width(c(1e5, 1.234e15, 1.234e150))
  expect_scientific_width(c(1.2, -Inf))
  expect_scientific_width(c(1, Inf))
  expect_scientific_width(c(1e-5, 1e15))
})
