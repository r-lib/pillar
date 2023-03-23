# colonnade ---------------------------------------------------------------------------

test_that("`colonnade()` snapshot test", {
  expect_snapshot({
    colonnade()
  })
})


# flatten_colonnade -------------------------------------------------------------------

test_that("`flatten_colonnade()` snapshot test", {
  expect_snapshot({
    flatten_colonnade()
  })
})


# flatten_column ----------------------------------------------------------------------

test_that("`flatten_column()` snapshot test", {
  expect_snapshot({
    flatten_column()
  })
})


# flatten_df_column -------------------------------------------------------------------

test_that("`flatten_df_column()` snapshot test", {
  expect_snapshot({
    flatten_df_column()
  })
})


# flatten_matrix_column ---------------------------------------------------------------

test_that("`flatten_matrix_column()` snapshot test", {
  expect_snapshot({
    flatten_matrix_column()
  })
})


# new_empty_col_sentinel --------------------------------------------------------------

test_that("`new_empty_col_sentinel()` snapshot test", {
  expect_snapshot({
    new_empty_col_sentinel()
  })
})


# squeeze -----------------------------------------------------------------------------

test_that("`squeeze()` snapshot test", {
  expect_snapshot({
    squeeze()
  })
})


# squeeze_impl ------------------------------------------------------------------------

test_that("`squeeze_impl()` snapshot test", {
  expect_snapshot({
    squeeze_impl()
  })
})


# get_rowid_from_colonnade ------------------------------------------------------------

test_that("`get_rowid_from_colonnade()` snapshot test", {
  expect_snapshot({
    get_rowid_from_colonnade()
  })
})


# new_colonnade_squeezed --------------------------------------------------------------

test_that("`new_colonnade_squeezed()` snapshot test", {
  expect_snapshot({
    new_colonnade_squeezed()
  })
})


# format_colonnade_tier ---------------------------------------------------------------

test_that("`format_colonnade_tier()` snapshot test", {
  expect_snapshot({
    format_colonnade_tier()
  })
})


# format ------------------------------------------------------------------------------

test_that("`format()` snapshot test", {
  expect_snapshot({
    format()
  })
})


# print -------------------------------------------------------------------------------

test_that("`print()` snapshot test", {
  expect_snapshot({
    print()
  })
})


# knit_print --------------------------------------------------------------------------

test_that("`knit_print()` snapshot test", {
  expect_snapshot({
    knit_print()
  })
})


# knit_print_squeezed_colonnade_tier --------------------------------------------------

test_that("`knit_print_squeezed_colonnade_tier()` snapshot test", {
  expect_snapshot({
    knit_print_squeezed_colonnade_tier()
  })
})


# extra_cols --------------------------------------------------------------------------

test_that("`extra_cols()` snapshot test", {
  expect_snapshot({
    extra_cols()
  })
})


# extra_cols_impl ---------------------------------------------------------------------

test_that("`extra_cols_impl()` snapshot test", {
  expect_snapshot({
    extra_cols_impl()
  })
})


# colonnade_get_width -----------------------------------------------------------------

test_that("`colonnade_get_width()` snapshot test", {
  expect_snapshot({
    colonnade_get_width()
  })
})


# get_tier_widths ---------------------------------------------------------------------

test_that("`get_tier_widths()` snapshot test", {
  expect_snapshot({
    get_tier_widths()
  })
})


# colonnade_compute_tiered_col_widths -------------------------------------------------

test_that("`colonnade_compute_tiered_col_widths()` snapshot test", {
  expect_snapshot({
    colonnade_compute_tiered_col_widths()
  })
})


# colonnade_compute_tiered_col_widths_df ----------------------------------------------

test_that("`colonnade_compute_tiered_col_widths_df()` snapshot test", {
  expect_snapshot({
    colonnade_compute_tiered_col_widths_df()
  })
})


# combine_pillar_distributions --------------------------------------------------------

test_that("`combine_pillar_distributions()` snapshot test", {
  expect_snapshot({
    combine_pillar_distributions()
  })
})


# distribute_pillars ------------------------------------------------------------------

test_that("`distribute_pillars()` snapshot test", {
  expect_snapshot({
    distribute_pillars()
  })
})


# distribute_pillars_rev --------------------------------------------------------------

test_that("`distribute_pillars_rev()` snapshot test", {
  expect_snapshot({
    distribute_pillars_rev()
  })
})


# all_pillars_fit ---------------------------------------------------------------------

test_that("`all_pillars_fit()` snapshot test", {
  expect_snapshot({
    all_pillars_fit()
  })
})


# colonnade_distribute_space_df -------------------------------------------------------

test_that("`colonnade_distribute_space_df()` snapshot test", {
  expect_snapshot({
    colonnade_distribute_space_df()
  })
})


# colonnade_distribute_space ----------------------------------------------------------

test_that("`colonnade_distribute_space()` snapshot test", {
  expect_snapshot({
    colonnade_distribute_space()
  })
})


# Legacy tests ------------------------------------------------------------------------

test_that("colonnade_compute_tiered_col_widths_df()", {
  expect_snapshot({
    colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 4))
    colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 3))
    colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 2))
    colonnade_compute_tiered_col_widths_df(rep(30, 5), rep(15, 5), rep(60, 3))
    colonnade_compute_tiered_col_widths_df(rep(30, 5), rep(15, 5), rep(60, 4))
    colonnade_compute_tiered_col_widths_df(rep(30, 10), rep(15, 10), rep(60, 5))
    colonnade_compute_tiered_col_widths_df(c(6, 5, 10), c(5, 5, 10), 21)
    colonnade_compute_tiered_col_widths_df(c(6, 5, 10), c(5, 5, 10), 22)
    colonnade_compute_tiered_col_widths_df(c(6, 5, 10), c(5, 5, 10), 23)
    colonnade_compute_tiered_col_widths_df(c(5, 6, 10), c(5, 5, 10), 21)
    colonnade_compute_tiered_col_widths_df(c(5, 6, 10), c(5, 5, 10), 22)
    colonnade_compute_tiered_col_widths_df(c(5, 6, 10), c(5, 5, 10), 23)
  })
})

test_that("distribute_pillars()", {
  expect_snapshot({
    distribute_pillars(1:3, 10)
    distribute_pillars(1:3, 5)
    distribute_pillars(1:3, c(5, 5))
    distribute_pillars(1:5, 7:9)
    distribute_pillars(3:5, 8:10)
    distribute_pillars(5:3, 9:8)
    distribute_pillars(c(5, 5), c(2, 8, 8))
    distribute_pillars(c(5, 5), c(8, 8, 2))
  })
})

test_that("distribute_pillars_rev()", {
  expect_snapshot({
    distribute_pillars_rev(1:3, 10)
    distribute_pillars_rev(1:3, 5)
    distribute_pillars_rev(1:3, c(5, 5))
    distribute_pillars_rev(1:5, 7:9)
    distribute_pillars_rev(3:5, 8:10)
    distribute_pillars_rev(5:3, 9:8)
    distribute_pillars_rev(c(5, 5), c(8, 8, 2))
    distribute_pillars_rev(c(5, 5), c(2, 8, 8))
  })
})
