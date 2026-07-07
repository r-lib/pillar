# char --------------------------------------------------------------------------------

test_that("`char()` snapshot test", {
  expect_snapshot({
    char()
  })
})


# vec_ptype_full.pillar_char ----------------------------------------------------------

test_that("`vec_ptype_full.pillar_char()` snapshot test", {
  expect_snapshot({
    vec_ptype_full()
  })
})


# vec_ptype_abbr.pillar_char ----------------------------------------------------------

test_that("`vec_ptype_abbr.pillar_char()` snapshot test", {
  expect_snapshot({
    vec_ptype_abbr()
  })
})


# format.pillar_char ------------------------------------------------------------------

test_that("`format.pillar_char()` snapshot test", {
  expect_snapshot({
    format()
  })
})


# set_char_opts -----------------------------------------------------------------------

test_that("`set_char_opts()` snapshot test", {
  expect_snapshot({
    set_char_opts()
  })
})


# format.pillar_char_attr -------------------------------------------------------------

test_that("`format.pillar_char_attr()` snapshot test", {
  expect_snapshot({
    format()
  })
})


# vec_ptype2.pillar_char.pillar_char --------------------------------------------------

test_that("`vec_ptype2.pillar_char.pillar_char()` snapshot test", {
  expect_snapshot({
    vec_ptype2.pillar_char()
  })
})


# vec_ptype2.pillar_char.character ----------------------------------------------------

test_that("`vec_ptype2.pillar_char.character()` snapshot test", {
  expect_snapshot({
    vec_ptype2.pillar_char()
  })
})


# vec_ptype2.character.pillar_char ----------------------------------------------------

test_that("`vec_ptype2.character.pillar_char()` snapshot test", {
  expect_snapshot({
    vec_ptype2.character()
  })
})


# vec_cast.pillar_char.pillar_char ----------------------------------------------------

test_that("`vec_cast.pillar_char.pillar_char()` snapshot test", {
  expect_snapshot({
    vec_cast.pillar_char()
  })
})


# vec_cast.character.pillar_char ------------------------------------------------------

test_that("`vec_cast.character.pillar_char()` snapshot test", {
  expect_snapshot({
    vec_cast.character()
  })
})


# vec_cast.pillar_char.character ------------------------------------------------------

test_that("`vec_cast.pillar_char.character()` snapshot test", {
  expect_snapshot({
    vec_cast.pillar_char()
  })
})
