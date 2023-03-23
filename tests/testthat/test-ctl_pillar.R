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


# format ------------------------------------------------------------------------------

test_that("`format()` snapshot test", {
  expect_snapshot({
    format()
  })
})


# print -------------------------------------------------------------------------------

test_that("`print()` snapshot test", {
  expect_snapshot({
    print()
  })
})
