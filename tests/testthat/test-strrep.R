# strrep_compat -----------------------------------------------------------------------

test_that("`strrep_compat()` snapshot test", {
  expect_snapshot({
    strrep_compat()
  })
})
