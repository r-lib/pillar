context("format_time")

library("tibble")

test_olson <- c(
  "EST5EDT",
  "America/Chicago",
  "Europe/Paris",
  "America/Kentucky/Louisville",
  "America/Indiana/Indianapolis"
)

test_that("output test", {
  expect_pillar_output(as.POSIXct("2017-07-28 18:04:35 +0200"), filename = "time.txt")
  expect_pillar_output(as.POSIXlt("2017-07-28 18:04:35 +0200"), filename = "time-posix.txt")
})

test_that(".component works", {
  expect_identical(
    .component("America/Chicago"),
    data.frame(
      tz = rep("America/Chicago", 2L),
      index = c(1L, 2L),
      index_max = c(2L, 2L),
      component = c("America", "Chicago"),
      stringsAsFactors = FALSE
    )
  )
})

test_that(".calculate_budget works", {
  # width 14
  expect_identical(.calculate_budget(1L, width = 14L), c(14L))
  expect_identical(.calculate_budget(2L, width = 14L), c(6L, 7L))
  expect_identical(.calculate_budget(3L, width = 14L), c(4L, 4L, 4L))
  # width 10
  expect_identical(.calculate_budget(1L, width = 10L), c(10L))
  expect_identical(.calculate_budget(2L, width = 10L), c(4L, 5L))
  expect_identical(.calculate_budget(3L, width = 10L), c(3L, 2L, 3L))
})

test_that(".budget_global works", {
  expect_identical(
    .budget_global(14L),
    data.frame(
      index = c(1L, 1L, 2L, 1L, 2L, 3L),
      index_max = c(1L, 2L, 2L, 3L, 3L, 3L),
      budget_global = c(14L, 6L, 7L, 4L, 4L, 4L)
    )
  )
})

test_that(".decompose_tz works", {

  decompose_tz <- tribble(
    ~index, ~index_max, ~tz,                            ~component,     ~budget_global,
    1L,      1L,        "EST5EDT",                      "EST5EDT",      14L,
    1L,      2L,        "America/Chicago",              "America",      6L,
    1L,      2L,        "Europe/Paris",                 "Europe",       6L,
    1L,      3L,        "America/Kentucky/Louisville",  "America",      4L,
    1L,      3L,        "America/Indiana/Indianapolis", "America",      4L,
    2L,      2L,        "America/Chicago",              "Chicago",      7L,
    2L,      2L,        "Europe/Paris",                 "Paris",        7L,
    2L,      3L,        "America/Kentucky/Louisville",  "Kentucky",     4L,
    2L,      3L,        "America/Indiana/Indianapolis", "Indiana",      4L,
    3L,      3L,        "America/Kentucky/Louisville",  "Louisville",   4L,
    3L,      3L,        "America/Indiana/Indianapolis", "Indianapolis", 4L
  )

  expect_identical(.decompose_tz(test_olson, 14L), as.data.frame(decompose_tz))

})

test_that(".budget_local works", {

  index <-            c( 1L,  2L, 3L)
  index_max <-        c( 3L,  3L, 3L)
  budget_global <-    c( 4L,  3L, 6L)
  budget_remaining <- c(14L, 12L, 9L)

  budget_local <-     c( 4L,  3L, 9L)

  expect_identical(
    .budget_local(budget_global, budget_remaining, index, index_max),
    budget_local
  )
})

test_that(".budget_harmonised works", {

  component <-         c("chicago", "chicago", "denver")
  budget_local <-      c(       5L,        4L,       3L)

  budget_harmonised <- c(       4L,        4L,       3L)

  expect_identical(
    .budget_harmonised(budget_local, component),
    budget_harmonised
  )
})

test_that(".abbv_dict works", {

  dict <- c(foo = "foo2", bar = "bar3")

  input <-  c("foo",  "notfoo", "bar")
  result <- c("foo2", "notfoo", "bar3")

  expect_identical(.abbv_dict(input, dictionary = dict), result)
})

test_that(".abbv_final works", {

  # this test is a bit pathological as none of the strings
  # is abbreviated to the length we want - instead the point is
  # to make sure that all the 4's are considered together
  # and all the 5's are considered together

  abbv_dict <-         c("new_yorks",  "new_york", "chicagos", "chicago")
  budget_harmonised <- c(         5L,          5L,         4L,        4L)

  abbv_final <-        c( "nw_yrks",    "new_yrk",    "chcgs",   "chicg")

  expect_identical(
    .abbv_final(abbv_dict, budget_harmonised),
    abbv_final
  )

})



