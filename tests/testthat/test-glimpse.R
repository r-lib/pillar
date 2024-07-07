test_that("format_glimpse() output test", {
  expect_snapshot({
    "# Atomic numbers"
    format_glimpse(1)
    format_glimpse(1:3)
    format_glimpse(NA)
    format_glimpse(TRUE)
    format_glimpse(logical())

    "# Strings"
    format_glimpse("1")
    format_glimpse(letters)
    format_glimpse(NA_character_)
    format_glimpse(character())

    "# Factors"
    format_glimpse(factor(c("1", "a")))
    format_glimpse(factor(c("foo", '"bar"')))
    format_glimpse(factor())

    "Add quotes around factor levels with comma"
    "so they don't appear as if they were two observations (#384)"
    format_glimpse(factor(c("foo, bar", "foo", '"bar"')))

    "# Lists"
    format_glimpse(list(1:3))
    format_glimpse(as.list(1:3))
    format_glimpse(list(1:3, 4))
    format_glimpse(list(1:3, 4:5))
    format_glimpse(list())
    format_glimpse(list(list()))
    format_glimpse(list(character()))
    format_glimpse(list(1:3, list(4)))
    format_glimpse(list(1:3, list(4:5)))
  })
})

test_that("glimpse(width = Inf) raises legible error", {
  expect_error(
    glimpse(mtcars, width = Inf)
  )
})

test_that("glimpse calls tbl_sum() (#550)", {
  skip_if(!l10n_info()$`UTF-8`) # capture_output_lines() forces native encoding

  local_override_tbl_sum()

  trees2 <- as_override_tbl_sum(trees)

  expect_output(
    glimpse(trees2),
    "Overridden: tbl_sum",
    fixed = TRUE
  )
})

test_that("output test for glimpse()", {
  local_unknown_rows()

  expect_snapshot({
    glimpse(as_tbl(mtcars), width = 70L)

    glimpse(as_tbl(trees), width = 70L)

    "No columns"
    glimpse(as_tbl(trees[integer()]), width = 70L)

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

    trees2 <- as_unknown_rows(trees)
    glimpse(trees2, width = 70L)

    cyl <- unique(mtcars$cyl)
    data <- unname(split(mtcars, mtcars$cyl))
    nested_mtcars_df <- tibble::tibble(cyl, data)
    glimpse(nested_mtcars_df, width = 70L)

    data <- map(data, as_tbl)
    nested_mtcars_tbl <- tibble::tibble(cyl, data)
    glimpse(nested_mtcars_tbl, width = 70L)
  })
})

test_that("color test for missing values", {
  local_colors()

  expect_snapshot({
    "individual data types"
    format_glimpse(df_all$a)
    format_glimpse(df_all$b)
    format_glimpse(df_all$c)
    format_glimpse(df_all$d)
    format_glimpse(df_all$e)
    format_glimpse(df_all$f)
    format_glimpse(df_all$g)
    format_glimpse(df_all$h)
    format_glimpse(df_all$i)

    "tables"
    glimpse(df_all)
    glimpse(as.data.frame(df_all))
  })
})
