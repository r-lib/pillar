test_that("output test", {
  expect_snapshot({
    pillar(as.list(1:3))
    pillar(list(1:3, NULL))
    pillar(add_special(list(1:3)))
    pillar(list(trees), width = 10)
  })

  local_colors()

  expect_snapshot({
    pillar(list(data.frame()), width = 11)
    pillar(list(data.frame()), width = 12)
  })
})
