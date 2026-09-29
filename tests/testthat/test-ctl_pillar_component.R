# new_pillar_component ----------------------------------------------------------------

test_that("`new_pillar_component()` snapshot test", {
  expect_snapshot({
    new_pillar_component()
  })
})


# pillar_component --------------------------------------------------------------------

test_that("`pillar_component()` snapshot test", {
  expect_snapshot({
    pillar_component()
  })
})


# pillar_get_width --------------------------------------------------------------------

test_that("`pillar_get_width()` snapshot test", {
  expect_snapshot({
    pillar_get_width()
  })
})


# pillar_get_min_width ----------------------------------------------------------------

test_that("`pillar_get_min_width()` snapshot test", {
  expect_snapshot({
    pillar_get_min_width()
  })
})


# pillar_format_parts_2 ---------------------------------------------------------------

test_that("`pillar_format_parts_2()` snapshot test", {
  expect_snapshot({
    pillar_format_parts_2()
  })
})
