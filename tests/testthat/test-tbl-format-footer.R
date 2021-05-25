test_that("tbl_format_footer() results", {
  local_colors()

  expect_snapshot({
    tbl_format_footer(tbl_format_setup(new_tbl(as.list(set_names(letters))), width = 80))

    tbl_format_footer(tbl_format_setup(new_tbl(as.list(set_names(letters))), width = 30))
  })
})

test_that("wrapping column names with spaces in the footer", {
  expect_snapshot({
    tbl_format_footer(tbl_format_setup(
      new_tbl(list2(!!!set_names(letters), !!paste(letters, collapse = " ") := 2)),
      width = 70
    ))
  })
})

test_that("overflow", {
  expect_snapshot({
    tbl_format_footer(tbl_format_setup(
      new_tbl(list2(!!!set_names(rep(letters, 6)))),
      width = 70
    ))
  })
})
