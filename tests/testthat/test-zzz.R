#  ------------------------------------------------------------------------------------

test_that("`()` snapshot test", {
  expect_snapshot({
    ()
  })
})


# activate_debugme --------------------------------------------------------------------

test_that("`activate_debugme()` snapshot test", {
  expect_snapshot({
    activate_debugme()
  })
})


# deactivate_debugme ------------------------------------------------------------------

test_that("`deactivate_debugme()` snapshot test", {
  expect_snapshot({
    deactivate_debugme()
  })
})


# get_debugme -------------------------------------------------------------------------

test_that("`get_debugme()` snapshot test", {
  expect_snapshot({
    get_debugme()
  })
})


# set_debugme -------------------------------------------------------------------------

test_that("`set_debugme()` snapshot test", {
  expect_snapshot({
    set_debugme()
  })
})


# remove_from_logging -----------------------------------------------------------------

test_that("`remove_from_logging()` snapshot test", {
  expect_snapshot({
    remove_from_logging()
  })
})


# debug_info --------------------------------------------------------------------------

test_that("`debug_info()` snapshot test", {
  expect_snapshot({
    debug_info()
  })
})


# get_pkgname -------------------------------------------------------------------------

test_that("`get_pkgname()` snapshot test", {
  expect_snapshot({
    get_pkgname()
  })
})
