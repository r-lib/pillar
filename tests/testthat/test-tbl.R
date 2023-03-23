# new_tbl -----------------------------------------------------------------------------

test_that("`new_tbl()` snapshot test", {
  expect_snapshot({
    new_tbl()
  })
})


# as_tbl ------------------------------------------------------------------------------

test_that("`as_tbl()` snapshot test", {
  expect_snapshot({
    as_tbl()
  })
})


# as_tbl.data -------------------------------------------------------------------------

test_that("`as_tbl.data()` snapshot test", {
  expect_snapshot({
    as_tbl.data()
  })
})
