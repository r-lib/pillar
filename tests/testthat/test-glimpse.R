test_that("format_v for values", {
  expect_equal(format_v(1), "1")
  expect_equal(format_v(1:3), "1, 2, 3")
  expect_equal(format_v(NA), "NA")
  expect_equal(format_v(TRUE), "TRUE")
  expect_equal(format_v(logical()), "")
})

test_that("format_v for character", {
  expect_equal(format_v("1"), paste0('"', "1", '"'))
  expect_equal(format_v(letters), collapse(paste0('"', letters, '"')))
  expect_equal(format_v(NA_character_), "NA")
  expect_equal(format_v(character()), "")
})

test_that("format_v for factor", {
  expect_equal(format_v(factor(c("1", "a"))), "1, a")
  expect_equal(format_v(factor(c("foo", '"bar"'))), "foo, \"bar\"")
  expect_equal(format_v(factor()), "")
  # Add quotes around factor levels with comma
  # so they don't appear as if they were two observations (GH 384)
  expect_equal(
    format_v(factor(c("foo, bar", "foo", '"bar"'))),
    collapse(paste0('"', c("foo, bar", "foo", "\\\"bar\\\""), '"'))
  )
})

test_that("format_v for list", {
  expect_equal(format_v(list(1:3)), "[<1, 2, 3>]")
  expect_equal(format_v(as.list(1:3)), "[1, 2, 3]")
  expect_equal(format_v(list(1:3, 4)), "[<1, 2, 3>, 4]")
  expect_equal(format_v(list(1:3, 4:5)), "[<1, 2, 3>, <4, 5>]")
  expect_equal(format_v(list()), "[]")

  expect_equal(format_v(list(list())), "[[]]")
  expect_equal(format_v(list(character())), "[<>]")
  expect_equal(format_v(list(1:3, list(4))), "[<1, 2, 3>, [4]]")
  expect_equal(format_v(list(1:3, list(4:5))), "[<1, 2, 3>, [<4, 5>]]")
})

test_that("glimpse(width = Inf) raises legible error", {
  expect_error(
    glimpse(mtcars, width = Inf)
  )
})

test_that("glimpse calls tbl_sum() (#550)", {
  skip_if(!l10n_info()$`UTF-8`) # capture_output_lines() forces native encoding
  iris2 <- as_override_tbl_sum(iris)

  expect_output(
    glimpse(iris2),
    "Overridden: tbl_sum",
    fixed = TRUE
  )
})

test_that("output test", {
  expect_snapshot({
    glimpse(as_tbl(mtcars), width = 70L)

    glimpse(as_tbl(iris), width = 70L)

    "No columns"
    glimpse(as_tbl(iris[integer()]), width = 70L)

    "Non-syntactic names"
    df <- tibble::tibble(!!!set_names(c(5, 3), c("mean(x)", "var(x)")))
    glimpse(df, width = 28)

    glimpse(as_tbl(df_all), width = 70L)

    "options(tibble.width = 50)"
    withr::with_options(
      list(tibble.width = 50),
      glimpse(as_tbl(df_all))
    )

    "options(tibble.width = 35)"
    withr::with_options(
      list(tibble.width = 35),
      glimpse(as_tbl(df_all))
    )

    "non-tibble"
    glimpse(5)

    iris2 <- as_unknown_rows(iris)
    glimpse(iris2, width = 70L)

    Species <- unique(iris$Species)
    data <- unname(split(iris, iris$Species))
    nested_iris_df <- tibble::tibble(Species, data)
    glimpse(nested_iris_df, width = 70L)

    data <- map(data, as_tbl)
    nested_iris_tbl <- tibble::tibble(Species, data)
    glimpse(nested_iris_tbl, width = 70L)
  })
})
