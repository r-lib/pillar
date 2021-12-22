test_that("integer64 output will use scientific if necessary", {
  skip_if_not_installed("bit64")

  # 0 tests for NA warning too
  x <- bit64::as.integer64(c(0, 1e11, 1e12) + 0:2)
  expect_snapshot({
    pillar(add_special(x), width = 6)
    pillar(add_special(x), width = 7)
    pillar(add_special(x), width = 8)
    pillar(add_special(x), width = 9)
    pillar(add_special(x), width = 10)
    pillar(add_special(x), width = 11)
    pillar(add_special(x), width = 12)
    pillar(add_special(x), width = 13)
    pillar(add_special(x), width = 14)
  })
})

test_that("nanotime works (#378)", {
  skip_if_not_installed("nanotime")

  # 0 tests for NA warning too
  x <- nanotime::nanotime('2011-12-05 08:30:00.000', format ="%Y-%m-%d %H:%M:%E9S", tz ="GMT")
  expect_snapshot({
    pillar(x, width = 16)
    pillar(x, width = 17)
    pillar(x, width = 18)
    pillar(x, width = 19)
    pillar(x, width = 20)
    pillar(x, width = 21)
    pillar(x, width = 22)
    pillar(x, width = 23)
    pillar(x, width = 24)
    pillar(x, width = 25)
    pillar(x, width = 26)
  })
})
