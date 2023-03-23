# pillar_shaft ------------------------------------------------------------------------

test_that("`pillar_shaft()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# vec_ptype_full ----------------------------------------------------------------------

test_that("`vec_ptype_full()` snapshot test", {
  expect_snapshot({
    vec_ptype_full()
  })
})


# print -------------------------------------------------------------------------------

test_that("`print()` snapshot test", {
  expect_snapshot({
    print()
  })
})


# obj_print_header --------------------------------------------------------------------

test_that("`obj_print_header()` snapshot test", {
  expect_snapshot({
    obj_print_header()
  })
})


# obj_print_data ----------------------------------------------------------------------

test_that("`obj_print_data()` snapshot test", {
  expect_snapshot({
    obj_print_data()
  })
})


# obj_print_footer --------------------------------------------------------------------

test_that("`obj_print_footer()` snapshot test", {
  expect_snapshot({
    obj_print_footer()
  })
})


# vec_proxy_compare -------------------------------------------------------------------

test_that("`vec_proxy_compare()` snapshot test", {
  expect_snapshot({
    vec_proxy_compare()
  })
})


# vec_proxy_order ---------------------------------------------------------------------

test_that("`vec_proxy_order()` snapshot test", {
  expect_snapshot({
    vec_proxy_order()
  })
})


# Legacy tests ------------------------------------------------------------------------

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
