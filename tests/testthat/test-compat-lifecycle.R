# scoped_lifecycle_silence ------------------------------------------------------------

test_that("`scoped_lifecycle_silence()` snapshot test", {
  expect_snapshot({
    scoped_lifecycle_silence()
  })
})


# with_lifecycle_silence --------------------------------------------------------------

test_that("`with_lifecycle_silence()` snapshot test", {
  expect_snapshot({
    with_lifecycle_silence()
  })
})


# scoped_lifecycle_warnings -----------------------------------------------------------

test_that("`scoped_lifecycle_warnings()` snapshot test", {
  expect_snapshot({
    scoped_lifecycle_warnings()
  })
})


# with_lifecycle_warnings -------------------------------------------------------------

test_that("`with_lifecycle_warnings()` snapshot test", {
  expect_snapshot({
    with_lifecycle_warnings()
  })
})


# scoped_lifecycle_errors -------------------------------------------------------------

test_that("`scoped_lifecycle_errors()` snapshot test", {
  expect_snapshot({
    scoped_lifecycle_errors()
  })
})


# with_lifecycle_errors ---------------------------------------------------------------

test_that("`with_lifecycle_errors()` snapshot test", {
  expect_snapshot({
    with_lifecycle_errors()
  })
})


# signal_superseded -------------------------------------------------------------------

test_that("`signal_superseded()` snapshot test", {
  expect_snapshot({
    signal_superseded()
  })
})


# foreign_caller_env ------------------------------------------------------------------

test_that("`foreign_caller_env()` snapshot test", {
  expect_snapshot({
    foreign_caller_env()
  })
})
