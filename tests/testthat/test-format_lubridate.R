test_that("can output durations", {
  v <- lubridate::as.duration(1:3)
  x <- pillar(v)
  expect_pillar_output(xf = pillar(v), filename = "lubridate.txt")
})
