test_that("output test", {
  expect_pillar_output(xf = pillar(I(1:3)), filename = "asis-number.txt")
  expect_pillar_output(xf = pillar(I(list(1, 1:2, 1:3))), filename = "asis-list.txt")
})
