test_that("survival output", {
  skip_if_not_installed("survival", "3.2.9")

  x <- head(survival::Surv(survival::lung$time, survival::lung$status))
  expect_snapshot({
    pillar(x, width = 20)
  })

  skip_if_not(exists("Surv2", asNamespace("survival"), mode = "function"))

  x <- head(survival::Surv2(survival::lung$time, survival::lung$status))
  expect_snapshot({
    pillar(x, width = 20)
  })
})
