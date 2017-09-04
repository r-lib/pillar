context("format_list")

test_that("output test", {
  expect_colformat_output(xp = as.list(1:3), filename = "list-each.txt")
  expect_colformat_output(xp = list(1:3, NULL), filename = "list-null.txt")
  expect_colformat_output(list(1:3), filename = "list-na.txt")
  expect_colformat_output(xp = list(iris), width = 10, filename = "list-narrow.txt")
})
