test_that("with and without title", {
  expect_snapshot({pillar(add_special(10^(1:6)))})
  expect_snapshot({pillar(add_special(10^(1:6)), title = "crayon")})
  expect_snapshot({pillar(add_special(10^(1:6)), title = "short")})
  expect_snapshot({pillar(add_special(10^(1:6)), title = "somewhat_wider")})
  expect_snapshot({pillar(add_special(10^(1:6)), title = "exactly_fifteen")})
  expect_snapshot({pillar(add_special(10^(1:6)), title = "absolutely_breaking_all_sensible_boundaries", width = 18)})
})
