# ctl_new_pillar ----------------------------------------------------------------------

test_that("`ctl_new_pillar()` snapshot test", {
  expect_snapshot({
    ctl_new_pillar()
  })
})


# ctl_new_pillar.tbl ------------------------------------------------------------------

test_that("`ctl_new_pillar.tbl()` snapshot test", {
  expect_snapshot({
    ctl_new_pillar()
  })
})


# ctl_new_rowid_pillar ----------------------------------------------------------------

test_that("`ctl_new_rowid_pillar()` snapshot test", {
  expect_snapshot({
    ctl_new_rowid_pillar()
  })
})


# ctl_new_rowid_pillar.tbl ------------------------------------------------------------

test_that("`ctl_new_rowid_pillar.tbl()` snapshot test", {
  expect_snapshot({
    ctl_new_rowid_pillar()
  })
})


# max0 --------------------------------------------------------------------------------

test_that("`max0()` snapshot test", {
  expect_snapshot({
    max0()
  })
})


# Legacy tests ------------------------------------------------------------------------

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
