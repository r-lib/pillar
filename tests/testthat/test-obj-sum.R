context("obj_sum")

# obj_sum ----------------------------------------------------------------

test_that("shows only first class name for S4", {
  A <- methods::setClass("A")
  expect_equal(obj_sum(A), "S4: classGeneratorFunction")
})

test_that("shows only first class name for S3", {
  x <- structure(list(), class = c("a", "b", "c"))
  expect_equal(obj_sum(x), "S3: a")
})

test_that("NULL handled specially", {
  expect_equal(obj_sum(NULL), "NULL")
})

test_that("data frame and tibbles include rows and cols", {
  expect_equal(obj_sum(mtcars), paste0("data.frame [32 ", mult_sign(), " 11]"))
})

test_that("common data vectors treated as atomic", {
  expect_obj_sum_is_ptype <- function(x) {
    obj_sum <- obj_sum(x)
    ptype <- vec_ptype_abbr(x)

    expect_equal(obj_sum, !! paste0(ptype, size_sum(x)))
  }

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
  expect_equal(type_sum(1i), "cpl")
  expect_equal(type_sum(quote(foo)), "sym")
  expect_equal(type_sum(expr()), "missing")
})
