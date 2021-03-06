test_that("output test", {
  expect_snapshot({
    pillar(factor(c(letters[1:5], NA)))
    pillar(ordered(c(letters[1:5], NA)))
    pillar(factor("a\nb"))
  })
})
