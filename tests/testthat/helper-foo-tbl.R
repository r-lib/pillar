new_foo_tbl <- function(..., class = NULL) {
  stopifnot(is.null(class))
  new_tbl(..., class = "foo_tbl")
}

local_foo_tbl <- function(frame = caller_env()) {
  local_methods(
    .frame = frame,
    tbl_sum.foo_tbl = function(x) {
      c(NextMethod(), foo = "bar")
    }
  )
}
