# is_vector_s3 ------------------------------------------------------------------------

test_that("`is_vector_s3()` snapshot test", {
  expect_snapshot({
    is_vector_s3()
  })
})
