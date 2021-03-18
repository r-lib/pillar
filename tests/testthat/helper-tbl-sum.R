as_override_tbl_sum <- function(x) {
  structure(x, class = c("override_tbl_sum", class(x)))
}

local_override_tbl_sum <- function(frame = caller_env()) {
  local_methods(
    .frame = frame,
    tbl_sum.override_tbl_sum = function(x) {
      c(NextMethod(), "Overridden" = "tbl_sum")
    }
  )
}
