show_output_in_terminal <- function() {
  system2("xterm", c("-e", shQuote("head tests/testthat/out/*; sleep 600")))
}

# A data frame with all major types
df_all <- new_tbl(list(
  a = c(1, 2.5, NA),
  b = c(1:2, NA),
  c = c(T, F, NA),
  d = c("a", "b", NA),
  e = factor(c("a", "b", NA)),
  f = as.Date("2015-12-09") + c(1:2, NA),
  g = as.POSIXct("2015-12-09 10:51:34.5678 UTC") + c(1:2, NA),
  h = as.list(c(1:2, NA)),
  i = list(list(1, 2:3), list(4:6), list(NA))
))

# A data frame with strings of varying lengths
long_str <- strrep("Abcdefghij", 5)
df_str <- map(rlang::set_names(1:50), function(i) substr(long_str, 1, i))

#' `add_special()` is not exported, and used only for initializing default
#' values to `expect_pillar_output()`.
#' @rdname expect_pillar_output
add_special <- function(x) {
  if (inherits(x, "integer64")) {
    x <- c(x, bit64::NA_integer64_)
  } else {
    x <- x[seq2(1, length(x) + 1)]
    if (is.numeric(x) && is.double(x)) {
      x <- c(x, -Inf, Inf)
    }
  }
  x
}

continue <- function(x) {
  paste0(x, cli::symbol$continue)
}
