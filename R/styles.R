style_accent <- function(x) {
  crayon::green(x)
}

style_subtle <- function(...) {
  style_grey(0.5, ...)
}

style_na <- function(x) {
  crayon::style(x, bg = grDevices::rgb(5, 5, 2, maxColorValue = 5))
}

style_neg <- function(x) {
  crayon::red(x)
}


style_grey <- function(level, ...) {
  crayon::style(
    paste0(...),
    crayon::make_style(grDevices::grey(level), grey = TRUE)
  )
}

col_na <- function(width = 1L) {
  width <- pmax(0, width - 1)

  paste0(strrep(" ", width), style_na("?"))
}
