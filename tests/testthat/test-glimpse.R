# glimpse -----------------------------------------------------------------------------

test_that("`glimpse()` snapshot test", {
  expect_snapshot({
    glimpse()
  })
})


# glimpse.tbl -------------------------------------------------------------------------

test_that("`glimpse.tbl()` snapshot test", {
  expect_snapshot({
    glimpse()
  })
})


# glimpse.default ---------------------------------------------------------------------

test_that("`glimpse.default()` snapshot test", {
  expect_snapshot({
    glimpse()
  })
})


# format_glimpse ----------------------------------------------------------------------

test_that("`format_glimpse()` snapshot test", {
  expect_snapshot({
    format_glimpse()
  })
})


# format_glimpse_1 --------------------------------------------------------------------

test_that("`format_glimpse_1()` snapshot test", {
  expect_snapshot({
    format_glimpse_1()
  })
})


# format_glimpse_ ---------------------------------------------------------------------

test_that("`format_glimpse_()` snapshot test", {
  expect_snapshot({
    format_glimpse_()
  })
})


# format_glimpse.default --------------------------------------------------------------

test_that("`format_glimpse.default()` snapshot test", {
  expect_snapshot({
    format_glimpse()
  })
})


# format_glimpse.list -----------------------------------------------------------------

test_that("`format_glimpse.list()` snapshot test", {
  expect_snapshot({
    format_glimpse()
  })
})


# format_glimpse.character ------------------------------------------------------------

test_that("`format_glimpse.character()` snapshot test", {
  expect_snapshot({
    format_glimpse()
  })
})


# format_glimpse.factor ---------------------------------------------------------------

test_that("`format_glimpse.factor()` snapshot test", {
  expect_snapshot({
    format_glimpse()
  })
})


# Legacy tests ------------------------------------------------------------------------

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
  skip_if_not_installed("tibble")
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

test_that("format_glimpse_1() handles commas correctly", {
  local_colors()

  expect_snapshot({
    "# Vector with commas"
    format_glimpse_1(1:3)
    format_glimpse_1(c("a", "b", "c"))
    format_glimpse_1(c(1, NA, 3))

    "# Empty and single-element vectors"
    format_glimpse_1(integer())
    format_glimpse_1(1)

    "# Mixed content with commas"
    format_glimpse_1(list(1:3, "a, b", NA))

    # format_glimpse_1 with .inner = TRUE
    "# Simple list elements"
    format_glimpse_1(1:3, .inner = TRUE)
    format_glimpse_1(letters[1:3], .inner = TRUE)

    "# Nested lists"
    format_glimpse_1(list(1:3), .inner = TRUE)
    format_glimpse_1(list(list(1:3), list(4:6)), .inner = TRUE)

    "# Mixed content"
    format_glimpse_1(list(1:3, "a,b,c"), .inner = TRUE)
    format_glimpse_1(list(list(1, 2, 3), letters[1:3]), .inner = TRUE)

    "# Empty and NULL"
    format_glimpse_1(list(), .inner = TRUE)
    format_glimpse_1(NULL, .inner = TRUE)
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
