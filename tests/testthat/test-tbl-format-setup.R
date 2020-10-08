test_that("tbl_format_setup() results", {
  verify_output("tbl-format-setup.txt", {
    tbl_format_setup(as_tbl(mtcars), width = 80)

    tbl_format_setup(as_tbl(mtcars), width = 30, n = 8)

    tbl_format_setup(as_tbl(trees), width = 30, n = 100)

    "Unknown rows"
    tbl_format_setup(as_unknown_rows(trees[1:9, ]), width = 30, n = 10)

    tbl_format_setup(as_unknown_rows(trees[1:10, ]), width = 30, n = 10)

    tbl_format_setup(as_unknown_rows(trees[1:11, ]), width = 30, n = 10)

    "Various column types"
    tbl_format_setup(df_all, width = 30)

    tbl_format_setup(df_all, width = 300)

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

    "POSIXct and POSIXlt"
    df <- new_tbl(list(x = as.POSIXct("2016-01-01 12:34:56 GMT") + 1:12))
    df$y <- as.POSIXlt(df$x)

    tbl_format_setup(df, n = 8L, width = 60L)

    "Body"
    colonnade(list(a = 1:3), has_row_id = FALSE)

    # For coverage tests
    squeeze_impl(colonnade(list(a = 1:3)))
  })
})

test_that("body: output for wide characters", {
  skip_if(!cli::is_utf8_output())

  verify_output("wide.txt", {
    x <- c("\u6210\u4ea4\u65e5\u671f", "\u5408\u540c\u5f55\u5165\u65e5\u671f")
    df <- new_tbl(setNames(list(1:3, 4:6), x))
    print(df, n = 8L, width = 60L)
  })
})
