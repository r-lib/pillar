as_override_size_sum <- function(x) {
  structure(x, class = "override_size_sum")
}

local_override_size_sum <- function(frame = caller_env()) {
  local_methods(
    .frame = frame,
    size_sum.override_size_sum = function(x, ...) {
      "SC"
    }
  )
}
