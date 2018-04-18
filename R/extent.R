#' Calculate display width
#'
#' `get_extent()` calculates the display width for each string in a character
#' vector.
#'
#' @param x A character vector.
#' @export
#' @examples
#' get_extent(c("abc", "de"))
#' get_extent("\u904b\u6c23")
get_extent <- function(x) {
  x <- crayon::strip_style(x)
  width <- utf8::utf8_width(x, encode = FALSE, utf8 = TRUE)
  is_na <- which(is.na(width))
  width[is_na] <- nchar(x[is_na], type = "width")
  width
}

#' @description
#' `get_max_extent()` calculates the maximum display width of all strings in a
#' character vector, zero for empty vectors.
#' @export
#' @rdname get_extent
#' @examples
#' get_max_extent(c("abc", "de"))
get_max_extent <- function(x) {
  max(get_extent(x), 0L, na.rm = TRUE)
}

align <- function(x, width = NULL, align = c("left", "right")) {
  align <- match.arg(align)
  extent <- get_extent(x)
  if (is.null(width)) {
    width <- max(extent)
  }
  spaces <- pmax(width - extent, 0L)
  if (align == "left") {
    paste0(x, strrep(" ", spaces))
  } else {
    paste0(strrep(" ", spaces), x)
  }
}
