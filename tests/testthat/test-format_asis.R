test_that("output test", {
  expect_snapshot({
    pillar(I(1:3))
    pillar(I(list(1, 1:2, 1:3)))
  })
})
