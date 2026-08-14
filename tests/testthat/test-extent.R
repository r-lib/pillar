# get_extent --------------------------------------------------------------------------

test_that("`get_extent()` snapshot test", {
  expect_snapshot({
    get_extent()
  })
})


# get_max_extent ----------------------------------------------------------------------

test_that("`get_max_extent()` snapshot test", {
  expect_snapshot({
    get_max_extent()
  })
})


# align -------------------------------------------------------------------------------

test_that("`align()` snapshot test", {
  expect_snapshot({
    align()
  })
})


# align_impl --------------------------------------------------------------------------

test_that("`align_impl()` snapshot test", {
  expect_snapshot({
    align_impl()
  })
})
