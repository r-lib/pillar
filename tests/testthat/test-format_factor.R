test_that("output test", {
  expect_snapshot({pillar(factor(c(letters[1:5], NA)))})
  expect_snapshot({pillar(ordered(c(letters[1:5], NA)))})
  expect_snapshot({pillar(factor("a\nb"))})
})
