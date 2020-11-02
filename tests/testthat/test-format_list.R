test_that("output test", {
  expect_pillar_output(xf = pillar(as.list(1:3)), filename = "list-each.txt")
  expect_pillar_output(xf = pillar(list(1:3, NULL)), filename = "list-null.txt")
  expect_pillar_output(xf = pillar(add_special(list(1:3))), filename = "list-na.txt")
  expect_pillar_output(xf = pillar(list(iris), width = 10), filename = "list-narrow.txt")
})
