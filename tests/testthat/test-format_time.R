test_that("output test", {
  expect_snapshot({
    pillar(add_special(as.POSIXct("2017-07-28 18:04:35 +0200")))
  })
  expect_snapshot({
    pillar(add_special(as.POSIXlt("2017-07-28 18:04:35 +0200")))
  })
  withr::with_options(
    list(digits.secs = 4),
    expect_snapshot({
      pillar(add_special(as.POSIXlt("2017-07-28 18:04:35 +0200")))
    })
  )

  testthat::skip_if(getRversion() < "3.3")
  expect_snapshot({
    pillar(add_special(as.difftime(8:11, units = "secs")))
  })
})
