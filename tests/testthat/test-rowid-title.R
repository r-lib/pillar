# rif_title ---------------------------------------------------------------------------

test_that("`rif_title()` snapshot test", {
  expect_snapshot({
    rif_title()
  })
})


# format.pillar_rif_title -------------------------------------------------------------

test_that("`format.pillar_rif_title()` snapshot test", {
  expect_snapshot({
    format()
  })
})
