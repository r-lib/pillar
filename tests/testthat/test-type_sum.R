test_that("works with glimpse", {
  foo <- as_override_type_sum(2011:2013)
  expect_equal(unclass(type_sum(foo)), "SC")
  expect_snapshot({
    glimpse(new_tbl(list(foo = foo)))
  })
})

test_that("can override", {
  foo <- as_override_type_sum(2011:2013)

  expect_snapshot({
    new_tbl(list(foo = foo))
  })
})
