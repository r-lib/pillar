# Draw a sparkline line graph with Braille characters.
#
# @inheritParams spark_bar
# @examples
# \dontrun{
# x <- seq(0, 1, length = 10)
# spark_line(x)
# }
spark_line <- function(x) {
  stopifnot(is.numeric(x))

  y <- findInterval(x, seq(0, 1, length = 5), all.inside = TRUE)

  ind <- matrix(y, ncol = 2, byrow = TRUE)
  ind[, 2] <- ind[, 2] + 4

  chars <- apply(ind, 1, braille)
  structure(paste0(chars, collapse = ""), class = "spark")
}

#' @export
print.spark <- function(x, ...) {
  cat(x, "\n", sep = "")
}

# https://en.wikipedia.org/wiki/Braille_Patterns
braille <- function(x) {
  # remap to braille sequence
  x <- c(7L, 3L, 2L, 1L, 8L, 6L, 5L, 4L)[x]

  raised <- 1:8 %in% x
  binary <- raised * 2^(0:7)

  # offset in hex is 2800
  val <- 10240 + sum(raised * 2^(0:7))

  intToUtf8(val)
}
