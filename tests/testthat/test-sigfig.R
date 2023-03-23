# split_decimal -----------------------------------------------------------------------

test_that("`split_decimal()` snapshot test", {
  expect_snapshot({
    split_decimal()
  })
})


# fix_exp -----------------------------------------------------------------------------

test_that("`fix_exp()` snapshot test", {
  expect_snapshot({
    fix_exp()
  })
})


# get_decimal_width -------------------------------------------------------------------

test_that("`get_decimal_width()` snapshot test", {
  expect_snapshot({
    get_decimal_width()
  })
})


# safe_signif -------------------------------------------------------------------------

test_that("`safe_signif()` snapshot test", {
  expect_snapshot({
    safe_signif()
  })
})


# safe_divide_10_to -------------------------------------------------------------------

test_that("`safe_divide_10_to()` snapshot test", {
  expect_snapshot({
    safe_divide_10_to()
  })
})


# within_tolerance --------------------------------------------------------------------

test_that("`within_tolerance()` snapshot test", {
  expect_snapshot({
    within_tolerance()
  })
})


# compute_rhs_digits ------------------------------------------------------------------

test_that("`compute_rhs_digits()` snapshot test", {
  expect_snapshot({
    compute_rhs_digits()
  })
})


# compute_min_sigfig ------------------------------------------------------------------

test_that("`compute_min_sigfig()` snapshot test", {
  expect_snapshot({
    compute_min_sigfig()
  })
})


# compute_extra_sigfig ----------------------------------------------------------------

test_that("`compute_extra_sigfig()` snapshot test", {
  expect_snapshot({
    compute_extra_sigfig()
  })
})


# compute_exp -------------------------------------------------------------------------

test_that("`compute_exp()` snapshot test", {
  expect_snapshot({
    compute_exp()
  })
})


# format_mantissa ---------------------------------------------------------------------

test_that("`format_mantissa()` snapshot test", {
  expect_snapshot({
    format_mantissa()
  })
})


# format_neg --------------------------------------------------------------------------

test_that("`format_neg()` snapshot test", {
  expect_snapshot({
    format_neg()
  })
})


# format_lhs --------------------------------------------------------------------------

test_that("`format_lhs()` snapshot test", {
  expect_snapshot({
    format_lhs()
  })
})


# underline_3_back --------------------------------------------------------------------

test_that("`underline_3_back()` snapshot test", {
  expect_snapshot({
    underline_3_back()
  })
})


# format_dec --------------------------------------------------------------------------

test_that("`format_dec()` snapshot test", {
  expect_snapshot({
    format_dec()
  })
})


# format_rhs --------------------------------------------------------------------------

test_that("`format_rhs()` snapshot test", {
  expect_snapshot({
    format_rhs()
  })
})


# underline_3 -------------------------------------------------------------------------

test_that("`underline_3()` snapshot test", {
  expect_snapshot({
    underline_3()
  })
})


# style_num ---------------------------------------------------------------------------

test_that("`style_num()` snapshot test", {
  expect_snapshot({
    style_num()
  })
})


# assemble_decimal --------------------------------------------------------------------

test_that("`assemble_decimal()` snapshot test", {
  expect_snapshot({
    assemble_decimal()
  })
})


# format.pillar_shaft_decimal ---------------------------------------------------------

test_that("`format.pillar_shaft_decimal()` snapshot test", {
  expect_snapshot({
    format()
  })
})
