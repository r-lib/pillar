test_that("integer output will use scientific if necessary", {
  x <- 10000000L + 1:3
  expect_snapshot(pillar(add_special(x), width = 6))
  expect_snapshot(pillar(add_special(x), width = 7))
  expect_snapshot(pillar(add_special(x), width = 8))
  expect_snapshot(pillar(add_special(x), width = 9))
})
