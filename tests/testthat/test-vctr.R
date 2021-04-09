test_that("max argument", {
  expect_snapshot({
    print(num(1:10), max = 5)
    print(char(letters), max = 10)
  })
})

test_that("max.print option", {
  local_options(max.print = 3)

  expect_snapshot({
    num(1:10)
    char(letters)
  })
})
