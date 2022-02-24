test_that("can output durations", {
  skip_if_not_installed("lubridate")
  expect_snapshot({
    pillar(lubridate::as.duration(1:3))
  })
})
