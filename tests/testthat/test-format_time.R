context("format_time")

test_that("output test", {
  expect_pillar_output(as.POSIXct("2017-07-28 18:04:35 +0200"), filename = "time.txt")
  expect_pillar_output(as.POSIXlt("2017-07-28 18:04:35 +0200"), filename = "time-posix.txt")
  withr::with_options(
    list(digits.secs = 4),
    expect_pillar_output(as.POSIXlt("2017-07-28 18:04:35 +0200"), filename = "time-digits-secs.txt")
  )

  testthat::skip_if(getRversion() < "3.3")
  expect_pillar_output(as.difftime(8:11, units = "secs"), filename = "difftime.txt")
})
