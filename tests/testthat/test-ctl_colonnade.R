test_that("output test", {
  expect_snapshot({
    ctl_colonnade(rep(list(paste(letters, collapse = " ")), 4), width = Inf)
  })
})

test_that("tests from tibble", {
  skip_if_not_installed("rlang", "0.4.11.9000")
  local_options(width = 80)

  expect_snapshot({
    ctl_colonnade(mtcars[1:8, ], has_row_id = "*", width = 30)
    ctl_colonnade(trees[1:5, ], width = 20)
    ctl_colonnade(trees[1:3, ], width = 10)
    ctl_colonnade(df_all, width = 30)
    ctl_colonnade(df_all, width = 300)
    options(width = 70)
    ctl_colonnade(df_all, width = 300)
    options(width = 60)
    ctl_colonnade(df_all, width = 300)
    options(width = 50)
    ctl_colonnade(df_all, width = 300)
    options(width = 40)
    ctl_colonnade(df_all, width = 300)
    options(width = 30)
    ctl_colonnade(df_all, width = 300)
    options(width = 20)
    ctl_colonnade(df_all, width = 300)
    list_with_ctl <- list(c("\n", '"'), factor(c("\n", "\n")))
    names(list_with_ctl) <- c("\n", "\r")
    ctl_colonnade(list_with_ctl, width = 30)
    ctl_colonnade(list(a = c("", " ", "a ", " a")), width = 30)
    ctl_colonnade(list("mean(x)" = 5, "var(x)" = 3), width = 30)
  })
})

test_that("empty", {
  expect_equal(
    format(ctl_colonnade(list(a = character(), b = logical()), width = 30)$body),
    character()
  )
  expect_equal(
    format(ctl_colonnade(trees[1:5, character()], width = 30)$body),
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
  expect_snapshot({
    ctl_colonnade(x, width = 30)
    "dummy"
  })
})

test_that("color", {
  skip_if_not_installed("testthat", "3.1.1")

  local_colors()
  expect_equal(cli::num_ansi_colors(), 16)

  if (l10n_info()$`UTF-8`) {
    local_utf8()
    expect_true(cli::is_utf8_output())
    variant <- "unicode"
  } else {
    variant <- "ansi"
  }

  expect_snapshot(variant = variant, {
    style_na("NA")
    style_neg("-1")
  })

  expect_snapshot(variant = variant, {
    xf <- function() ctl_colonnade(list(x = c((10^(-3:4)) * c(-1, 1), NA)))
    print(xf())
    with_options(pillar.subtle_num = TRUE, print(xf()))
    with_options(pillar.subtle = FALSE, print(xf()))
    with_options(pillar.neg = FALSE, print(xf()))
    with_options(pillar.subtle = FALSE, pillar.neg = FALSE, print(xf()))
    with_options(pillar.bold = TRUE, print(xf()))
  })

  expect_snapshot(variant = variant, {
    ctl_colonnade(list(a_very_long_column_name = 0), width = 20)
  })
})

# Run opposite test to snapshot output but not alter it
if (l10n_info()$`UTF-8`) {
  test_that("color, options: UTF-8 is FALSE", {
    skip("Symmetry")
  })
}

test_that("tibble columns", {
  x <- list(a = 1:3, b = data.frame(c = 4:6, d = 7:9))
  expect_snapshot({
    ctl_colonnade(x, width = 30)
  })
})

test_that("tibble columns (nested)", {
  x <- data_frame(
    a = 1:3,
    b = data_frame(
      c = 4:6, d = 7:9,
      e = data_frame(f = data_frame(g = 10:12, h = 13:15))
    )
  )
  expect_snapshot({
    ctl_colonnade(x, width = 40)
  })
})

test_that("tibble columns (empty)", {
  x <- data_frame(
    a = 1:3,
    b = data_frame(
      c = 4:6, d = 7:9,
      e = data_frame(f = 10:12)[, 0]
    ),
    c = 10:12
  )
  expect_snapshot({
    ctl_colonnade(x, width = 40)
  })
})

test_that("matrix columns (unnamed)", {
  x <- list(a = 1:3, b = matrix(4:9, ncol = 2))
  expect_snapshot({
    ctl_colonnade(x, width = 30)
  })
})

test_that("matrix columns (named)", {
  x <- list(a = 1:3, b = matrix(4:9, ncol = 2, dimnames = list(NULL, c("c", "d"))))
  expect_snapshot({
    ctl_colonnade(x, width = 30)
  })
})

test_that("matrix columns (empty)", {
  expect_snapshot({
    ctl_colonnade(
      list(a = 1:3, b = matrix(4:6, ncol = 1)[, 0], c = 4:6),
      width = 30
    )
  })
})

test_that("filling unused width (#331)", {
  new_foo <- function(x = character()) {
    vec_assert(x, character())
    new_vctr(x, class = "foo")
  }

  data <- new_tbl(list(
    month = month.name[1],
    sentences = new_foo(paste(letters, collapse = " ")),
    blah = paste(LETTERS, collapse = " ")
  ))

  pillar_shaft.foo <- function(x, ...) {
    full <- format(x)
    trunc <- format(paste0(substr(x, 1, 7), cli::symbol$continue))
    pillar::new_pillar_shaft(
      list(full = full, trunc = trunc),
      width = pillar::get_max_extent(full),
      min_width = pillar::get_max_extent(trunc),
      class = "pillar_shaft_foo"
    )
  }

  format.pillar_shaft_foo <- function(x, width, ...) {
    if (pillar::get_max_extent(x$full) <= width) {
      ornament <- x$full
    } else {
      ornament <- x$trunc
    }

    pillar::new_ornament(ornament, align = "left")
  }

  local_methods(pillar_shaft.foo = pillar_shaft.foo, format.pillar_shaft_foo = format.pillar_shaft_foo)

  expect_snapshot({
    data
    options(width = 60)
    print(data)
  })
})

test_that("focus columns", {
  skip_if_not_installed("testthat", "3.1.1")

  local_colors()

  if (l10n_info()$`UTF-8`) {
    local_utf8()
    expect_true(cli::is_utf8_output())
    variant <- "unicode"
  } else {
    variant <- "ansi"
  }

  x <- new_tbl(list(a = new_tbl(list(x = 1, y = 2)), b = "long enough"))

  local_options(width = 80)

  expect_snapshot(variant = variant, {
    tbl_format_setup(x, width = 30, focus = "b")
    tbl_format_setup(x, width = 15, focus = "b")
    tbl_format_setup(x, width = 10, focus = "b")
    tbl_format_setup(x[2:1], width = 30, focus = "a")
    tbl_format_setup(x[2:1], width = 15, focus = "a")
    tbl_format_setup(x[2:1], width = 10, focus = "a")
  })
})
