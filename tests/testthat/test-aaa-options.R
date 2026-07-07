# make_option_impl --------------------------------------------------------------------

test_that("`make_option_impl()` snapshot test", {
  expect_snapshot({
    make_option_impl()
  })
})
