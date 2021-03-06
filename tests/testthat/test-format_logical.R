test_that("output test", {
  expect_snapshot({pillar(add_special(c(TRUE, FALSE)))})
})
