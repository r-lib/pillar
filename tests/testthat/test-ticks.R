context("ticks")

test_that("title ticks without width restriction", {
  expect_equal(tick_if_needed("proper_title"), "proper_title")
  expect_equal(tick_if_needed("needs ticks"), "`needs ticks`")
  expect_equal(tick_if_needed("'ticks'"), "`'ticks'`")
  expect_equal(tick_if_needed("embedded\nnewline"), "`embedded\\nnewline`")
})

test_that("title ticks and width", {
  expect_equal(format_title("proper_title", 15), "proper_title")
  expect_equal(format_title("proper_title", 12), "proper_title")
  expect_equal(format_title("proper_title", 10), continue("proper_ti"))
  expect_equal(format_title("`a b`", 6), "`a b`")
  expect_equal(format_title("`a b`", 5), "`a b`")
  expect_equal(format_title("`a b`", 4), continue("`a "))
  expect_equal(format_title("`a b`", 3), continue("`a"))
})
