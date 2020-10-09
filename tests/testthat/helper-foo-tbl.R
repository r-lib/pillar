new_foo_tbl <- function(..., class = NULL) {
  stopifnot(is.null(class))
  new_tbl(..., class = "foo_tbl")
}

tbl_sum.foo_tbl <- function(x, ...) {
  c(NextMethod(), foo = "bar")
}

registerS3method("tbl_sum", "foo_tbl", tbl_sum.foo_tbl)
