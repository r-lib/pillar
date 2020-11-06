test_that("tbl_format_header() results", {
  expect_snapshot({
    tbl_format_header(tbl_format_setup(as_tbl(mtcars), width = 80))

    tbl_format_header(tbl_format_setup(as_unknown_rows(trees), width = 30, n = 10))

    "Narrow"
    tbl_format_header(tbl_format_setup(as_tbl(mtcars), width = 10))

    "Custom tbl_sum()"
    tbl_format_header(tbl_format_setup(new_foo_tbl(), width = 30))
  })
})
