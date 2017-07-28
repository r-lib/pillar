context("format_time")

test_that("output test", {
  expect_colformat_output(as.POSIXct("2017-07-28 18:04:35 +0200"), filename = "time.txt")
})
