# pillar_capital ----------------------------------------------------------------------

test_that("`pillar_capital()` snapshot test", {
  expect_snapshot({
    pillar_capital()
  })
})


# new_pillar_capital ------------------------------------------------------------------

test_that("`new_pillar_capital()` snapshot test", {
  expect_snapshot({
    new_pillar_capital()
  })
})


# format ------------------------------------------------------------------------------

test_that("`format()` snapshot test", {
  expect_snapshot({
    format()
  })
})
