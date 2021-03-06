test_that("ornament", {
  expect_snapshot({new_ornament(c("abc", "de"))})
  expect_snapshot({new_ornament(c("abc", "de"), align = "right")})
  expect_snapshot({new_ornament(c("abc", "de"), width = 5, align = "right")})
  expect_snapshot({format(new_ornament(c("abc", "de")))})
  expect_snapshot({format(new_ornament(c("abc", "de")), width = 5)})
})

test_that("vertical", {
  expect_snapshot({new_vertical(c("abc", "de"))})
})
