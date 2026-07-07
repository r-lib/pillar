# format_title ------------------------------------------------------------------------

test_that("`format_title()` snapshot test", {
  expect_snapshot({
    format_title()
  })
})


# tick_names_if_needed ----------------------------------------------------------------

test_that("`tick_names_if_needed()` snapshot test", {
  expect_snapshot({
    tick_names_if_needed()
  })
})


# tick_if_needed ----------------------------------------------------------------------

test_that("`tick_if_needed()` snapshot test", {
  expect_snapshot({
    tick_if_needed()
  })
})


# is_syntactic ------------------------------------------------------------------------

test_that("`is_syntactic()` snapshot test", {
  expect_snapshot({
    is_syntactic()
  })
})


# is_ambiguous_string -----------------------------------------------------------------

test_that("`is_ambiguous_string()` snapshot test", {
  expect_snapshot({
    is_ambiguous_string()
  })
})


# tick --------------------------------------------------------------------------------

test_that("`tick()` snapshot test", {
  expect_snapshot({
    tick()
  })
})
