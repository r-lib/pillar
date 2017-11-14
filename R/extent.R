#' Calculate display width
#'
#' `get_extent()` calculates the display width of a character vector as a vector.
#'
#' @param x A character vector.
#' @export
get_extent <- function(x) {
  utf8::utf8_width(crayon::strip_style(x), encode = FALSE)
}

#' @description
#' `get_max_extent()` calculates the maximum display width of all strings in a
#' character vector, zero for empty vectors.
#' @export
#' @rdname get_extent
get_max_extent <- function(x) {
  max(get_extent(x), 0L, na.rm = TRUE)
}

align <- function(x, width, align = c("left", "right")) {
  align <- match.arg(align)
  extent <- get_extent(x)
  spaces <- pmax(width - extent, 0L)
  if (align == "left") {
    paste0(x, strrep(" ", spaces))
  } else {
    paste0(strrep(" ", spaces), x)
  }
}
