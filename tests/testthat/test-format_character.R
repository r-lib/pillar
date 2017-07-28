context("format_character")

test_that("output test", {
  expect_colformat_output(letters[1:5], filename = "letters.txt")
  expect_colformat_output(paste(letters, collapse = ""), filename = "letters-long.txt")
  expect_colformat_output(paste(letters, collapse = ""), width = 10, filename = "letters-long-10")
  expect_colformat_output(paste(letters, collapse = ""), width = 3, filename = "letters-long-3")
})
