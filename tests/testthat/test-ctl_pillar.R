# pillar ------------------------------------------------------------------------------

test_that("`pillar()` snapshot test", {
  expect_snapshot({
    pillar()
  })
})


# pillar_from_shaft -------------------------------------------------------------------

test_that("`pillar_from_shaft()` snapshot test", {
  expect_snapshot({
    pillar_from_shaft()
  })
})


# new_pillar --------------------------------------------------------------------------

test_that("`new_pillar()` snapshot test", {
  expect_snapshot({
    new_pillar()
  })
})


# format.pillar -----------------------------------------------------------------------

test_that("`format.pillar()` snapshot test", {
  expect_snapshot({
    format()
  })
})


# print.pillar ------------------------------------------------------------------------

test_that("`print.pillar()` snapshot test", {
  expect_snapshot({
    print()
  })
})
