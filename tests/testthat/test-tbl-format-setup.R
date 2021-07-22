test_that("output test", {
  x <- new_tbl(list(
    column_zero_zero = 1:3 + 0.23,
    col_01 = new_tbl(list(col_02 = letters[1:3], col_03 = factor(letters[1:3]))),
    col_04 = ordered(letters[1:3])
  ))

  expect_snapshot({
    tbl_format_setup(x, width = 5)
    tbl_format_setup(x, width = 6)
    tbl_format_setup(x, width = 7)
    tbl_format_setup(x, width = 8)
    tbl_format_setup(x, width = 9)
    tbl_format_setup(x, width = 10)
    tbl_format_setup(x, width = 11)
    tbl_format_setup(x, width = 12)
    tbl_format_setup(x, width = 13)
    tbl_format_setup(x, width = 14)
    tbl_format_setup(x, width = 15)
    tbl_format_setup(x, width = 16)
    tbl_format_setup(x, width = 17)
    tbl_format_setup(x, width = 18)
    tbl_format_setup(x, width = 19)
    tbl_format_setup(x, width = 20)
    tbl_format_setup(x, width = 21)
    tbl_format_setup(x, width = 22)
    tbl_format_setup(x, width = 23)
    tbl_format_setup(x, width = 24)
    tbl_format_setup(x, width = 25)
    tbl_format_setup(x, width = 26)
    tbl_format_setup(x, width = 27)
    tbl_format_setup(x, width = 28)
    tbl_format_setup(x, width = 29)
    tbl_format_setup(x, width = 30)
    tbl_format_setup(x, width = 31)
    tbl_format_setup(x, width = 32)
    tbl_format_setup(x, width = 33)
    tbl_format_setup(x, width = 34)
    tbl_format_setup(x, width = 35)
    tbl_format_setup(x, width = 36)
    tbl_format_setup(x, width = 37)
    tbl_format_setup(x, width = 38)
    tbl_format_setup(x, width = 39)
    tbl_format_setup(x, width = 40)
    tbl_format_setup(x, width = 41)
    tbl_format_setup(x, width = 42)
    tbl_format_setup(x, width = 43)
    tbl_format_setup(x, width = 44)
    tbl_format_setup(x, width = 45)
    tbl_format_setup(x, width = 46)
    tbl_format_setup(x, width = 47)
    tbl_format_setup(x, width = 48)
    tbl_format_setup(x, width = 49)
    tbl_format_setup(x, width = Inf)
  })
})

test_that("tbl_format_setup() results", {
  local_unknown_rows()

  expect_snapshot({
    tbl_format_setup(as_tbl(mtcars), width = 80)

    tbl_format_setup(as_tbl(mtcars), width = 30, n = 8)

    tbl_format_setup(as_tbl(trees), width = 30, n = 100)

    "Unknown rows"
    tbl_format_setup(as_unknown_rows(trees[1:9, ]), width = 30, n = 10)

    tbl_format_setup(as_unknown_rows(trees[1:10, ]), width = 30, n = 10)

    tbl_format_setup(as_unknown_rows(trees[1:11, ]), width = 30, n = 10)

    "No rows"
    tbl_format_setup(new_tbl(list(a = character(), b = logical())), width = 30)

    "No columns"
    tbl_format_setup(as_tbl(trees[character()]), width = 30, n = 5L)

    "No rows, unknown"
    tbl_format_setup(as_unknown_rows(trees[integer(), ]), width = 30, n = 5L)

    "No columns, unknown"
    tbl_format_setup(as_unknown_rows(trees[, character()]), width = 30, n = 5L)

    "Long table, unknown"
    tbl_format_setup(
      as_unknown_rows(new_tbl(list(a = seq.int(10000)))),
      n = 5L,
      width = 30L
    )
  })
})
