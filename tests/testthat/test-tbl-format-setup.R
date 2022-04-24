test_that("small output test", {
  x <- new_tbl(list(
    column_zero_zero = 1:3 + 0.23,
    `col 01` = new_tbl(list(
      `col 02` = letters[1:3],
      `col 03` = LETTERS[1:3],
      `col 04` = matrix(1:9, nrow = 3, dimnames = list(letters[1:3], LETTERS[1:3]))
    )),
    `col 05` = ordered(letters[1:3])
  ))

  expect_snapshot({
    options(width = 100)
    tbl_format_setup(x, width = 64)
    tbl_format_setup(x, width = 65)
    tbl_format_setup(x, width = 66)
  })
})
