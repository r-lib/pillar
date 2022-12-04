test_that("S4 character class (tidyverse/tibble#1367)", {
  skip_if_not_installed("DBI")
  expect_snapshot({
    pillar(DBI::SQL("x"))
  })
})
