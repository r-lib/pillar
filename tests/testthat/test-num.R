# num ---------------------------------------------------------------------------------

test_that("`num()` snapshot test", {
  expect_snapshot({
    num()
  })
})


# vec_ptype_full ----------------------------------------------------------------------

test_that("`vec_ptype_full()` snapshot test", {
  expect_snapshot({
    vec_ptype_full()
  })
})


# vec_ptype_abbr ----------------------------------------------------------------------

test_that("`vec_ptype_abbr()` snapshot test", {
  expect_snapshot({
    vec_ptype_abbr()
  })
})


# format ------------------------------------------------------------------------------

test_that("`format()` snapshot test", {
  expect_snapshot({
    format()
  })
})


# vec_arith ---------------------------------------------------------------------------

test_that("`vec_arith()` snapshot test", {
  expect_snapshot({
    vec_arith()
  })
})


# vec_arith.pillar_num ----------------------------------------------------------------

test_that("`vec_arith.pillar_num()` snapshot test", {
  expect_snapshot({
    vec_arith.pillar_num()
  })
})


# vec_math ----------------------------------------------------------------------------

test_that("`vec_math()` snapshot test", {
  expect_snapshot({
    vec_math()
  })
})


# set_num_opts ------------------------------------------------------------------------

test_that("`set_num_opts()` snapshot test", {
  expect_snapshot({
    set_num_opts()
  })
})


# vec_ptype2.pillar_num ---------------------------------------------------------------

test_that("`vec_ptype2.pillar_num()` snapshot test", {
  expect_snapshot({
    vec_ptype2.pillar_num()
  })
})


# vec_ptype2.double -------------------------------------------------------------------

test_that("`vec_ptype2.double()` snapshot test", {
  expect_snapshot({
    vec_ptype2.double()
  })
})


# vec_ptype2.integer ------------------------------------------------------------------

test_that("`vec_ptype2.integer()` snapshot test", {
  expect_snapshot({
    vec_ptype2.integer()
  })
})


# vec_cast.pillar_num -----------------------------------------------------------------

test_that("`vec_cast.pillar_num()` snapshot test", {
  expect_snapshot({
    vec_cast.pillar_num()
  })
})


# vec_cast.double ---------------------------------------------------------------------

test_that("`vec_cast.double()` snapshot test", {
  expect_snapshot({
    vec_cast.double()
  })
})


# Legacy tests ------------------------------------------------------------------------

test_that("output test", {
  expect_snapshot({
    tibble::tibble(
      x0 = num(9:11 * 100 + 0.5, sigfig = 3),
      x1 = num(9:11 * 100 + 0.5, sigfig = 4),
      x2 = num(9:11 * 100 + 0.5, sigfig = 5),
    )

    # Maximum digits after the decimal points
    tibble::tibble(
      x3 = num(9:11 * 100 + 0.5, digits = 0),
      x4 = num(9:11 * 100 + 0.5, digits = -1),
      x5 = num(9:11 * 100 + 0.5, digits = -2),
    )

    # Exact digits after the decimal point, with label
    tibble::tibble(
      usd = num(9:11 * 100 + 0.5, digits = 2, label = "USD"),
      gbp = num(9:11 * 100 + 0.5, digits = 2, label = "£"),
      chf = num(9:11 * 100 + 0.5, digits = 2, label = "SFr")
    )

    # Scale
    tibble::tibble(
      small  = num(9:11 / 1000 + 0.00005, label = "%", scale = 100),
      medium = num(9:11 / 100 + 0.0005, label = "%", scale = 100),
      large  = num(9:11 / 10 + 0.005, label = "%", scale = 100)
    )

    # Notation
    tibble::tibble(
      sci = num(10^(-13:6), notation = "sci"),
      eng = num(10^(-13:6), notation = "eng"),
      dec = num(10^(-13:6), notation = "dec"),
      si  = num(10^(-13:6), notation = "si"),
    )

    # Fixed exponent notation
    tibble::tibble(
      scimin = num(10^(-7:6) * 123, notation = "sci", fixed_exponent = -Inf),
      engmin = num(10^(-7:6) * 123, notation = "eng", fixed_exponent = -Inf),
      simin  = num(10^(-7:6) * 123, notation = "si", fixed_exponent = -Inf)
    )

    tibble::tibble(
      scismall = num(10^(-7:6) * 123, notation = "sci", fixed_exponent = -3),
      engsmall = num(10^(-7:6) * 123, notation = "eng", fixed_exponent = -3),
      sismall  = num(10^(-7:6) * 123, notation = "si", fixed_exponent = -3)
    )

    tibble::tibble(
      scilarge = num(10^(-7:6) * 123, notation = "sci", fixed_exponent = 3),
      englarge = num(10^(-7:6) * 123, notation = "eng", fixed_exponent = 3),
      silarge  = num(10^(-7:6) * 123, notation = "si", fixed_exponent = 3)
    )

    tibble::tibble(
      scimax = num(10^(-7:6) * 123, notation = "sci", fixed_exponent = Inf),
      engmax = num(10^(-7:6) * 123, notation = "eng", fixed_exponent = Inf),
      simax  = num(10^(-7:6) * 123, notation = "si", fixed_exponent = Inf)
    )

    # Extra significant figures
    tibble::tibble(
      default = num(100 + 1:3 * 0.001),
      extra1 = num(100 + 1:3 * 0.001, extra_sigfig = TRUE),
      extra2 = num(100 + 1:3 * 0.0001, extra_sigfig = TRUE),
      extra3 = num(10000 + 1:3 * 0.00001, extra_sigfig = TRUE)
    )
  })
})

