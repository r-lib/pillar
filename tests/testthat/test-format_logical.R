test_that("output test", {
  expect_pillar_output(xf = pillar(add_special(c(TRUE, FALSE))), filename = "logical.txt")
})
