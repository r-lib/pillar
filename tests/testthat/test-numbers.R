test_that("output test", {
  expect_snapshot({
    tibble::tibble(
      x0 = num(9:11 * 100 + 0.5, 3),
      x1 = num(9:11 * 100 + 0.5, 4),
      x2 = num(9:11 * 100 + 0.5, 5),
    )

    # Maximum digits after the decimal points
    tibble::tibble(
      x3 = num(9:11 * 100 + 0.5, digits = 0),
      x4 = num(9:11 * 100 + 0.5, digits = 1),
      x5 = num(9:11 * 100 + 0.5, digits = 2),
    )

    # FIXME: Use fixed digits
    tibble::tibble::tibble(
      usd = num(9:11 * 100 + 0.5, digits = 2, label = "USD"),
      gbp = num(9:11 * 100 + 0.5, digits = 2, label = "£"),
      chf = num(9:11 * 100 + 0.5, digits = 2, label = "SFr")
    )

    # Scale
    tibble::tibble::tibble(
      small  = num(9:11 / 1000 + 0.00005, label = "%", scale = 100),
      medium = num(9:11 /  100 + 0.0005 , label = "%", scale = 100),
      large  = num(9:11 /   10 + 0.005  , label = "%", scale = 100)
    )

    # Notation
    tibble::tibble(
      sci  = num(10^(-13:6), notation = "sci"),
      eng  = num(10^(-13:6), notation = "eng"),
      dec  = num(10^(-13:6), notation = "dec")
    )

    # Fixed exponent notation
    tibble::tibble(
      scifix  = num(10^(-13:6) * 123, notation = "scifix"),
      engfix  = num(10^(-13:6) * 123, notation = "engfix")
    )
  })
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
