context("format_character")

test_that("output test", {
  expect_pillar_output(letters[1:5], filename = "letters.txt")
  expect_pillar_output(paste(letters, collapse = ""), filename = "letters-long.txt")
  expect_pillar_output(paste(letters, collapse = ""), width = 10, filename = "letters-long-10.txt")
  expect_pillar_output(paste(letters, collapse = ""), width = 3, filename = "letters-long-03.txt")
  expect_pillar_output("\u6210\u4ea4\u65e5", title = "\u6210\u4ea4", filename = "deal1.txt")
  expect_pillar_output("\u6210\u4ea4", title = "\u6210\u4ea4\u65e5", filename = "deal2.txt")
  expect_pillar_output(1L, title = "\u6210\u4ea4\u65e5", filename = "deal3.txt")
  expect_pillar_output(c("", " ", " a", "a ", "a b"), width = 5, filename = "spaces.txt")
})
