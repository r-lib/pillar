# s3_register -------------------------------------------------------------------------

test_that("`s3_register()` snapshot test", {
  expect_snapshot({
    s3_register()
  })
})


#  ------------------------------------------------------------------------------------

test_that("`()` snapshot test", {
  expect_snapshot({
    ()
  })
})
