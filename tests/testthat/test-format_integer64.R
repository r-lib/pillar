test_that("integer64 output will use scientific if necessary", {
  skip_if_not_installed("bit64")

  x <- bit64::as.integer64(1e12) + 1:3
  expect_pillar_output(x, width = 6, filename = "integer64-06.txt")
  expect_pillar_output(x, width = 7, filename = "integer64-07.txt")
  expect_pillar_output(x, width = 8, filename = "integer64-08.txt")
  expect_pillar_output(x, width = 9, filename = "integer64-09.txt")
  expect_pillar_output(x, width = 10, filename = "integer64-10.txt")
  expect_pillar_output(x, width = 11, filename = "integer64-11.txt")
  expect_pillar_output(x, width = 12, filename = "integer64-12.txt")
  expect_pillar_output(x, width = 13, filename = "integer64-13.txt")
  expect_pillar_output(x, width = 14, filename = "integer64-14.txt")
})
