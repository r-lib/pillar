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
    ctl_new_compound_pillar(new_tbl(), Titanic, width = 20, title = "a")
  })
})
