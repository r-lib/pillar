# rif_title ---------------------------------------------------------------------------

test_that("`rif_title()` snapshot test", {
  expect_snapshot({
    rif_title()
  })
})


# format ------------------------------------------------------------------------------

test_that("`format()` snapshot test", {
  expect_snapshot({
    format()
  })
})
