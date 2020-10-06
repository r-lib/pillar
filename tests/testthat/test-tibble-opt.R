test_that("print.tbl ignores max.print option", {
  trees2 <- as_tbl(trees)
  expect_output(
    withr::with_options(list(max.print = 3), print(trees2)),
    capture_output(print(trees2)),
    fixed = TRUE
  )
})

test_that("print.tbl uses tibble.width option", {
  mtcars2 <- as_tbl(mtcars)
  expect_output(
    withr::with_options(list(tibble.width = 40, dplyr.width = 50, width = 60), print(mtcars2)),
    capture_output(print(mtcars2, width = 40)),
    fixed = TRUE
  )
  expect_output(
    withr::with_options(list(dplyr.width = 50, width = 60), print(mtcars2)),
    capture_output(print(mtcars2, width = 50)),
    fixed = TRUE
  )
  expect_output(
    withr::with_options(list(width = 60), print(mtcars2)),
    capture_output(print(mtcars2, width = 60)),
    fixed = TRUE
  )
})
