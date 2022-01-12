test_that("sanity check (1)", {
  expect_equal(cli::num_ansi_colors(), 1)
  expect_false(has_color())
  expect_equal(num_colors(), 1)

  expect_snapshot({
    cli::num_ansi_colors()
    has_color()
    num_colors()
    style_na("NA")
  })
})

test_that("output test", {
  x <- list(
    column_zero_one = 1:3 + 0.23,
    col_02 = letters[1:3],
    col_03 = factor(letters[1:3]),
    col_04 = ordered(letters[1:3])
  )
  expect_snapshot({
    colonnade(x, width = 4)
    colonnade(x, width = 5)
    colonnade(x, width = 6)
    colonnade(x, width = 7)
    colonnade(x, width = 8)
    colonnade(x, width = 9)
    colonnade(x, width = 10)
    colonnade(x, width = 11)
    colonnade(x, width = 12)
    colonnade(x, width = 13)
    colonnade(x, width = 14)
    colonnade(x, width = 15)
    colonnade(x, width = 16)
    colonnade(x, width = 17)
    colonnade(x, width = 18)
    colonnade(x, width = 19)
    colonnade(x, width = 20)
    colonnade(x, width = 21)
    colonnade(x, width = 22)
    colonnade(x, width = 23)
    colonnade(x, width = 24)
    colonnade(x, width = 25)
    colonnade(x, width = 26)
    colonnade(x, width = 27)
    colonnade(x, width = 28)
    colonnade(x, width = 29)
    colonnade(x, width = 30)
    colonnade(x, width = 31)
    colonnade(x, width = 32)
    colonnade(x, width = 33)
    colonnade(x, width = 34)
    colonnade(x, width = 35)
    colonnade(x, width = 36)
    colonnade(x, width = 37)
    colonnade(x, width = 38)
    colonnade(x, width = 39)
    colonnade(x, width = Inf)
  })

  expect_snapshot({
    colonnade(rep(list(paste(letters, collapse = " ")), 4), width = Inf)
  })

  # Spurious warnings on Windows
  suppressWarnings(
    expect_snapshot({
      as_glue(extra_cols_impl(squeeze_impl(colonnade(x), width = 10)))
    })
  )

  suppressWarnings(
    expect_snapshot({
      as_glue(extra_cols_impl(squeeze_impl(colonnade(x), width = 20)))
    })
  )

  suppressWarnings(
    expect_snapshot({
      as_glue(extra_cols_impl(squeeze_impl(colonnade(x), width = 30)))
    })
  )

  suppressWarnings(
    expect_snapshot({
      as_glue(extra_cols_impl(squeeze_impl(colonnade(x), width = 35)))
    })
  )

  expect_snapshot({
    as_glue(extra_cols_impl(squeeze_impl(colonnade(x), width = 40)))
  })
})

test_that("tests from tibble", {
  skip_if_not_installed("rlang", "0.4.11.9000")
  local_options(width = 80)

  expect_snapshot({
    colonnade(mtcars[1:8, ], has_row_id = "*", width = 30)
    colonnade(iris[1:5, ], width = 30)
    colonnade(iris[1:3, ], width = 20)
    colonnade(df_all, width = 30)
    colonnade(df_all, width = 300)
    options(width = 70)
    colonnade(df_all, width = 300)
    options(width = 60)
    colonnade(df_all, width = 300)
    options(width = 50)
    colonnade(df_all, width = 300)
    options(width = 40)
    colonnade(df_all, width = 300)
    options(width = 30)
    colonnade(df_all, width = 300)
    options(width = 20)
    colonnade(df_all, width = 300)
    list_with_ctl <- list(c("\n", '"'), factor(c("\n", "\n")))
    names(list_with_ctl) <- c("\n", "\r")
    colonnade(list_with_ctl, width = 30)
    colonnade(list(a = c("", " ", "a ", " a")), width = 30)
    colonnade(list("mean(x)" = 5, "var(x)" = 3), width = 30)
  })
})

test_that("empty", {
  expect_equal(
    format(colonnade(list(a = character(), b = logical()), width = 30)),
    as_glue(character())
  )
  expect_equal(
    format(colonnade(iris[1:5, character()], width = 30)),
    as_glue(character())
  )
})

test_that("NA names", {
  x <- list(`NA` = 1:3, set_to_NA = 4:6)
  names(x)[[2]] <- NA_character_
  expect_snapshot({
    colonnade(x, width = 30)
  })
})

test_that("sep argument", {
  x <- list(sep = 1:3)
  expect_snapshot({
    colonnade(x, width = 30)
    "dummy"
  })
})

test_that("color", {
  skip_if_not_installed("testthat", "3.1.1")

  local_colors()
  expect_equal(cli::num_ansi_colors(), 16)
  expect_true(has_color())
  expect_equal(num_colors(), 16)

  if (l10n_info()$`UTF-8`) {
    local_utf8()
    expect_true(cli::is_utf8_output())
    variant <- "unicode"
  } else {
    variant <- "ansi"
  }

  expect_snapshot(variant = variant, {
    cli::num_ansi_colors()
    has_color()
    num_colors()
    style_na("NA")
    style_neg("-1")
  })

  expect_snapshot(variant = variant, {
    style_na("NA")
  })

  xf <- colonnade(list(x = c((10^(-3:4)) * c(-1, 1), NA)))

  expect_snapshot(variant = variant, {
    print(xf)
    with_options(pillar.subtle_num = TRUE, print(xf))
    with_options(pillar.subtle = FALSE, print(xf))
    with_options(pillar.neg = FALSE, print(xf))
    with_options(pillar.subtle = FALSE, pillar.neg = FALSE, print(xf))
    with_options(pillar.bold = TRUE, print(xf))
  })

  expect_snapshot(variant = variant, {
    colonnade(list(a_very_long_column_name = 0), width = 15)
  })
})

test_that("sanity check (2)", {
  expect_equal(cli::num_ansi_colors(), 1)
  expect_false(has_color())
  expect_equal(num_colors(), 1)

  expect_snapshot({
    cli::num_ansi_colors()
    has_color()
    num_colors()
    style_na("NA")
  })
})

test_that("tibble columns", {
  x <- list(a = 1:3, b = data.frame(c = 4:6, d = 7:9))
  expect_snapshot({
    colonnade(x, width = 30)
  })
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
  expect_snapshot({
    colonnade(x, width = 40)
  })
})

test_that("tibble columns (empty)", {
  x <- list(
    a = 1:3,
    b = structure(
      list(
        c = 4:6, d = 7:9,
        e = data.frame(f = 10:12)[, 0],
        f = 10:12
      ),
      class = "data.frame"
    )
  )
  expect_snapshot({
    colonnade(x, width = 40)
  })
})

test_that("matrix columns (unnamed)", {
  x <- list(a = 1:3, b = matrix(4:9, ncol = 2))
  expect_snapshot({
    colonnade(x, width = 30)
  })
})

test_that("matrix columns (named)", {
  x <- list(a = 1:3, b = matrix(4:9, ncol = 2, dimnames = list(NULL, c("c", "d"))))
  expect_snapshot({
    colonnade(x, width = 30)
  })
})

test_that("matrix columns (empty)", {
  x <- list(a = 1:3, b = matrix(4:6, ncol = 1)[, 0], c = 4:6)
  expect_snapshot({
    colonnade(x, width = 30)
  })
})
