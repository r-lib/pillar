#' Draw a sparkline bar graph with unicode block characters
#'
#' @export
#' @param x A numeric vector between 0 and 1
#' @export
#' @examples
#' x <- seq(0, 1, length = 15)
#' spark_bar(x)
#' spark_bar(sample(x))
#'
#' spark_bar(c(0, NA, 0.5, NA, 1))
spark_bar <- function(x) {
  stopifnot(is.numeric(x))

  bars <- c("\u2581", "\u2582", "\u2583", "\u2585", "\u2587")

  factor <- cut(
    x,
    breaks = seq(0, 1, length = length(bars) + 1),
    labels = bars,
    include.lowest = TRUE
  )
  chars <- as.character(factor)
  chars[is.na(chars)] <- style_na(" ")

  structure(paste0(chars, collapse = ""), class = "spark")
}

#' @export
print.spark <- function(x, ...) {
  cat(x, "\n", sep = "")
}
