# new_continuation_shaft --------------------------------------------------------------

test_that("`new_continuation_shaft()` snapshot test", {
  expect_snapshot({
    new_continuation_shaft()
  })
})


# format ------------------------------------------------------------------------------

test_that("`format()` snapshot test", {
  expect_snapshot({
    format()
  })
})
