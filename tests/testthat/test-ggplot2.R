test_that("ggplot2 snapshot tests", {
  skip_if_not_installed("ggplot2", "3.5.1.9000")
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
