test_that("colonnade_compute_tiered_col_widths_df()", {
  expect_snapshot({
    colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 4))
    colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 3))
    colonnade_compute_tiered_col_widths_df(rep(30, 4), rep(15, 4), rep(60, 2))
    colonnade_compute_tiered_col_widths_df(rep(30, 5), rep(15, 5), rep(60, 3))
    colonnade_compute_tiered_col_widths_df(rep(30, 5), rep(15, 5), rep(60, 4))
    colonnade_compute_tiered_col_widths_df(rep(30, 10), rep(15, 10), rep(60, 5))
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
  })
})
