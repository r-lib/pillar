test_that("works with glimpse", {
  local_override_type_sum()

  foo <- as_override_type_sum_asis(2011:2013)
  bar <- as_override_type_sum_custom(2011:2013)
  expect_equal(unclass(type_sum(foo)), "AsIs")
  expect_equal(unclass(type_sum(bar)), "VeryLong")

  expect_snapshot({
    glimpse(new_tbl(list(foo = foo, bar = bar)))
  })
})

test_that("can override", {
  local_override_type_sum()

  foo <- as_override_type_sum_asis(2011:2013)
  bar <- as_override_type_sum_custom(2011:2013)

  expect_snapshot({
    new_tbl(list(foo = foo, bar = bar))
    options(width = 13)
    new_tbl(list(foo = foo, bar = bar))
  })
})
