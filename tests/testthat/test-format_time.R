context("format_time")

test_that("Olson-name abbreviation", {

  # get all Olson abbreviations
  abb_olson_14 <- unlist(lapply(OlsonNames(), abbreviate_olson))
  abb_olson_10 <- unlist(lapply(OlsonNames(), abbreviate_olson, width = 10L))

  # case: width == 0
  expect_identical(abbreviate_olson("America/Chicago", width = 0), "")

  # ensure all abbreviations are no more than 14 characters
  expect_lte(max(nchar(abb_olson_14)), 14L)

  # ensure all abbreviations are unique
  expect_identical(unique(abb_olson_14), abb_olson_14)

  # ensure short name is unchanged
  expect_identical(abbreviate_olson("US/Central"), "US/Central")

  # spot check
  expect_identical(abbreviate_olson("America/Chicago"), "Amer/Chicago")
  expect_identical(abbreviate_olson("Africa/Bissau"), "Afr/Bissau")
  expect_identical(
    abbreviate_olson("Africa/Bissau", consistent = FALSE),
    "Africa/Bissau"
  )

})

test_that("output test", {
  expect_pillar_output(as.POSIXct("2017-07-28 18:04:35 +0200"), filename = "time.txt")
  expect_pillar_output(as.POSIXlt("2017-07-28 18:04:35 +0200"), filename = "time-posix.txt")
})
