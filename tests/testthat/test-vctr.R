# pillar_shaft.pillar_vctr ------------------------------------------------------------

test_that("`pillar_shaft.pillar_vctr()` snapshot test", {
  expect_snapshot({
    pillar_shaft()
  })
})


# vec_ptype_full.pillar_vctr ----------------------------------------------------------

test_that("`vec_ptype_full.pillar_vctr()` snapshot test", {
  expect_snapshot({
    vec_ptype_full()
  })
})


# print.pillar_vctr -------------------------------------------------------------------

test_that("`print.pillar_vctr()` snapshot test", {
  expect_snapshot({
    print()
  })
})


# obj_print_header.pillar_vctr --------------------------------------------------------

test_that("`obj_print_header.pillar_vctr()` snapshot test", {
  expect_snapshot({
    obj_print_header()
  })
})


# obj_print_data.pillar_vctr ----------------------------------------------------------

test_that("`obj_print_data.pillar_vctr()` snapshot test", {
  expect_snapshot({
    obj_print_data()
  })
})


# obj_print_footer.pillar_vctr --------------------------------------------------------

test_that("`obj_print_footer.pillar_vctr()` snapshot test", {
  expect_snapshot({
    obj_print_footer()
  })
})


# print.pillar_vctr_attr --------------------------------------------------------------

test_that("`print.pillar_vctr_attr()` snapshot test", {
  expect_snapshot({
    print()
  })
})


# vec_proxy_compare.pillar_vctr -------------------------------------------------------

test_that("`vec_proxy_compare.pillar_vctr()` snapshot test", {
  expect_snapshot({
    vec_proxy_compare()
  })
})


# vec_proxy_order.pillar_vctr ---------------------------------------------------------

test_that("`vec_proxy_order.pillar_vctr()` snapshot test", {
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
