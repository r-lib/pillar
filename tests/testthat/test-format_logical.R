context("format_logical")

test_that("output test", {
  expect_colformat_output(c(TRUE, FALSE), filename = "logical.txt")
})
