context("format_time")

test_that("Olson-name abbreviation", {
  
  # get all Olson abbreviations
  abb_olson <- unlist(lapply(OlsonNames(), abbreviate_olson))
  
  # ensure all abbreviations are no more than 14 characters
  expect_lte(max(nchar(abb_olson)), 14L)
  
  # ensure all abbreviations are unique
  expect_identical(unique(abb_olson), abb_olson)
  
  # ensure short name is unchanged
  expect_identical(abbreviate_olson("US/Central"), "US/Central")

  # spot check
  expect_identical(abbreviate_olson("America/Chicago"), "Amer/Chicago")
})

test_that("output test", {
  expect_pillar_output(as.POSIXct("2017-07-28 18:04:35 +0200"), filename = "time.txt")
  expect_pillar_output(as.POSIXlt("2017-07-28 18:04:35 +0200"), filename = "time-posix.txt")
})
