# Draw a sparkline bar graph with unicode block characters
#
# Rendered using [block elements](https://en.wikipedia.org/wiki/Block_Elements).
# In most common fixed width fonts these are rendered wider than regular
# characters which means they are not suitable if you need precise alignment.
#
# @param x A numeric vector between 0 and 1
# @param safe Nominally there are 8 block elements from 1/8 height to full
#   height (8/8). However, the half-height and full-height blocks appear
#   to be rendered inconsistently (possibly due to font substitution).
# @examples
# \dontrun{
# x <- seq(0, 1, length = 6)
# spark_bar(x)
# spark_bar(sample(x))
#
# # This might work if you're lucky
# spark_bar(seq(0, 1, length = 8), safe = FALSE)
#
# spark_bar(c(0, NA, 0.5, NA, 1))
# }
spark_bar <- function(x, safe = TRUE) {
  stopifnot(is.numeric(x))

  bars <- vapply(0x2581:0x2588, intToUtf8, character(1))
  if (safe) {
    bars <- bars[-c(4, 8)]
  }

  factor <- cut(
    x,
    breaks = seq(0, 1, length = length(bars) + 1),
    labels = bars,
    include.lowest = TRUE
  )
  chars <- as.character(factor)
  chars[is.na(chars)] <- style_spark_na(bars[length(bars)])

  new_vertical(paste0(chars, collapse = ""), subclass = c("pillar_spark_bar", "pillar_spark"))
}
