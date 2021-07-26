test_that("ctl_new_pillar()", {
  expect_snapshot({
    ctl_new_pillar(new_tbl(), 1:3, width = 20, title = "a")
  })
})

test_that("ctl_new_compound_pillar()", {
  expect_snapshot({
    ctl_new_compound_pillar(new_tbl(), 1:3, width = 20, title = "a")
    ctl_new_compound_pillar(new_tbl(), trees[1:3, ], width = 20, title = "a")
    ctl_new_compound_pillar(new_tbl(), as.matrix(trees[1:3, ]), width = 20, title = "a")
    ctl_new_compound_pillar(new_tbl(), matrix(1:6, ncol = 2), width = 20, title = "a")
  })
})

test_that("ctl_new_compound_pillar() for tables", {
  skip_if_not_installed("vctrs", "0.3.6.9000")
  expect_snapshot({
    ctl_new_compound_pillar(new_tbl(), Titanic, width = 20, title = "a")
  })
})
