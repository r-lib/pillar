test_that("bold", {
  value <- 0L

  orig <- get_pillar_option_bold()
  old <- set_pillar_option_bold(value)
  expect_equal(get_pillar_option_bold(), value)
  expect_equal(set_pillar_option_bold(old), value)

  local({
    expect_equal(local_pillar_option_bold(value), old)
    expect_equal(get_pillar_option_bold(), value)
  })
  expect_equal(get_pillar_option_bold(), orig)
})

test_that("subtle", {
  value <- 0L

  orig <- get_pillar_option_subtle()
  old <- set_pillar_option_subtle(value)
  expect_equal(get_pillar_option_subtle(), value)
  expect_equal(set_pillar_option_subtle(old), value)

  local({
    expect_equal(local_pillar_option_subtle(value), old)
    expect_equal(get_pillar_option_subtle(), value)
  })
  expect_equal(get_pillar_option_subtle(), orig)
})

test_that("subtle_num", {
  value <- 0L

  orig <- get_pillar_option_subtle_num()
  old <- set_pillar_option_subtle_num(value)
  expect_equal(get_pillar_option_subtle_num(), value)
  expect_equal(set_pillar_option_subtle_num(old), value)

  local({
    expect_equal(local_pillar_option_subtle_num(value), old)
    expect_equal(get_pillar_option_subtle_num(), value)
  })
  expect_equal(get_pillar_option_subtle_num(), orig)
})

test_that("neg", {
  value <- 0L

  orig <- get_pillar_option_neg()
  old <- set_pillar_option_neg(value)
  expect_equal(get_pillar_option_neg(), value)
  expect_equal(set_pillar_option_neg(old), value)

  local({
    expect_equal(local_pillar_option_neg(value), old)
    expect_equal(get_pillar_option_neg(), value)
  })
  expect_equal(get_pillar_option_neg(), orig)
})

test_that("sigfig", {
  value <- 5L

  orig <- get_pillar_option_sigfig()
  old <- set_pillar_option_sigfig(value)
  expect_equal(get_pillar_option_sigfig(), value)
  expect_equal(set_pillar_option_sigfig(old), value)

  local({
    expect_equal(local_pillar_option_sigfig(value), old)
    expect_equal(get_pillar_option_sigfig(), value)
  })
  expect_equal(get_pillar_option_sigfig(), orig)
})

test_that("min_title_chars", {
  value <- 12L

  orig <- get_pillar_option_min_title_chars()
  old <- set_pillar_option_min_title_chars(value)
  expect_equal(get_pillar_option_min_title_chars(), value)
  expect_equal(set_pillar_option_min_title_chars(old), value)

  local({
    expect_equal(local_pillar_option_min_title_chars(value), old)
    expect_equal(get_pillar_option_min_title_chars(), value)
  })
  expect_equal(get_pillar_option_min_title_chars(), orig)
})

test_that("min_chars", {
  value <- 5L

  orig <- get_pillar_option_min_chars()
  old <- set_pillar_option_min_chars(value)
  expect_equal(get_pillar_option_min_chars(), value)
  expect_equal(set_pillar_option_min_chars(old), value)

  local({
    expect_equal(local_pillar_option_min_chars(value), old)
    expect_equal(get_pillar_option_min_chars(), value)
  })
  expect_equal(get_pillar_option_min_chars(), orig)
})

test_that("max_dec_width", {
  value <- 0L

  orig <- get_pillar_option_max_dec_width()
  old <- set_pillar_option_max_dec_width(value)
  expect_equal(get_pillar_option_max_dec_width(), value)
  expect_equal(set_pillar_option_max_dec_width(old), value)

  local({
    expect_equal(local_pillar_option_max_dec_width(value), old)
    expect_equal(get_pillar_option_max_dec_width(), value)
  })
  expect_equal(get_pillar_option_max_dec_width(), orig)
})