test_that("many digits", {
  expect_snapshot({
    num(123456789 * 10^(-9:0))
    num(123456789 * 10^(-9:1))
    num(123456789 * 10^(-9:1), notation = "dec")
    num(123456789 * 10^(-9:1), notation = "sci")
    num(123456789 * 10^(-9:1), notation = "eng")
    num(123456789 * 10^(-9:1), notation = "si")
    num(123456789 * 10^(-9:1), notation = "sci", fixed_exponent = -Inf)
    num(123456789 * 10^(-9:1), notation = "eng", fixed_exponent = -Inf)
    num(123456789 * 10^(-9:1), notation = "si", fixed_exponent = -Inf)
    num(123456789 * 10^(-9:1), notation = "sci", fixed_exponent = -3)
    num(123456789 * 10^(-9:1), notation = "sci", fixed_exponent = 3)
    num(123456789 * 10^(-9:1), notation = "sci", fixed_exponent = Inf)
  })
})

test_that("sigfig and digits", {
  expect_snapshot({
    num(c(578890.23, 240234.131, 40234.1))
    num(c(578890.23, 240234.131, 40234.1), sigfig = 6)
    num(c(578890.23, 240234.131, 40234.1), sigfig = 7)
    num(c(578890.23, 240234.131, 40234.1), sigfig = 8)
    num(c(578890.23, 240234.131, 40234.1), sigfig = 9)
    num(c(578890.23, 240234.131, 40234.1), digits = 2)
    num(c(578890.23, 240234.131, 40234.1), digits = 3)
    num(c(578890.23, 240234.131, 40234.1), digits = 4)
    num(c(578890.23, 240234.131, 40234.1), digits = -2)
    num(c(578890.23, 240234.131, 40234.1), digits = -3)
    num(c(578890.23, 240234.131, 40234.1), digits = -4)
  })
})

test_that("forced digits", {
  expect_snapshot({
    pillar(num(1:3, digits = 2))
    pillar(num(1:3, digits = 5))
  })
})

test_that("all NA", {
  expect_snapshot({
    pillar(num(NA_real_, digits = 2))
    pillar(num(NA_real_, notation = "si"))
    pillar(num(NA_real_, notation = "sci"))
    pillar(num(NA_real_, notation = "eng"))
    pillar(num(NA_real_, notation = "sci", fixed_exponent = -1))
    pillar(num(NA_real_, notation = "sci", fixed_exponent = -Inf))
  })
})

test_that("some NA", {
  expect_snapshot({
    pillar(num(c(NA_real_, 1000), digits = 2))
    pillar(num(c(NA_real_, 1000), notation = "si"))
    pillar(num(c(NA_real_, 1000), notation = "sci"))
    pillar(num(c(NA_real_, 1000), notation = "eng"))
    pillar(num(c(NA_real_, 1000), notation = "sci", fixed_exponent = -1))
    pillar(num(c(NA_real_, 1000), notation = "sci", fixed_exponent = -Inf))
  })
})

test_that("coercion", {
  expect_identical(
    vec_c(num(1), num(2)),
    num(as.numeric(1:2))
  )
  expect_identical(
    vec_c(num(1, sigfig = 4), num(2, sigfig = 2, notation = "si")),
    num(as.numeric(1:2), sigfig = 4)
  )
  expect_identical(
    vec_c(num(1, label = "a"), 2),
    num(as.numeric(1:2), label = "a")
  )
  expect_identical(
    vec_c(1, num(2, label = "a")),
    num(as.numeric(1:2), label = "a")
  )
  expect_error(
    vec_c(num(1, label = "a"), num(2, label = "b"))
  )
})

test_that("arithmetics", {
  expect_snapshot({
    num(1) + 2
    1 + num(2)
    1L + num(2)
    num(3.23456, sigfig = 4) - num(2)
    num(3, digits = 2) * num(4, sigfig = 2)
    -num(2)
  })
})

test_that("mathematics", {
  expect_snapshot({
    min(num(1:3, label = "$"))
    mean(num(1:3, notation = "eng"))
    sin(num(1:3, label = "%", scale = 100))
  })
})

test_that("formatting", {
  expect_snapshot({
    format(num(-1:3))
    format(num(-1:3), trim = TRUE)
  })
})

test_that("attribute", {
  expect_snapshot({
    set_num_opts(1, sigfig = 2, fixed_exponent = -Inf)
    set_num_opts(1000, digits = 2, notation = "eng")
  })
})
