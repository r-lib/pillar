get_extent <- function(x) {
  utf8::utf8_width(crayon::strip_style(x), encode = FALSE)
}

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
