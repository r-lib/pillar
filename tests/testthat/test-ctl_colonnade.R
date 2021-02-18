test_that("output test", {
  expect_snapshot(ctl_colonnade(rep(list(paste(letters, collapse = " ")), 4), width = Inf))
})

test_that("tests from tibble", {
  local_options(width = 80)

  expect_snapshot(ctl_colonnade(mtcars[1:8, ], has_row_id = "*", width = 30))
  expect_snapshot(ctl_colonnade(iris[1:5, ], width = 30))
  expect_snapshot(ctl_colonnade(iris[1:3, ], width = 20))
  expect_snapshot(ctl_colonnade(df_all, width = 30))
  expect_snapshot(ctl_colonnade(df_all, width = 300))
  expect_snapshot({ options(width = 70); ctl_colonnade(df_all, width = 300) })
  expect_snapshot({ options(width = 60); ctl_colonnade(df_all, width = 300) })
  expect_snapshot({ options(width = 50); ctl_colonnade(df_all, width = 300) })
  expect_snapshot({ options(width = 40); ctl_colonnade(df_all, width = 300) })
  expect_snapshot({ options(width = 30); ctl_colonnade(df_all, width = 300) })
  expect_snapshot({ options(width = 20); ctl_colonnade(df_all, width = 300) })
  expect_snapshot(ctl_colonnade(list(`\n` = c("\n", '"'), `\r` = factor("\n")), width = 30))
  expect_snapshot(ctl_colonnade(list(a = c("", " ", "a ", " a")), width = 30))
  expect_snapshot(ctl_colonnade(list("mean(x)" = 5, "var(x)" = 3), width = 30))
})

test_that("empty", {
  expect_equal(
    format(ctl_colonnade(list(a = character(), b = logical()), width = 30)),
    character()
  )
  expect_equal(
    format(ctl_colonnade(iris[1:5, character()], width = 30)),
    character()
  )
})

test_that("NA names", {
  expect_snapshot({
    x <- list(`NA` = 1:3, set_to_NA = 4:6)
    names(x)[[2]] <- NA_character_
    ctl_colonnade(x, width = 30)
  })
})

test_that("sep argument", {
  x <- list(sep = 1:3)
  expect_snapshot(ctl_colonnade(x, width = 30))
  expect_snapshot("dummy")
})

# Run opposite test to snapshot output but not alter it
if (!l10n_info()$`UTF-8`) {
  test_that("color, options: UTF-8 is TRUE", {
    skip("Symmetry")
  })
}

test_that(paste0("color, options: UTF-8 is ", l10n_info()$`UTF-8`), {
  # FIXME: This failed for some reason on 2020-11-18, maybe auto-fixes later?
  skip_if(Sys.getenv("RSTUDIO") == "1")

  local_colors()
  expect_true(crayon::has_color())
  expect_equal(crayon::num_colors(), 16)

  if (l10n_info()$`UTF-8`) {
    local_utf8()
    expect_true(cli::is_utf8_output())
  }

  expect_snapshot(style_na("NA"))
  expect_snapshot(style_neg("-1"))

  expect_snapshot(xf <- function() ctl_colonnade(list(x = c((10^(-3:4)) * c(-1, 1), NA))))
  expect_snapshot(print(xf()))
  expect_snapshot(with_options(pillar.subtle_num = TRUE, print(xf())))
  expect_snapshot(with_options(pillar.subtle = FALSE, print(xf())))
  expect_snapshot(with_options(pillar.neg = FALSE, print(xf())))
  expect_snapshot(with_options(pillar.subtle = FALSE, pillar.neg = FALSE, print(xf())))
  expect_snapshot(with_options(pillar.bold = TRUE, print(xf())))

  expect_snapshot(ctl_colonnade(list(a_very_long_column_name = 0), width = 20))
})

# Run opposite test to snapshot output but not alter it
if (l10n_info()$`UTF-8`) {
  test_that("color, options: UTF-8 is FALSE", {
    skip("Symmetry")
  })
}

test_that("tibble columns", {
  x <- list(a = 1:3, b = data.frame(c = 4:6, d = 7:9))
  expect_snapshot(ctl_colonnade(x, width = 30))
})

test_that("tibble columns (nested)", {
  x <- vctrs::data_frame(
    a = 1:3,
    b = vctrs::data_frame(
      c = 4:6, d = 7:9,
      e = data.frame(f = 10:12, g = 13:15)
    )
  )
  expect_snapshot(ctl_colonnade(x, width = 40))
})

test_that("tibble columns (empty)", {
  x <- vctrs::data_frame(
    a = 1:3,
    b = vctrs::data_frame(
      c = 4:6, d = 7:9,
      e = vctrs::data_frame(f = 10:12)[, 0]
    )
  )
  expect_snapshot(ctl_colonnade(x, width = 40))
})

test_that("matrix columns (unnamed)", {
  x <- list(a = 1:3, b = matrix(4:9, ncol = 2))
  expect_snapshot(ctl_colonnade(x, width = 30))
})

test_that("matrix columns (named)", {
  x <- list(a = 1:3, b = matrix(4:9, ncol = 2, dimnames = list(NULL, c("c", "d"))))
  expect_snapshot(ctl_colonnade(x, width = 30))
})

test_that("matrix columns (empty)", {
  x <- list(a = 1:3, b = matrix(4:6, ncol = 1)[, 0])
  expect_snapshot(ctl_colonnade(x, width = 30))
})
