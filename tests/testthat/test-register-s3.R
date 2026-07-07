# s3_register -------------------------------------------------------------------------

test_that("`s3_register()` snapshot test", {
  expect_snapshot({
    s3_register()
  })
})


# .rlang_s3_register_compat -----------------------------------------------------------

test_that("`.rlang_s3_register_compat()` snapshot test", {
  expect_snapshot({
    ()
  })
})
