test_that("output test", {
  expect_snapshot(rowidformat(3))
  expect_snapshot(rowidformat(12, has_title_row = TRUE, has_star = TRUE))
})
