test_that("smoke test", {
  local_override_size_sum()

  v <- new_list_of(list(1L, 2:4), integer())
  expect_snapshot({
    pillar(v, width = 15)
  })

  v <- new_list_of(list(as_override_size_sum(1:3)), as_override_size_sum(integer()))
  expect_snapshot({
    pillar(v, width = 30)
  })
})
