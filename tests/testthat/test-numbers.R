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
      medium = num(9:11 /  100 + 0.0005 , label = "%", scale = 100),
      large  = num(9:11 /   10 + 0.005  , label = "%", scale = 100)
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
      scifix = num(10^(-7:6) * 123, notation = "sci", fixed_magnitude = TRUE),
      engfix = num(10^(-7:6) * 123, notation = "eng", fixed_magnitude = TRUE),
      sifix  = num(10^(-7:6) * 123, notation = "si",  fixed_magnitude = TRUE)
    )
  })
})

test_that("coercion", {
  expect_identical(
    vec_c(num(1), num(2)),
    num(as.numeric(1:2))
  )
  skip("Broken")
  expect_identical(
    vec_c(num(1, sigfig = 4), num(2, sigfig = 2)),
    num(as.numeric(1:2), sigfig = 4)
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
    min(num(1:3, label = "€"))
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
