test_that("print_max", {
  value <- 15L

  orig <- get_pillar_option_print_max()
  expect_identical(orig, pillar_options$print_max())

  old <- set_pillar_option_print_max(value)
  expect_equal(get_pillar_option_print_max(), value)
  expect_equal(expect_invisible(set_pillar_option_print_max(old)), value)

  old <- pillar_options$print_max(value)
  expect_equal(pillar_options$print_max(), value)
  expect_equal(expect_invisible(pillar_options$print_max(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_print_max(value)), old)
    expect_equal(get_pillar_option_print_max(), value)
  })
  expect_equal(get_pillar_option_print_max(), orig)
})

test_that("print_min", {
  value <- 5L

  orig <- get_pillar_option_print_min()
  expect_identical(orig, pillar_options$print_min())

  old <- set_pillar_option_print_min(value)
  expect_equal(get_pillar_option_print_min(), value)
  expect_equal(expect_invisible(set_pillar_option_print_min(old)), value)

  old <- pillar_options$print_min(value)
  expect_equal(pillar_options$print_min(), value)
  expect_equal(expect_invisible(pillar_options$print_min(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_print_min(value)), old)
    expect_equal(get_pillar_option_print_min(), value)
  })
  expect_equal(get_pillar_option_print_min(), orig)
})

test_that("width", {
  value <- 160L

  orig <- get_pillar_option_width()
  expect_identical(orig, pillar_options$width())

  old <- set_pillar_option_width(value)
  expect_equal(get_pillar_option_width(), value)
  expect_equal(expect_invisible(set_pillar_option_width(old)), value)

  old <- pillar_options$width(value)
  expect_equal(pillar_options$width(), value)
  expect_equal(expect_invisible(pillar_options$width(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_width(value)), old)
    expect_equal(get_pillar_option_width(), value)
  })
  expect_equal(get_pillar_option_width(), orig)
})

test_that("max_footer_lines", {
  value <- 15L

  orig <- get_pillar_option_max_footer_lines()
  expect_identical(orig, pillar_options$max_footer_lines())

  old <- set_pillar_option_max_footer_lines(value)
  expect_equal(get_pillar_option_max_footer_lines(), value)
  expect_equal(expect_invisible(set_pillar_option_max_footer_lines(old)), value)

  old <- pillar_options$max_footer_lines(value)
  expect_equal(pillar_options$max_footer_lines(), value)
  expect_equal(expect_invisible(pillar_options$max_footer_lines(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_max_footer_lines(value)), old)
    expect_equal(get_pillar_option_max_footer_lines(), value)
  })
  expect_equal(get_pillar_option_max_footer_lines(), orig)
})

test_that("max_extra_cols", {
  value <- 30L

  orig <- get_pillar_option_max_extra_cols()
  expect_identical(orig, pillar_options$max_extra_cols())

  old <- set_pillar_option_max_extra_cols(value)
  expect_equal(get_pillar_option_max_extra_cols(), value)
  expect_equal(expect_invisible(set_pillar_option_max_extra_cols(old)), value)

  old <- pillar_options$max_extra_cols(value)
  expect_equal(pillar_options$max_extra_cols(), value)
  expect_equal(expect_invisible(pillar_options$max_extra_cols(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_max_extra_cols(value)), old)
    expect_equal(get_pillar_option_max_extra_cols(), value)
  })
  expect_equal(get_pillar_option_max_extra_cols(), orig)
})

test_that("bold", {
  value <- 0L

  orig <- get_pillar_option_bold()
  expect_identical(orig, pillar_options$bold())

  old <- set_pillar_option_bold(value)
  expect_equal(get_pillar_option_bold(), value)
  expect_equal(expect_invisible(set_pillar_option_bold(old)), value)

  old <- pillar_options$bold(value)
  expect_equal(pillar_options$bold(), value)
  expect_equal(expect_invisible(pillar_options$bold(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_bold(value)), old)
    expect_equal(get_pillar_option_bold(), value)
  })
  expect_equal(get_pillar_option_bold(), orig)
})

test_that("subtle", {
  value <- 0L

  orig <- get_pillar_option_subtle()
  expect_identical(orig, pillar_options$subtle())

  old <- set_pillar_option_subtle(value)
  expect_equal(get_pillar_option_subtle(), value)
  expect_equal(expect_invisible(set_pillar_option_subtle(old)), value)

  old <- pillar_options$subtle(value)
  expect_equal(pillar_options$subtle(), value)
  expect_equal(expect_invisible(pillar_options$subtle(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_subtle(value)), old)
    expect_equal(get_pillar_option_subtle(), value)
  })
  expect_equal(get_pillar_option_subtle(), orig)
})

test_that("subtle_num", {
  value <- 0L

  orig <- get_pillar_option_subtle_num()
  expect_identical(orig, pillar_options$subtle_num())

  old <- set_pillar_option_subtle_num(value)
  expect_equal(get_pillar_option_subtle_num(), value)
  expect_equal(expect_invisible(set_pillar_option_subtle_num(old)), value)

  old <- pillar_options$subtle_num(value)
  expect_equal(pillar_options$subtle_num(), value)
  expect_equal(expect_invisible(pillar_options$subtle_num(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_subtle_num(value)), old)
    expect_equal(get_pillar_option_subtle_num(), value)
  })
  expect_equal(get_pillar_option_subtle_num(), orig)
})

