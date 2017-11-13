get_extent <- function(x) {
  utf8::utf8_width(crayon::strip_style(x), encode = FALSE)
}

get_max_extent <- function(x) {
  max(get_extent(x), 0L, na.rm = TRUE)
}
