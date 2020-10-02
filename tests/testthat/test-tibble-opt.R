test_that("print.tbl ignores max.print option", {
  skip_if_not_installed("tibble")

  trees2 <- tibble::as_tibble(trees)
  expect_output(
    withr::with_options(list(max.print = 3), print(trees2)),
    capture_output(print(trees2)),
    fixed = TRUE
  )
})
