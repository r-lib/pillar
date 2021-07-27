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

test_that("max_footer_lines option", {
  new_footer_tbl <- function(prefix) {
    names <- outer(letters[1:2], letters, paste0)
    x <- setNames(as.list(seq_along(names)), paste0(prefix, names))
    new_tbl(x)
  }

  expect_snapshot({
    new_footer_tbl("")
    new_footer_tbl("prefix_")
    new_footer_tbl("a_very_long_prefix_")

    set_pillar_option_max_footer_lines(3)
    new_footer_tbl("")
    new_footer_tbl("prefix_")
    new_footer_tbl("a_very_long_prefix_")

    set_pillar_option_max_footer_lines(Inf)
    new_footer_tbl("")
    new_footer_tbl("prefix_")
    new_footer_tbl("a_very_long_prefix_")
  })
})
