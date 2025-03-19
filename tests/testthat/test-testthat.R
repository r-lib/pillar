# expect_known_display ----------------------------------------------------------------

test_that("`expect_known_display()` snapshot test", {
  expect_snapshot({
    expect_known_display()
  })
})
