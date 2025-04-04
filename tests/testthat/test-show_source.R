# set_show_source_hooks ---------------------------------------------------------------

test_that("`set_show_source_hooks()` snapshot test", {
  expect_snapshot({
    set_show_source_hooks()
  })
})


# set_show_source_opts_hook -----------------------------------------------------------

test_that("`set_show_source_opts_hook()` snapshot test", {
  expect_snapshot({
    set_show_source_opts_hook()
  })
})


# set_show_source_source_hook ---------------------------------------------------------

test_that("`set_show_source_source_hook()` snapshot test", {
  expect_snapshot({
    set_show_source_source_hook()
  })
})
