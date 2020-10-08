test_that("print() returns output invisibly", {
  expect_output(ret <- withVisible(print(as_tbl(trees))))
  expect_false(ret$visible)
  expect_identical(ret$value, as_tbl(trees))
})

test_that("print() output", {
  verify_output("print.txt", {
    as_tbl(mtcars)

    print(as_tbl(mtcars), n = 8, width = 30)

    print(as_tbl(mtcars), n = 30)

    print(as_tbl(mtcars), n = 100)

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
})

# FIXME: Test get_n_print() and get_width_print() for more combinations
