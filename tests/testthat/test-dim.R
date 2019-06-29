test_that("Using perceived dimensions (#167)", {
  expect_equal(dim_desc(as.POSIXlt(Sys.time() + 1:10)), "10")
  expect_equal(dim_desc(as.POSIXlt(Sys.time() + 1:17)), "17")
})
