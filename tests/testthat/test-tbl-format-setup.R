test_that("output test", {
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
    tbl_format_setup(x, width = 4)
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
    tbl_format_setup(x, width = 50)
    tbl_format_setup(x, width = 51)
    tbl_format_setup(x, width = 52)
    tbl_format_setup(x, width = 53)
    tbl_format_setup(x, width = 54)
    tbl_format_setup(x, width = 55)
    tbl_format_setup(x, width = 56)
    tbl_format_setup(x, width = 57)
    tbl_format_setup(x, width = 58)
    tbl_format_setup(x, width = 59)
    tbl_format_setup(x, width = 60)
    tbl_format_setup(x, width = 61)
    tbl_format_setup(x, width = 62)
    tbl_format_setup(x, width = 63)
    tbl_format_setup(x, width = 64)
    tbl_format_setup(x, width = 65)
    tbl_format_setup(x, width = 66)
    tbl_format_setup(x, width = 67)
    tbl_format_setup(x, width = 68)
    tbl_format_setup(x, width = 69)
    tbl_format_setup(x, width = 70)
    tbl_format_setup(x, width = 71)
    tbl_format_setup(x, width = 72)
    tbl_format_setup(x, width = 73)
    tbl_format_setup(x, width = 74)
    tbl_format_setup(x, width = 75)
    tbl_format_setup(x, width = 76)
    tbl_format_setup(x, width = 77)
    tbl_format_setup(x, width = 78)
    tbl_format_setup(x, width = 79)
    tbl_format_setup(x, width = 80)
    tbl_format_setup(x, width = 81)
    tbl_format_setup(x, width = 82)
    tbl_format_setup(x, width = 83)
    tbl_format_setup(x, width = 84)
    tbl_format_setup(x, width = 85)
    tbl_format_setup(x, width = 86)
    tbl_format_setup(x, width = 87)
    tbl_format_setup(x, width = 88)
    tbl_format_setup(x, width = 89)
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

test_that("tbl_format_setup() for footnotes", {
  expect_snapshot({
    tbl_format_setup(width = 73, as_tbl(data_frame(
      xxxabc = 1,
      xxxdef = 1,
      xxxghi = 1,
      xxxjkl = 1,
      xxxmno = 1,
      xxxpqr = 1,
      xxxstu = 1,
      xxxvwx = 1,
      xxxyza = 1,
      xxxbcd = 1,
      xxxefg = 1,
      xxxhij = 1,
      xxxklm = 1,
      xxxnop = 1
    )))
  })
})

test_that("tbl_format_setup() for footnotes with UTF-8 output", {
  skip_if(!l10n_info()$`UTF-8`)

  local_utf8()

  expect_snapshot({
    tbl_format_setup(width = 73, as_tbl(data_frame(
      xxxabc = 1,
      xxxdef = 1,
      xxxghi = 1,
      xxxjkl = 1,
      xxxmno = 1,
      xxxpqr = 1,
      xxxstu = 1,
      xxxvwx = 1,
      xxxyza = 1,
      xxxbcd = 1,
      xxxefg = 1,
      xxxhij = 1,
      xxxklm = 1,
      xxxnop = 1
    )))
  })
})
