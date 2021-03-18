test_that("can output durations", {
  expect_snapshot({
    pillar(lubridate::as.duration(1:3))
  })
})
