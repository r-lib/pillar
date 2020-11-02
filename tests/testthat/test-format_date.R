test_that("output test", {
  expect_pillar_output(xp = add_special(as.Date("2017-07-28")), filename = "date.txt")
})
