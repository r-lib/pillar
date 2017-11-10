context("format_time")

test_that("Olson-name abbreviation utils", {

  library("tibble")

  test_olson <- c(
    "EST5EDT",
    "America/Chicago",
    "Europe/Paris",
    "America/Kentucky/Louisville",
    "America/Indiana/Indianapolis"
  )

  component <- tribble(
    ~index, ~index_max, ~tz,                            ~component,     ~budget,
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

  test_that("inital abbreviation works", {
    expect_identical(.abb_inital(test_olson, 14L), as.data.frame(component))
  })

})

test_that("output test", {
  expect_pillar_output(as.POSIXct("2017-07-28 18:04:35 +0200"), filename = "time.txt")
  expect_pillar_output(as.POSIXlt("2017-07-28 18:04:35 +0200"), filename = "time-posix.txt")
})
