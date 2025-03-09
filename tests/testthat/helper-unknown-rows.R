as_unknown_rows <- function(x) {
  x <- as_tbl(x)
  class(x) <- c("unknown_rows", "tbl")
  x
}

local_unknown_rows <- function(frame = caller_env()) {
  local_methods(
    .frame = frame,
    tbl_nrow.unknown_rows = function(x, ...) {
      NA_integer_
    },
    as.data.frame.unknown_rows = function(x, ...) {
      class(x) <- "data.frame"
      x
    },
    dim.unknown_rows = function(x) {
      c(NA_integer_, length(x))
    },
    head.unknown_rows = function(x, n) {
      class(x) <- "data.frame"
      head(x, n)
    }
  )
}
