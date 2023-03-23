# ctl_new_pillar_list -----------------------------------------------------------------

test_that("`ctl_new_pillar_list()` snapshot test", {
  expect_snapshot({
    ctl_new_pillar_list()
  })
})


# new_data_frame_pillar_list ----------------------------------------------------------

test_that("`new_data_frame_pillar_list()` snapshot test", {
  expect_snapshot({
    new_data_frame_pillar_list()
  })
})


# new_matrix_pillar_list --------------------------------------------------------------

test_that("`new_matrix_pillar_list()` snapshot test", {
  expect_snapshot({
    new_matrix_pillar_list()
  })
})


# new_array_pillar_list ---------------------------------------------------------------

test_that("`new_array_pillar_list()` snapshot test", {
  expect_snapshot({
    new_array_pillar_list()
  })
})


# deduct_width ------------------------------------------------------------------------

test_that("`deduct_width()` snapshot test", {
  expect_snapshot({
    deduct_width()
  })
})


# new_single_pillar_list --------------------------------------------------------------

test_that("`new_single_pillar_list()` snapshot test", {
  expect_snapshot({
    new_single_pillar_list()
  })
})


# new_pillar_list ---------------------------------------------------------------------

test_that("`new_pillar_list()` snapshot test", {
  expect_snapshot({
    new_pillar_list()
  })
})


# prepare_title -----------------------------------------------------------------------

test_that("`prepare_title()` snapshot test", {
  expect_snapshot({
    prepare_title()
  })
})
