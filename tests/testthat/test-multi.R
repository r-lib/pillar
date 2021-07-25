test_that("distribute_pillars()", {
  expect_snapshot({
    distribute_pillars(1:3, 10)
    distribute_pillars(1:3, 5)
    distribute_pillars(1:3, c(5, 5))
    distribute_pillars(1:5, 7:9)
    distribute_pillars(3:5, 8:10)
    distribute_pillars(5:3, 9:8)
  })
})
