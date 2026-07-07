# dim_desc ----------------------------------------------------------------------------

test_that("`dim_desc()` snapshot test", {
  expect_snapshot({
    dim_desc()
  })
})


# dim2 --------------------------------------------------------------------------------

test_that("`dim2()` snapshot test", {
  expect_snapshot({
    dim2()
  })
})


# mult_sign ---------------------------------------------------------------------------

test_that("`mult_sign()` snapshot test", {
  expect_snapshot({
    mult_sign()
  })
})


# spaces_around -----------------------------------------------------------------------

test_that("`spaces_around()` snapshot test", {
  expect_snapshot({
    spaces_around()
  })
})


# big_mark ----------------------------------------------------------------------------

test_that("`big_mark()` snapshot test", {
  expect_snapshot({
    big_mark()
  })
})


# Legacy tests ------------------------------------------------------------------------

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
