test_that("ornament", {
  expect_snapshot({
    new_ornament(c("abc", "de"))
    new_ornament(c("abc", "de"), align = "right")
    new_ornament(c("abc", "de"), width = 5, align = "right")
    format(new_ornament(c("abc", "de")))
    format(new_ornament(c("abc", "de")), width = 5)
  })
})

test_that("vertical", {
  expect_snapshot({
    new_vertical(c("abc", "de"))
  })
})
