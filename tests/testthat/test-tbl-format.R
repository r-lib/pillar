test_that("print() returns output invisibly", {
  expect_output(ret <- withVisible(print(as_tbl(trees))))
  expect_false(ret$visible)
  expect_identical(ret$value, as_tbl(trees))
})

test_that("format() reacts on cli.num_colors option", {
  local_colors()

  expect_snapshot({
    format(as_tbl(trees))
    options(cli.num_colors = 1)
    format(as_tbl(trees))
  })
})

test_that("print() output", {
  expect_snapshot({
    as_tbl(mtcars)

    print(as_tbl(mtcars), n = 8, width = 30)

    print(as_tbl(mtcars), n = 30)

    print(as_tbl(mtcars), n = 100)

    print(as_tbl(mtcars), width = 40, max_extra_cols = 1)

    print(as_tbl(mtcars), width = 30, max_footer_lines = 3)

    rlang::with_options(
      tibble.print_min = 5,
      as_tbl(mtcars)
    )

    rlang::with_options(
      tibble.print_max = 50,
      as_tbl(mtcars)
    )

    rlang::with_options(
      tibble.width = 30,
      as_tbl(mtcars)
    )
  })

  expect_snapshot({
    print(as_tbl(mtcars), width = 40, max_extra_cols = 1)

    print(tbl_format_setup(new_tbl(trees, pillar_focus = "Volume"), width = 30))
  })
})

test_that("get_n_print()", {
  local_options(tibble.print_min = 3, tibble.print_max = 6)

  expect_equal(get_n_print(5, 2), 5)
  expect_equal(get_n_print(5, 3), 5)
  expect_equal(get_n_print(5, 5), 5)
  expect_equal(get_n_print(5, 6), 5)
  expect_equal(get_n_print(5, 7), 5)

  expect_equal(get_n_print(Inf, 7), Inf)

  expect_equal(get_n_print(NULL, 2), 2)
  expect_equal(get_n_print(NULL, 3), 3)
  expect_equal(get_n_print(NULL, 5), 5)
  expect_equal(get_n_print(NULL, 6), 6)
  expect_equal(get_n_print(NULL, 7), 3)
})

test_that("get_width_print()", {
  local_options(tibble.width = 120)

  expect_equal(get_width_print(NULL), 120)
  expect_equal(get_width_print(40), 40)
  expect_equal(get_width_print(80), 80)
  expect_equal(get_width_print(140), 140)
})

test_that("format() signals an error if not all arguments in `...`are used", {
    tbl <- new_tbl(trees)
    expect_error(
      format(tbl, unknown_arg = TRUE)
    )
})
