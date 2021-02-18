test_that("works with glimpse", {
  foo <- as_override_type_sum(2011:2013)
  expect_equal(type_sum(foo), "SC")
  expect_output(glimpse(tibble::tibble(foo)), "foo <SC>")
})