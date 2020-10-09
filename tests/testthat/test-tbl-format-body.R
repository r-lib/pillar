test_that("tbl_format_body() results", {
  verify_output("tbl-format-body.txt", {
    "Various column types"
    tbl_format_body(tbl_format_setup(df_all, width = 30))

    tbl_format_body(tbl_format_setup(df_all, width = 300))

    "Colonnade"
    colonnade(list(a = 1:3), has_row_id = FALSE)

    # For coverage tests
    squeeze_impl(colonnade(list(a = 1:3)))
  })
})

test_that("body: output for wide characters", {
  skip_if(!cli::is_utf8_output())

  verify_output("tbl-format-body-wide.txt", {
    x <- c("\u6210\u4ea4\u65e5\u671f", "\u5408\u540c\u5f55\u5165\u65e5\u671f")
    df <- new_tbl(setNames(list(1:3, 4:6), x))
    print(df, n = 8L, width = 60L)
  })
})
