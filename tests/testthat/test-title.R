# new_pillar_title --------------------------------------------------------------------

test_that("`new_pillar_title()` snapshot test", {
  expect_snapshot({
    new_pillar_title()
  })
})


# get_min_title_width -----------------------------------------------------------------

test_that("`get_min_title_width()` snapshot test", {
  expect_snapshot({
    get_min_title_width()
  })
})


# format.pillar_title -----------------------------------------------------------------

test_that("`format.pillar_title()` snapshot test", {
  expect_snapshot({
    format()
  })
})


# Legacy tests ------------------------------------------------------------------------

test_that("with and without title", {
  expect_snapshot({
    pillar(add_special(10^(1:6)))
    pillar(add_special(10^(1:6)), title = "crayon")
    pillar(add_special(10^(1:6)), title = "short")
    pillar(add_special(10^(1:6)), title = "somewhat_wider")
    pillar(add_special(10^(1:6)), title = "exactly_fifteen")
    pillar(add_special(10^(1:6)), title = "absolutely_breaking_all_sensible_boundaries", width = 18)
  })
})

test_that("ellipsis has width 1", {
  expect_equal(get_extent(get_ellipsis()), 1)
})
