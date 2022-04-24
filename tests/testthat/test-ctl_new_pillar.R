test_that("ctl_new_pillar()", {
  expect_snapshot({
    ctl_new_pillar(new_tbl(), 1:3, width = 20, title = "a")
  })
})

test_that("ctl_new_pillar_list()", {
  expect_snapshot({
    ctl_new_pillar_list(new_tbl(), 1:3, width = 20, title = "a")
    ctl_new_pillar_list(new_tbl(), trees[1:3, ], width = 8, title = "a")
    ctl_new_pillar_list(new_tbl(), trees[1:3, ], width = 20, title = "a")
    ctl_new_pillar_list(new_tbl(), as.matrix(trees[1:3, ]), width = 8, title = "a")
    ctl_new_pillar_list(new_tbl(), as.matrix(trees[1:3, ]), width = 20, title = "a")
    ctl_new_pillar_list(new_tbl(), matrix(1:6, ncol = 2), width = 8, title = "a")
    ctl_new_pillar_list(new_tbl(), matrix(1:6, ncol = 2), width = 20, title = "a")
    ctl_new_pillar_list(new_tbl(), matrix(1:6, ncol = 3), width = 10, title = "a")
  })
})

test_that("ctl_new_pillar_list() for tables", {
  skip_if_not_installed("vctrs", "0.3.6.9000")
  expect_snapshot({
    ctl_new_pillar_list(new_tbl(), Titanic, width = 20, title = "a")
  })
})
