test_that("print() returns output invisibly", {
  expect_output(ret <- withVisible(print(as_tbl(trees))))
  expect_false(ret$visible)
  expect_identical(ret$value, as_tbl(trees))
})

test_that("print() output", {
  verify_output("print.txt", {
    as_tbl(mtcars)

    print(as_tbl(mtcars), n = 8L, width = 30L)

    print(as_tbl(trees), n = 5L, width = 30L)

    print(as_tbl(trees), n = -1L, width = 30L)

    print(as_tbl(trees), n = Inf, width = 30L)

    print(as_tbl(trees), n = 3L, width = 5L)

    print(as_tbl(trees), n = NULL, width = 70L)

    print(as_unknown_rows(trees), n = 10, width = 70L)

    print(as_unknown_rows(trees[1:9, ]), n = 10, width = 70L)

    print(as_unknown_rows(trees[1:10, ]), n = 10, width = 70L)

    print(as_unknown_rows(trees[1:11, ]), n = 10, width = 70L)

    print(df_all, n = NULL, width = 30L)

    print(df_all, n = NULL, width = 300L)

    print(new_tbl(list(a = seq.int(10000))), n = 5L, width = 30L)

    print(new_tbl(list(a = character(), b = logical())), width = 30L)

    print(as_tbl(trees[character()]), n = 5L, width = 30L)

    print(as_unknown_rows(trees[integer(), ]), n = 5L, width = 30L)

    print(as_unknown_rows(trees[, character()]), n = 5L, width = 30L)

    print(
      as_unknown_rows(new_tbl(list(a = seq.int(10000)))),
      n = 5L,
      width = 30L
    )

    df <- new_tbl(list(x = as.POSIXct("2016-01-01 12:34:56 GMT") + 1:12))
    df$y <- as.POSIXlt(df$x)

    print(df, n = 8L, width = 60L)

    colonnade(list(a = 1:3), has_row_id = FALSE)

    # For coverage tests
    squeeze_impl(colonnade(list(a = 1:3)))
  })
})

test_that("output for wide characters", {
  skip_if(!cli::is_utf8_output())

  verify_output("wide.txt", {
    x <- c("\u6210\u4ea4\u65e5\u671f", "\u5408\u540c\u5f55\u5165\u65e5\u671f")
    df <- new_tbl(setNames(list(1:3, 4:6), x))
    print(df, n = 8L, width = 60L)
  })
})
