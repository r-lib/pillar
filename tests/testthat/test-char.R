# char --------------------------------------------------------------------------------

test_that("`char()` snapshot test", {
  expect_snapshot({
    char()
  })
})


# vec_ptype_full ----------------------------------------------------------------------

test_that("`vec_ptype_full()` snapshot test", {
  expect_snapshot({
    vec_ptype_full()
  })
})


# vec_ptype_abbr ----------------------------------------------------------------------

test_that("`vec_ptype_abbr()` snapshot test", {
  expect_snapshot({
    vec_ptype_abbr()
  })
})


# format ------------------------------------------------------------------------------

test_that("`format()` snapshot test", {
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


# vec_ptype2.pillar_char --------------------------------------------------------------

test_that("`vec_ptype2.pillar_char()` snapshot test", {
  expect_snapshot({
    vec_ptype2.pillar_char()
  })
})


# vec_ptype2.character ----------------------------------------------------------------

test_that("`vec_ptype2.character()` snapshot test", {
  expect_snapshot({
    vec_ptype2.character()
  })
})


# vec_cast.pillar_char ----------------------------------------------------------------

test_that("`vec_cast.pillar_char()` snapshot test", {
  expect_snapshot({
    vec_cast.pillar_char()
  })
})


# vec_cast.character ------------------------------------------------------------------

test_that("`vec_cast.character()` snapshot test", {
  expect_snapshot({
    vec_cast.character()
  })
})