test_that("neg", {
  value <- 0L

  orig <- get_pillar_option_neg()
  expect_identical(orig, pillar_options$neg())

  old <- set_pillar_option_neg(value)
  expect_equal(get_pillar_option_neg(), value)
  expect_equal(expect_invisible(set_pillar_option_neg(old)), value)

  old <- pillar_options$neg(value)
  expect_equal(pillar_options$neg(), value)
  expect_equal(expect_invisible(pillar_options$neg(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_neg(value)), old)
    expect_equal(get_pillar_option_neg(), value)
  })
  expect_equal(get_pillar_option_neg(), orig)
})

test_that("sigfig", {
  value <- 5L

  orig <- get_pillar_option_sigfig()
  expect_identical(orig, pillar_options$sigfig())

  old <- set_pillar_option_sigfig(value)
  expect_equal(get_pillar_option_sigfig(), value)
  expect_equal(expect_invisible(set_pillar_option_sigfig(old)), value)

  old <- pillar_options$sigfig(value)
  expect_equal(pillar_options$sigfig(), value)
  expect_equal(expect_invisible(pillar_options$sigfig(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_sigfig(value)), old)
    expect_equal(get_pillar_option_sigfig(), value)
  })
  expect_equal(get_pillar_option_sigfig(), orig)
})

test_that("min_title_chars", {
  value <- 12L

  orig <- get_pillar_option_min_title_chars()
  expect_identical(orig, pillar_options$min_title_chars())

  old <- set_pillar_option_min_title_chars(value)
  expect_equal(get_pillar_option_min_title_chars(), value)
  expect_equal(expect_invisible(set_pillar_option_min_title_chars(old)), value)

  old <- pillar_options$min_title_chars(value)
  expect_equal(pillar_options$min_title_chars(), value)
  expect_equal(expect_invisible(pillar_options$min_title_chars(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_min_title_chars(value)), old)
    expect_equal(get_pillar_option_min_title_chars(), value)
  })
  expect_equal(get_pillar_option_min_title_chars(), orig)
})

test_that("min_chars", {
  value <- 5L

  orig <- get_pillar_option_min_chars()
  expect_identical(orig, pillar_options$min_chars())

  old <- set_pillar_option_min_chars(value)
  expect_equal(get_pillar_option_min_chars(), value)
  expect_equal(expect_invisible(set_pillar_option_min_chars(old)), value)

  old <- pillar_options$min_chars(value)
  expect_equal(pillar_options$min_chars(), value)
  expect_equal(expect_invisible(pillar_options$min_chars(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_min_chars(value)), old)
    expect_equal(get_pillar_option_min_chars(), value)
  })
  expect_equal(get_pillar_option_min_chars(), orig)
})

test_that("max_dec_width", {
  value <- 0L

  orig <- get_pillar_option_max_dec_width()
  expect_identical(orig, pillar_options$max_dec_width())

  old <- set_pillar_option_max_dec_width(value)
  expect_equal(get_pillar_option_max_dec_width(), value)
  expect_equal(expect_invisible(set_pillar_option_max_dec_width(old)), value)

  old <- pillar_options$max_dec_width(value)
  expect_equal(pillar_options$max_dec_width(), value)
  expect_equal(expect_invisible(pillar_options$max_dec_width(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_max_dec_width(value)), old)
    expect_equal(get_pillar_option_max_dec_width(), value)
  })
  expect_equal(get_pillar_option_max_dec_width(), orig)
})

test_that("bidi", {
  value <- TRUE

  orig <- get_pillar_option_bidi()
  expect_identical(orig, pillar_options$bidi())

  old <- set_pillar_option_bidi(value)
  expect_equal(get_pillar_option_bidi(), value)
  expect_equal(expect_invisible(set_pillar_option_bidi(old)), value)

  old <- pillar_options$bidi(value)
  expect_equal(pillar_options$bidi(), value)
  expect_equal(expect_invisible(pillar_options$bidi(old)), value)

  local({
    expect_equal(expect_invisible(local_pillar_option_bidi(value)), old)
    expect_equal(get_pillar_option_bidi(), value)
  })
  expect_equal(get_pillar_option_bidi(), orig)
})

test_that("print.tbl ignores max.print option", {
  trees2 <- as_tbl(trees)
  expect_output(
    withr::with_options(list(max.print = 3), print(trees2)),
    capture_output(print(trees2)),
    fixed = TRUE
  )
})

test_that("print.tbl uses tibble.width option", {
  mtcars2 <- as_tbl(mtcars)
  expect_output(
    withr::with_options(list(tibble.width = 40, dplyr.width = 50, width = 60), print(mtcars2)),
    capture_output(print(mtcars2, width = 40)),
    fixed = TRUE
  )
  expect_output(
    withr::with_options(list(dplyr.width = 50, width = 60), print(mtcars2)),
    capture_output(print(mtcars2, width = 50)),
    fixed = TRUE
  )
  expect_output(
    withr::with_options(list(width = 60), print(mtcars2)),
    capture_output(print(mtcars2, width = 60)),
    fixed = TRUE
  )
})
