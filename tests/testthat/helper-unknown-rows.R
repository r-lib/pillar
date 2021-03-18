as_unknown_rows <- function(x) {
  x <- as_tbl(x)
  class(x) <- c("unknown_rows", class(x))
  x
}

local_unknown_rows <- function(frame = caller_env()) {
  local_methods(
    .frame = frame,
    dim.unknown_rows = function(x) {
      c(NA_integer_, length(x))
    },
    head.unknown_rows = function(x, n) {
      head(as.data.frame(x), n)
    }
  )
}
