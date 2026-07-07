# pluralise ---------------------------------------------------------------------------

test_that("`pluralise()` snapshot test", {
  expect_snapshot({
    pluralise()
  })
})


# pluralise_n -------------------------------------------------------------------------

test_that("`pluralise_n()` snapshot test", {
  expect_snapshot({
    pluralise_n()
  })
})
