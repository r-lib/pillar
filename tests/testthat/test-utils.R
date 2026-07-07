# df_head -----------------------------------------------------------------------------

test_that("`df_head()` snapshot test", {
  expect_snapshot({
    df_head()
  })
})


# vec_head ----------------------------------------------------------------------------

test_that("`vec_head()` snapshot test", {
  expect_snapshot({
    vec_head()
  })
})


# cat_line ----------------------------------------------------------------------------

test_that("`cat_line()` snapshot test", {
  expect_snapshot({
    cat_line()
  })
})


# str_trunc ---------------------------------------------------------------------------

test_that("`str_trunc()` snapshot test", {
  expect_snapshot({
    str_trunc()
  })
})


# str_add_ellipsis --------------------------------------------------------------------

test_that("`str_add_ellipsis()` snapshot test", {
  expect_snapshot({
    str_add_ellipsis()
  })
})


# str_add_ellipsis_untick -------------------------------------------------------------

test_that("`str_add_ellipsis_untick()` snapshot test", {
  expect_snapshot({
    str_add_ellipsis_untick()
  })
})


# paste_with_space_if_needed ----------------------------------------------------------

test_that("`paste_with_space_if_needed()` snapshot test", {
  expect_snapshot({
    paste_with_space_if_needed()
  })
})


# check_sigfig ------------------------------------------------------------------------

test_that("`check_sigfig()` snapshot test", {
  expect_snapshot({
    check_sigfig()
  })
})


# slice -------------------------------------------------------------------------------

test_that("`slice()` snapshot test", {
  expect_snapshot({
    slice()
  })
})


# bind_rows ---------------------------------------------------------------------------

test_that("`bind_rows()` snapshot test", {
  expect_snapshot({
    bind_rows()
  })
})


# get_ellipsis ------------------------------------------------------------------------

test_that("`get_ellipsis()` snapshot test", {
  expect_snapshot({
    get_ellipsis()
  })
})


# is_latex_output ---------------------------------------------------------------------

test_that("`is_latex_output()` snapshot test", {
  expect_snapshot({
    is_latex_output()
  })
})


# remove_as_is_class ------------------------------------------------------------------

test_that("`remove_as_is_class()` snapshot test", {
  expect_snapshot({
    remove_as_is_class()
  })
})


# v -----------------------------------------------------------------------------------

test_that("`v()` snapshot test", {
  expect_snapshot({
    v()
  })
})


# safe_is_na --------------------------------------------------------------------------

test_that("`safe_is_na()` snapshot test", {
  expect_snapshot({
    safe_is_na()
  })
})


# safe_any_na -------------------------------------------------------------------------

test_that("`safe_any_na()` snapshot test", {
  expect_snapshot({
    safe_any_na()
  })
})


# vec_lead ----------------------------------------------------------------------------

test_that("`vec_lead()` snapshot test", {
  expect_snapshot({
    vec_lead()
  })
})


# vec_lag -----------------------------------------------------------------------------

test_that("`vec_lag()` snapshot test", {
  expect_snapshot({
    vec_lag()
  })
})


# superdigit --------------------------------------------------------------------------

test_that("`superdigit()` snapshot test", {
  expect_snapshot({
    superdigit()
  })
})


# superdigit_sep_default --------------------------------------------------------------

test_that("`superdigit_sep_default()` snapshot test", {
  expect_snapshot({
    superdigit_sep_default()
  })
})
