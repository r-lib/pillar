test_that("survival output", {
  skip_if_not_installed("survival")

  x <- head(survival::Surv(survival::lung$time, survival::lung$status))
  expect_pillar_output(xp = pillar(x), width = 20, filename = "survival.txt")

  x <- head(survival::Surv2(survival::lung$time, survival::lung$status))
  expect_pillar_output(xp = pillar(x), width = 20, filename = "survival2.txt")
})
