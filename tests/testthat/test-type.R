# style_type --------------------------------------------------------------------------

test_that("`style_type()` snapshot test", {
  expect_snapshot({
    style_type()
  })
})


# new_pillar_type ---------------------------------------------------------------------

test_that("`new_pillar_type()` snapshot test", {
  expect_snapshot({
    new_pillar_type()
  })
})


# new_pillar_type_obj -----------------------------------------------------------------

test_that("`new_pillar_type_obj()` snapshot test", {
  expect_snapshot({
    new_pillar_type_obj()
  })
})


# get_pillar_type ---------------------------------------------------------------------

test_that("`get_pillar_type()` snapshot test", {
  expect_snapshot({
    get_pillar_type()
  })
})


# format ------------------------------------------------------------------------------

test_that("`format()` snapshot test", {
  expect_snapshot({
    format()
  })
})


# format_full_pillar_type -------------------------------------------------------------

test_that("`format_full_pillar_type()` snapshot test", {
  expect_snapshot({
    format_full_pillar_type()
  })
})


# format_type_sum ---------------------------------------------------------------------

test_that("`format_type_sum()` snapshot test", {
  expect_snapshot({
    format_type_sum()
  })
})


# type_sum ----------------------------------------------------------------------------

test_that("`type_sum()` snapshot test", {
  expect_snapshot({
    type_sum()
  })
})
