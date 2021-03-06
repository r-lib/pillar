test_that("integer64 output will use scientific if necessary", {
  skip_if_not_installed("bit64")

  x <- bit64::as.integer64(1e12) + 1:3
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
