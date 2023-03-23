# rowidformat -------------------------------------------------------------------------

test_that("`rowidformat()` snapshot test", {
  expect_snapshot({
    rowidformat()
  })
})


# new_pillar_1e -----------------------------------------------------------------------

test_that("`new_pillar_1e()` snapshot test", {
  expect_snapshot({
    new_pillar_1e()
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


# pillar_get_width_1e -----------------------------------------------------------------

test_that("`pillar_get_width_1e()` snapshot test", {
  expect_snapshot({
    pillar_get_width_1e()
  })
})


# pillar_format_parts -----------------------------------------------------------------

test_that("`pillar_format_parts()` snapshot test", {
  expect_snapshot({
    pillar_format_parts()
  })
})


# format_abbrev -----------------------------------------------------------------------

test_that("`format_abbrev()` snapshot test", {
  expect_snapshot({
    format_abbrev()
  })
})


# format_full_pillar_title ------------------------------------------------------------

test_that("`format_full_pillar_title()` snapshot test", {
  expect_snapshot({
    format_full_pillar_title()
  })
})
