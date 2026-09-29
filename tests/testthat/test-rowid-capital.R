# rif_capital -------------------------------------------------------------------------

test_that("`rif_capital()` snapshot test", {
  expect_snapshot({
    rif_capital()
  })
})
