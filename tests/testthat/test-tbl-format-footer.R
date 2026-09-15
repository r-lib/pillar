# tbl_format_footer -------------------------------------------------------------------

test_that("`tbl_format_footer()` snapshot test", {
  expect_snapshot({
    tbl_format_footer()
  })
})


# tbl_format_footer.pillar_tbl_format_setup -------------------------------------------

test_that("`tbl_format_footer.pillar_tbl_format_setup()` snapshot test", {
  expect_snapshot({
    tbl_format_footer()
  })
})


# tbl_format_footer.tbl ---------------------------------------------------------------

test_that("`tbl_format_footer.tbl()` snapshot test", {
  expect_snapshot({
    tbl_format_footer()
  })
})


# format_footer -----------------------------------------------------------------------

test_that("`format_footer()` snapshot test", {
  expect_snapshot({
    format_footer()
  })
})


# format_footer_extra_rows ------------------------------------------------------------

test_that("`format_footer_extra_rows()` snapshot test", {
  expect_snapshot({
    format_footer_extra_rows()
  })
})


# format_footer_abbrev_cols -----------------------------------------------------------

test_that("`format_footer_abbrev_cols()` snapshot test", {
  expect_snapshot({
    format_footer_abbrev_cols()
  })
})


# format_footer_extra_cols ------------------------------------------------------------

test_that("`format_footer_extra_cols()` snapshot test", {
  expect_snapshot({
    format_footer_extra_cols()
  })
})


# format_extra_vars -------------------------------------------------------------------

test_that("`format_extra_vars()` snapshot test", {
  expect_snapshot({
    format_extra_vars()
  })
})


# format_footer_advice ----------------------------------------------------------------

test_that("`format_footer_advice()` snapshot test", {
  expect_snapshot({
    format_footer_advice()
  })
})


# wrap_footer_bullet ------------------------------------------------------------------

test_that("`wrap_footer_bullet()` snapshot test", {
  expect_snapshot({
    wrap_footer_bullet()
  })
})


# wrap_footer_bullet_one --------------------------------------------------------------

test_that("`wrap_footer_bullet_one()` snapshot test", {
  expect_snapshot({
    wrap_footer_bullet_one()
  })
})


# get_footer_tier_widths_bullets ------------------------------------------------------

test_that("`get_footer_tier_widths_bullets()` snapshot test", {
  expect_snapshot({
    get_footer_tier_widths_bullets()
  })
})


# pre_dots ----------------------------------------------------------------------------

test_that("`pre_dots()` snapshot test", {
  expect_snapshot({
    pre_dots()
  })
})


# collapse ----------------------------------------------------------------------------

test_that("`collapse()` snapshot test", {
  expect_snapshot({
    collapse()
  })
})


# split_lines -------------------------------------------------------------------------

test_that("`split_lines()` snapshot test", {
  expect_snapshot({
    split_lines()
  })
})


# enum_collapse -----------------------------------------------------------------------

test_that("`enum_collapse()` snapshot test", {
  expect_snapshot({
    enum_collapse()
  })
})


# Legacy tests ------------------------------------------------------------------------

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

  expect_identical(
    local({
      local_pillar_option_max_footer_lines(3)
      tbl_format_footer(tbl_format_setup(new_footer_tbl("")))
    }),
    tbl_format_footer(
      tbl_format_setup(new_footer_tbl(""), max_footer_lines = 3)
    )
  )

  expect_snapshot({
    tbl_format_footer(
      tbl_format_setup(new_footer_tbl(""))
    )
    tbl_format_footer(
      tbl_format_setup(new_footer_tbl("prefix_"))
    )
    tbl_format_footer(
      tbl_format_setup(new_footer_tbl("a_very_long_prefix_"))
    )

    tbl_format_footer(
      tbl_format_setup(new_footer_tbl(""), max_footer_lines = 3)
    )
    tbl_format_footer(
      tbl_format_setup(new_footer_tbl("prefix_"), max_footer_lines = 3)
    )
    tbl_format_footer(
      tbl_format_setup(new_footer_tbl("a_very_long_prefix_"), max_footer_lines = 3)
    )

    tbl_format_footer(
      tbl_format_setup(new_footer_tbl(""), max_footer_lines = Inf)
    )
    tbl_format_footer(
      tbl_format_setup(new_footer_tbl("prefix_"), max_footer_lines = Inf)
    )
    tbl_format_footer(
      tbl_format_setup(new_footer_tbl("a_very_long_prefix_"), max_footer_lines = Inf)
    )
  })
})

test_that("pillar.advice option (#575)", {
  local_options(pillar.advice = TRUE)
  expect_snapshot({
    tbl_format_footer(tbl_format_setup(new_tbl(as.list(set_names(letters))), width = 80))
  })
})

test_that("colnames() hint (#622)", {
  local_options(pillar.advice = TRUE)
  letters2 <- do.call(paste0, expand.grid(letters, letters))
  expect_snapshot({
    tbl_format_footer(tbl_format_setup(new_tbl(as.list(set_names(letters2))), width = 80))
  })
})

test_that("advice when interactive (#575)", {
  local_interactive()
  expect_snapshot({
    tbl_format_footer(tbl_format_setup(new_tbl(as.list(set_names(letters))), width = 80))
    tbl_format_footer(tbl_format_setup(new_tbl(list(a = 1:30)), width = 80))
  })
})
