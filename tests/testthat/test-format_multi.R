test_that("output test", {
  x <- list(column_zero_one = 1:3 + 0.23, col_02 = letters[1:3], col_03 = factor(letters[1:3]), col_04 = ordered(letters[1:3]))
  expect_snapshot(colonnade(x, width = 4))
  expect_snapshot(colonnade(x, width = 5))
  expect_snapshot(colonnade(x, width = 6))
  expect_snapshot(colonnade(x, width = 7))
  expect_snapshot(colonnade(x, width = 8))
  expect_snapshot(colonnade(x, width = 9))
  expect_snapshot(colonnade(x, width = 10))
  expect_snapshot(colonnade(x, width = 11))
  expect_snapshot(colonnade(x, width = 12))
  expect_snapshot(colonnade(x, width = 13))
  expect_snapshot(colonnade(x, width = 14))
  expect_snapshot(colonnade(x, width = 15))
  expect_snapshot(colonnade(x, width = 16))
  expect_snapshot(colonnade(x, width = 17))
  expect_snapshot(colonnade(x, width = 18))
  expect_snapshot(colonnade(x, width = 19))
  expect_snapshot(colonnade(x, width = 20))
  expect_snapshot(colonnade(x, width = 21))
  expect_snapshot(colonnade(x, width = 22))
  expect_snapshot(colonnade(x, width = 23))
  expect_snapshot(colonnade(x, width = 24))
  expect_snapshot(colonnade(x, width = 25))
  expect_snapshot(colonnade(x, width = 26))
  expect_snapshot(colonnade(x, width = 27))
  expect_snapshot(colonnade(x, width = 28))
  expect_snapshot(colonnade(x, width = 29))
  expect_snapshot(colonnade(x, width = 30))
  expect_snapshot(colonnade(x, width = 31))
  expect_snapshot(colonnade(x, width = 32))
  expect_snapshot(colonnade(x, width = 33))
  expect_snapshot(colonnade(x, width = 34))
  expect_snapshot(colonnade(x, width = 35))
  expect_snapshot(colonnade(x, width = 36))
  expect_snapshot(colonnade(x, width = 37))
  expect_snapshot(colonnade(x, width = 38))
  expect_snapshot(colonnade(x, width = 39))
  expect_snapshot(colonnade(x, width = Inf))

  expect_snapshot(colonnade(rep(list(paste(letters, collapse = " ")), 4), width = Inf))

  # Spurious warnings on Windows
  suppressWarnings(
    expect_snapshot(new_vertical(extra_cols_impl(squeeze_impl(colonnade(x), width = 10))))
  )

  suppressWarnings(
    expect_snapshot(new_vertical(extra_cols_impl(squeeze_impl(colonnade(x), width = 20))))
  )

  suppressWarnings(
    expect_snapshot(new_vertical(extra_cols_impl(squeeze_impl(colonnade(x), width = 30))))
  )

  suppressWarnings(
    expect_snapshot(new_vertical(extra_cols_impl(squeeze_impl(colonnade(x), width = 35))))
  )

  expect_snapshot(new_vertical(extra_cols_impl(squeeze_impl(colonnade(x), width = 40))))
})

test_that("tests from tibble", {
  local_options(width = 80)

  expect_snapshot(colonnade(mtcars[1:8, ], has_row_id = "*", width = 30))
  expect_snapshot(colonnade(iris[1:5, ], width = 30))
  expect_snapshot(colonnade(iris[1:3, ], width = 20))
  expect_snapshot(colonnade(df_all, width = 30))
  expect_snapshot(colonnade(df_all, width = 300))
  expect_snapshot({ options(width = 70); colonnade(df_all, width = 300) })
  expect_snapshot({ options(width = 60); colonnade(df_all, width = 300) })
  expect_snapshot({ options(width = 50); colonnade(df_all, width = 300) })
  expect_snapshot({ options(width = 40); colonnade(df_all, width = 300) })
  expect_snapshot({ options(width = 30); colonnade(df_all, width = 300) })
  expect_snapshot({ options(width = 20); colonnade(df_all, width = 300) })
  expect_snapshot(colonnade(list(`\n` = c("\n", '"'), `\r` = factor("\n")), width = 30))
  expect_snapshot(colonnade(list(a = c("", " ", "a ", " a")), width = 30))
  expect_snapshot(colonnade(list("mean(x)" = 5, "var(x)" = 3), width = 30))
})

