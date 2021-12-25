test_that("compound pillars and multiple tiers", {
  local_options(width = 80)

  x <- new_tbl(list(a = 3, b = new_tbl(list(x = 1, y = 2))))

  expect_snapshot({
    options(width = 15)
    tbl_format_setup(x, width = 30)

    options(width = 10)
    tbl_format_setup(x, width = 30)
  })
})
