# new_ornament ------------------------------------------------------------------------

test_that("`new_ornament()` snapshot test", {
  expect_snapshot({
    new_ornament()
  })
})


# print -------------------------------------------------------------------------------

test_that("`print()` snapshot test", {
  expect_snapshot({
    print()
  })
})


# format ------------------------------------------------------------------------------

test_that("`format()` snapshot test", {
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
