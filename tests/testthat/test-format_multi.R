test_that("sanity check (1)", {
  expect_false(crayon::has_color())
  expect_equal(crayon::num_colors(), 1)
  expect_false(has_color())
  expect_equal(num_colors(), 1)

  expect_snapshot({
    crayon::has_color()
    crayon::num_colors()
    has_color()
    num_colors()
    style_na("NA")
  })
})
