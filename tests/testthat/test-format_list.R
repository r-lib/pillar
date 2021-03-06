test_that("output test", {
  expect_snapshot({
    pillar(as.list(1:3))
    pillar(list(1:3, NULL))
    pillar(add_special(list(1:3)))
    pillar(list(iris), width = 10)
  })
})
