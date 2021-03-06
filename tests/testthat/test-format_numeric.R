test_that("same pillar at different widths", {
  v <- 10^c(-9, -6, 3, 9)
  x <- pillar(v)
  expect_equal(get_min_width(x$data), 7)
  expect_equal(get_width(x$data), 7)
  expect_snapshot({
    pillar(v, width = 4)
    pillar(v, width = 7)
    pillar(v, width = 10)
    pillar(v, width = 15)
    pillar(v, width = 22)
  })
})
