test_that("output test", {
  expect_snapshot({
    pillar(as.list(1:3))
  })
  expect_snapshot({
    pillar(list(1:3, NULL))
  })
  expect_snapshot({
    pillar(add_special(list(1:3)))
  })
  expect_snapshot({
    pillar(list(iris), width = 10)
  })
})
