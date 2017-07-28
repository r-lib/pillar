context("title")

test_that("with and without title", {
  expect_colformat_output(10 ^ (1:6), filename = "title-none.txt", crayon = FALSE)
  expect_colformat_output(10 ^ (1:6), title = "crayon", filename = "title-crayon.txt")
  expect_colformat_output(10 ^ (1:6), title = "short", filename = "title-short.txt", crayon = FALSE)
  expect_colformat_output(10 ^ (1:6), title = "somewhat longer", filename = "title-longer.txt", crayon = FALSE)
  expect_colformat_output(10 ^ (1:6), title = "much too long", width = 7, filename = "title-too-long.txt", crayon = FALSE)
})
