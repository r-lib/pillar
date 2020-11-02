test_that("output test", {
  expect_snapshot(pillar(add_special(as.Date("2017-07-28"))))
})
