context("obj_sum")

# obj_sum ----------------------------------------------------------------

test_that("forwards to vec_ptype_abbr() for S4", {
  x <- methods::setClass("A")
  expect_equal(obj_sum(x), vctrs::vec_ptype_abbr(x))
})

test_that("forwards to vec_ptype_abbr() for S3", {
  x <- structure(list(), class = c("a", "b", "c"))
  expect_equal(obj_sum(x), vctrs::vec_ptype_abbr(x))
})

test_that("NULL handled specially", {
  expect_equal(obj_sum(NULL), "NULL")
})

test_that("data frames and common data vectors have size summary", {
  expect_obj_sum_is_ptype <- function(x) {
    obj_sum <- obj_sum(x)
    ptype <- type_sum(x)

    expect_equal(obj_sum, !! paste0(ptype, size_sum(x)))
  }

  expect_obj_sum_is_ptype(mtcars)
  expect_obj_sum_is_ptype(factor(1:3))
  expect_obj_sum_is_ptype(ordered(1:3))
  expect_obj_sum_is_ptype(Sys.Date() + 1:3)
  expect_obj_sum_is_ptype(Sys.time() + 1:3)
  expect_obj_sum_is_ptype(Sys.time() - Sys.time() + 1:3)
})


# type_sum ----------------------------------------------------------------

test_that("less common objects get abbreviations", {
  expect_equal(type_sum(environment()), "env")
  expect_equal(type_sum(environment), "fn")
  expect_equal(type_sum(list), "fn")
  expect_equal(type_sum(quote(foo)), "sym")
  expect_equal(type_sum(expr()), "missing")
})
