# style_empty -------------------------------------------------------------------------

test_that("`style_empty()` snapshot test", {
  expect_snapshot({
    style_empty()
  })
})


# new_empty_shaft ---------------------------------------------------------------------

test_that("`new_empty_shaft()` snapshot test", {
  expect_snapshot({
    new_empty_shaft()
  })
})
