# style_star --------------------------------------------------------------------------

test_that("`style_star()` snapshot test", {
  expect_snapshot({
    style_star()
  })
})


# rif_type ----------------------------------------------------------------------------

test_that("`rif_type()` snapshot test", {
  expect_snapshot({
    rif_type()
  })
})


# format.pillar_rif_type --------------------------------------------------------------

test_that("`format.pillar_rif_type()` snapshot test", {
  expect_snapshot({
    format()
  })
})
