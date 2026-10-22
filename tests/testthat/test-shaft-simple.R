# new_pillar_shaft_simple -------------------------------------------------------------

test_that("`new_pillar_shaft_simple()` snapshot test", {
  expect_snapshot({
    new_pillar_shaft_simple()
  })
})


# format.pillar_shaft_simple ----------------------------------------------------------

test_that("`format.pillar_shaft_simple()` snapshot test", {
  expect_snapshot({
    format()
  })
})
