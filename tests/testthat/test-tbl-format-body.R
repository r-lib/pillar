test_that("tbl_format_body() results", {
  expect_snapshot({
    "Various column types"
    tbl_format_body(tbl_format_setup(df_all, width = 30))

    tbl_format_body(tbl_format_setup(df_all, width = 300))

    "POSIXct and POSIXlt"
    df <- new_tbl(list(x = as.POSIXct("2016-01-01 12:34:56 GMT") + 1:12))
    df$y <- as.POSIXlt(df$x)

    tbl_format_body(tbl_format_setup(df, width = 60L))

    "Colonnade"
    ctl_colonnade(list(a = 1:3), has_row_id = FALSE)

    # For coverage tests
    ctl_colonnade(list(a = 1:3))
  })
})

test_that("body: output for wide characters", {
  skip_if(!l10n_info()$`UTF-8`)
  local_utf8()

  expect_snapshot({
    x <- c("\u6210\u4ea4\u65e5\u671f", "\u5408\u540c\u5f55\u5165\u65e5\u671f")
    df <- new_tbl(setNames(list(1:3, 4:6), x))
    print(df, n = 8L, width = 60L)
  })
})
