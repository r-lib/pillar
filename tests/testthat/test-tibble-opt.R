test_that("print.tbl ignores max.print option", {
  trees2 <- as_tbl(trees)
  expect_output(
    withr::with_options(list(max.print = 3), print(trees2)),
    capture_output(print(trees2)),
    fixed = TRUE
  )
})
