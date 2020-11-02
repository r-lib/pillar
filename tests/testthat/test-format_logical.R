test_that("output test", {
  expect_pillar_output(xp = add_special(c(TRUE, FALSE)), filename = "logical.txt")
})
