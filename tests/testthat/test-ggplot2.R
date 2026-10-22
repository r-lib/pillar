# scale_x_num -------------------------------------------------------------------------

test_that("`scale_x_num()` snapshot test", {
  expect_snapshot({
    scale_x_num()
  })
})


# scale_y_num -------------------------------------------------------------------------

test_that("`scale_y_num()` snapshot test", {
  expect_snapshot({
    scale_y_num()
  })
})


# MakeScaleContinuousPositionNum ------------------------------------------------------

test_that("`MakeScaleContinuousPositionNum()` snapshot test", {
  expect_snapshot({
    MakeScaleContinuousPositionNum()
  })
})


# scale_type.pillar_num ---------------------------------------------------------------

test_that("`scale_type.pillar_num()` snapshot test", {
  expect_snapshot({
    scale_type()
  })
})


# rescale.pillar_num ------------------------------------------------------------------

test_that("`rescale.pillar_num()` snapshot test", {
  expect_snapshot({
    rescale()
  })
})


# Legacy tests ------------------------------------------------------------------------

test_that("ggplot2 snapshot tests", {
  skip_if_not_installed("ggplot2", "3.5.2.9000")
  skip_if_not_installed("vdiffr")
  skip_if_not_installed("tibble")

  data <- tibble::tibble(
    x = num((1:10) / 100, fixed_exponent = -3, notation = "eng"),
    y = num((1:10) / 100, scale = 100, label = "%"),
    z = num(10^(-5:4), notation = "si")
  )

  basic <-
    ggplot2::ggplot(data, ggplot2::aes(x, y)) +
    ggplot2::geom_point() +
    ggplot2::theme_minimal(36)

  vdiffr::expect_doppelganger("basic", basic)

  log_scale <-
    ggplot2::ggplot(data, ggplot2::aes(x, z)) +
    ggplot2::geom_point() +
    scale_y_num(transform = "log10") +
    ggplot2::theme_minimal(36)

  vdiffr::expect_doppelganger("log_scale", log_scale)
})
