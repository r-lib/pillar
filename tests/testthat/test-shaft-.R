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


# pillar_shaft.pillar_empty_col -------------------------------------------------------

test_that("`pillar_shaft.pillar_empty_col()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# print.pillar_shaft ------------------------------------------------------------------

test_that("`print.pillar_shaft()` snapshot test", {
  expect_snapshot({
    print()
  })
})


# format.pillar_shaft -----------------------------------------------------------------

test_that("`format.pillar_shaft()` snapshot test", {
  expect_snapshot({
    format()
  })
})


# pillar_shaft.logical ----------------------------------------------------------------

test_that("`pillar_shaft.logical()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# pillar_shaft.numeric ----------------------------------------------------------------

test_that("`pillar_shaft.numeric()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
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


# pillar_shaft.integer64 --------------------------------------------------------------

test_that("`pillar_shaft.integer64()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# pillar_shaft.Surv -------------------------------------------------------------------

test_that("`pillar_shaft.Surv()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# pillar_shaft.Surv2 ------------------------------------------------------------------

test_that("`pillar_shaft.Surv2()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# type_sum.Surv -----------------------------------------------------------------------

test_that("`type_sum.Surv()` snapshot test", {
  expect_snapshot({
    type_sum()
  })
})


# type_sum.Surv2 ----------------------------------------------------------------------

test_that("`type_sum.Surv2()` snapshot test", {
  expect_snapshot({
    type_sum()
  })
})


# pillar_shaft.Date -------------------------------------------------------------------

test_that("`pillar_shaft.Date()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# pillar_shaft.POSIXt -----------------------------------------------------------------

test_that("`pillar_shaft.POSIXt()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# pillar_shaft.character --------------------------------------------------------------

test_that("`pillar_shaft.character()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# pillar_shaft.glue -------------------------------------------------------------------

test_that("`pillar_shaft.glue()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# pillar_shaft.list -------------------------------------------------------------------

test_that("`pillar_shaft.list()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# pillar_shaft.factor -----------------------------------------------------------------

test_that("`pillar_shaft.factor()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# pillar_shaft.AsIs -------------------------------------------------------------------

test_that("`pillar_shaft.AsIs()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# pillar_shaft.default ----------------------------------------------------------------

test_that("`pillar_shaft.default()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# Legacy tests ------------------------------------------------------------------------

test_that("S4 character class (tidyverse/tibble#1367)", {
  skip_if_not_installed("DBI")
  expect_snapshot({
    pillar(DBI::SQL("x"))
  })
})
