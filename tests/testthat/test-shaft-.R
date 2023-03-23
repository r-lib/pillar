# new_pillar_shaft --------------------------------------------------------------------

test_that("`new_pillar_shaft()` snapshot test", {
  expect_snapshot({
    new_pillar_shaft()
  })
})


# pillar_shaft ------------------------------------------------------------------------

test_that("`pillar_shaft()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# print -------------------------------------------------------------------------------

test_that("`print()` snapshot test", {
  expect_snapshot({
    print()
  })
})


# format ------------------------------------------------------------------------------

test_that("`format()` snapshot test", {
  expect_snapshot({
    format()
  })
})


# pillar_shaft_number_attr ------------------------------------------------------------

test_that("`pillar_shaft_number_attr()` snapshot test", {
  expect_snapshot({
    pillar_shaft_number_attr()
  })
})


# pillar_shaft_number -----------------------------------------------------------------

test_that("`pillar_shaft_number()` snapshot test", {
  expect_snapshot({
    pillar_shaft_number()
  })
})


# type_sum ----------------------------------------------------------------------------

test_that("`type_sum()` snapshot test", {
  expect_snapshot({
    type_sum()
  })
})


# Legacy tests ------------------------------------------------------------------------

test_that("S4 character class (tidyverse/tibble#1367)", {
  skip_if_not_installed("DBI")
  expect_snapshot({
    pillar(DBI::SQL("x"))
  })
})
