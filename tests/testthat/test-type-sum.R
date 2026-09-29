# type_sum ----------------------------------------------------------------------------

test_that("`type_sum()` snapshot test", {
  expect_snapshot({
    type_sum()
  })
})


# type_sum.ordered --------------------------------------------------------------------

test_that("`type_sum.ordered()` snapshot test", {
  expect_snapshot({
    type_sum()
  })
})


# type_sum.factor ---------------------------------------------------------------------

test_that("`type_sum.factor()` snapshot test", {
  expect_snapshot({
    type_sum()
  })
})


# type_sum.default --------------------------------------------------------------------

test_that("`type_sum.default()` snapshot test", {
  expect_snapshot({
    type_sum()
  })
})


# vec_ptype_abbr.pillar_empty_col -----------------------------------------------------

test_that("`vec_ptype_abbr.pillar_empty_col()` snapshot test", {
  expect_snapshot({
    vec_ptype_abbr()
  })
})


# obj_sum -----------------------------------------------------------------------------

test_that("`obj_sum()` snapshot test", {
  expect_snapshot({
    obj_sum()
  })
})


# obj_sum.default ---------------------------------------------------------------------

test_that("`obj_sum.default()` snapshot test", {
  expect_snapshot({
    obj_sum()
  })
})


# obj_sum.AsIs ------------------------------------------------------------------------

test_that("`obj_sum.AsIs()` snapshot test", {
  expect_snapshot({
    obj_sum()
  })
})


# size_sum ----------------------------------------------------------------------------

test_that("`size_sum()` snapshot test", {
  expect_snapshot({
    size_sum()
  })
})


# size_sum.default --------------------------------------------------------------------

test_that("`size_sum.default()` snapshot test", {
  expect_snapshot({
    size_sum()
  })
})