test_that("empty", {
  expect_equal(
    format(colonnade(list(a = character(), b = logical()), width = 30)),
    structure(character(), class = "pillar_vertical")
  )
  expect_equal(
    format(colonnade(iris[1:5, character()], width = 30)),
    structure(character(), class = "pillar_vertical")
  )
})

test_that("NA names", {
  x <- list(`NA` = 1:3, set_to_NA = 4:6)
  names(x)[[2]] <- NA_character_
  expect_snapshot(colonnade(x, width = 30))
})

test_that("sep argument", {
  x <- list(sep = 1:3)
  expect_snapshot(colonnade(x, width = 30))
})

test_that("color, options: UTF-8 is TRUE", {
  skip_if(!l10n_info()$`UTF-8`)
  expect_true(TRUE)
})

test_that(paste0("color, options: UTF-8 is ", l10n_info()$`UTF-8`), {
  local_colors()

  if (l10n_info()$`UTF-8`) {
    local_utf8()
    expect_true(cli::is_utf8_output())
  }

  xf <- colonnade(list(x = c((10^(-3:4)) * c(-1, 1), NA)))

  expect_snapshot(crayon::has_color())
  expect_snapshot(crayon::num_colors())
  expect_snapshot(cli::is_utf8_output())

  expect_snapshot(print(xf))
  expect_snapshot(with_options(pillar.subtle_num = TRUE, print(xf)))
  expect_snapshot(with_options(pillar.subtle = FALSE, print(xf)))
  expect_snapshot(with_options(pillar.neg = FALSE, print(xf)))
  expect_snapshot(with_options(pillar.subtle = FALSE, pillar.neg = FALSE, print(xf)))
  expect_snapshot(with_options(pillar.bold = TRUE, print(xf)))

  expect_snapshot(colonnade(list(a_very_long_column_name = 0), width = 15))
})

test_that("color, options: UTF-8 is FALSE", {
  skip_if(l10n_info()$`UTF-8`)
  expect_true(TRUE)
})

test_that("tibble columns", {
  x <- list(a = 1:3, b = data.frame(c = 4:6, d = 7:9))
  expect_snapshot(colonnade(x, width = 30))
})

test_that("tibble columns (nested)", {
  x <- list(
    a = 1:3,
    b = structure(
      list(
        c = 4:6, d = 7:9,
        e = data.frame(f = 10:12, g = 13:15)
      ),
      class = "data.frame"
    )
  )
  expect_snapshot(colonnade(x, width = 40))
})

test_that("tibble columns (empty)", {
  x <- list(
    a = 1:3,
    b = structure(
      list(
        c = 4:6, d = 7:9,
        e = data.frame(f = 10:12)[, 0]
      ),
      class = "data.frame"
    )
  )
  expect_snapshot(colonnade(x, width = 40))
})

test_that("matrix columns (unnamed)", {
  x <- list(a = 1:3, b = matrix(4:9, ncol = 2))
  expect_snapshot(colonnade(x, width = 30))
})

test_that("matrix columns (named)", {
  x <- list(a = 1:3, b = matrix(4:9, ncol = 2, dimnames = list(NULL, c("c", "d"))))
  expect_snapshot(colonnade(x, width = 30))
})

test_that("matrix columns (empty)", {
  x <- list(a = 1:3, b = matrix(4:6, ncol = 1)[, 0])
  expect_snapshot(colonnade(x, width = 30))
})
