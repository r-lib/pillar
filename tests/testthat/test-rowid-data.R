# style_rowid -------------------------------------------------------------------------

test_that("`style_rowid()` snapshot test", {
  expect_snapshot({
    style_rowid()
  })
})


# rif_shaft ---------------------------------------------------------------------------

test_that("`rif_shaft()` snapshot test", {
  expect_snapshot({
    rif_shaft()
  })
})


# format.pillar_rif_shaft -------------------------------------------------------------

test_that("`format.pillar_rif_shaft()` snapshot test", {
  expect_snapshot({
    format()
  })
})
