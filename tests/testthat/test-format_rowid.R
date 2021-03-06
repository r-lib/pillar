test_that("output test", {
  expect_snapshot({
    rowidformat(3)
    rowidformat(12, has_title_row = TRUE, has_star = TRUE)
  })
})
