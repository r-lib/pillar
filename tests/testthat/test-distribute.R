context("test-distribute")

test_that("space distribution never removes space, and distributes space from left to right based on need", {
  expect_equal(
    colonnade_distribute_space(c(5, 6, 6), c(11, 8, 8), 18),
    c(0, 0, 0)
  )

  expect_equal(
    colonnade_distribute_space(c(5, 6, 6), c(11, 8, 8), 19),
    c(0, 0, 0)
  )

  expect_equal(
    colonnade_distribute_space(c(5, 6, 6), c(11, 8, 8), 20),
    c(1, 0, 0)
  )

  expect_equal(
    colonnade_distribute_space(c(5, 6, 6), c(11, 8, 8), 21),
    c(2, 0, 0)
  )

  expect_equal(
    colonnade_distribute_space(c(5, 6, 6), c(11, 8, 8), 22),
    c(2, 1, 0)
  )
})
