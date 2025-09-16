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
      stop("Do not query dim()")
    },
    head.unknown_rows = function(x, n) {
      class(x) <- "data.frame"
      head(x, n)
    },
    tbl_sum.unknown_rows = function(x) {
      c("Unknown rows" = paste0("?? x ", length(unclass(x))))
    }
  )
}
