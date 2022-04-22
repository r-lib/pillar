test_that("title ticks without width restriction", {
  expect_equal(tick_if_needed("proper_title"), "proper_title")
  expect_equal(tick_if_needed("needs ticks"), "`needs ticks`")
  expect_equal(tick_if_needed("'ticks'"), "`'ticks'`")
  expect_equal(tick_if_needed("embedded\nnewline"), "`embedded\\nnewline`")
})

test_that("title ticks and width with footnote", {
  skip_if(!cli::is_utf8_output())

  expect_snapshot({
    format_title("proper_title", 15)
    format_title("proper_title", 12)
    format_title("proper_title", 10)
    format_title("`a b`", 6)
    format_title("`a b`", 5)
    format_title("`a b`", 4)
    format_title("`a b`", 3)
  })
})

test_that("title ticks and width", {
  expect_snapshot({
    format_title("proper_title", 15, footnote = FALSE)
    format_title("proper_title", 12, footnote = FALSE)
    format_title("proper_title", 10, footnote = FALSE)
    format_title("`a b`", 6, footnote = FALSE)
    format_title("`a b`", 5, footnote = FALSE)
    format_title("`a b`", 4, footnote = FALSE)
    format_title("`a b`", 3, footnote = FALSE)
    format_title("`a b`", 3, footnote = FALSE)
  })
})
