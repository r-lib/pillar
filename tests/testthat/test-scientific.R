# format_exp --------------------------------------------------------------------------

test_that("`format_exp()` snapshot test", {
  expect_snapshot({
    format_exp()
  })
})


# si ----------------------------------------------------------------------------------

test_that("`si()` snapshot test", {
  expect_snapshot({
    si()
  })
})


# supernum ----------------------------------------------------------------------------

test_that("`supernum()` snapshot test", {
  expect_snapshot({
    supernum()
  })
})
