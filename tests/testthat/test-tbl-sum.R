# tbl_sum -----------------------------------------------------------------------------

test_that("`tbl_sum()` snapshot test", {
  expect_snapshot({
    tbl_sum()
  })
})
