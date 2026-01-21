# new_ornament ------------------------------------------------------------------------

test_that("`new_ornament()` snapshot test", {
  expect_snapshot({
    new_ornament()
  })
})


# print.pillar_ornament ---------------------------------------------------------------

test_that("`print.pillar_ornament()` snapshot test", {
  expect_snapshot({
    print()
  })
})


# format.pillar_ornament --------------------------------------------------------------

test_that("`format.pillar_ornament()` snapshot test", {
  expect_snapshot({
    format()
  })
})


# Legacy tests ------------------------------------------------------------------------

test_that("ornament", {
  expect_snapshot({
    new_ornament(c("abc", "de"))
    new_ornament(c("abc", "de"), align = "right")
    new_ornament(c("abc", "de"), width = 5, align = "right")
    format(new_ornament(c("abc", "de")))
    format(new_ornament(c("abc", "de")), width = 5)
  })
})

test_that("vertical", {
  expect_snapshot({
    as_glue(c("abc", "de"))
  })
})
