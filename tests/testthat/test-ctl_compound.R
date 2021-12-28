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

test_that("compound pillars with zero columns (#402)", {
  expect_snapshot({
    tbl_format_setup(new_tbl(list(x = 1:2, y = matrix(integer(), ncol = 0, nrow = 2))))

    tbl_format_setup(new_tbl(list(x = 1:2, y = new_tbl(list(), n = 2L))))
  })
})
