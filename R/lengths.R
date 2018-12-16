lengths <- NULL
lengths_compat <- function(x) {
  map_int(x, length)
}

lengths_wrap <- function(x) {
  base::lengths(x)
}
