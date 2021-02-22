test_that("smoke test", {
  expect_snapshot({
    pillar(vctrs::unspecified(3), width = 10)
  })
})
