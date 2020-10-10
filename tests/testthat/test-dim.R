test_that("dim2() falls back to vec_size()", {
  expect_equal(dim2(1:3), 3)
  expect_equal(dim2(Titanic), dim(Titanic))
})

test_that("Using perceived dimensions (#167)", {
  expect_equal(dim_desc(as.POSIXlt(Sys.time() + 1:10)), "10")
  expect_equal(dim_desc(as.POSIXlt(Sys.time() + 1:17)), "17")
})

test_that("big_mark() works for large numbers", {
  expect_match(big_mark(123), "123")
  expect_match(big_mark(123456), "123.456")
  expect_match(big_mark(123456789), "123.456.789")
})
