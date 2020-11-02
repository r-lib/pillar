test_that("output test", {
  expect_pillar_output(xf = pillar(factor(c(letters[1:5], NA))), filename = "factor.txt")
  expect_pillar_output(xf = pillar(ordered(c(letters[1:5], NA))), filename = "ordered.txt")
  expect_pillar_output(xf = pillar(factor("a\nb")), filename = "escaped.txt")
})
