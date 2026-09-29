# tbl_sum -----------------------------------------------------------------------------

test_that("`tbl_sum()` snapshot test", {
  expect_snapshot({
    tbl_sum()
  })
})


# tbl_sum.default ---------------------------------------------------------------------

test_that("`tbl_sum.default()` snapshot test", {
  expect_snapshot({
    tbl_sum()
  })
})


# tbl_sum.tbl -------------------------------------------------------------------------

test_that("`tbl_sum.tbl()` snapshot test", {
  expect_snapshot({
    tbl_sum()
  })
})
