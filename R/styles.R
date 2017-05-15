style_accent <- function(x) {
  crayon::green(x)
}

style_subtle <- function(...) {
  style_grey(0.5, ...)
}

style_na <- function(x) {
  crayon::bold(crayon::style(x, grDevices::rgb(5, 2, 0, maxColorValue = 5)))
}

style_grey <- function(level, ...) {
  crayon::style(
    paste0(...),
    crayon::make_style(grDevices::grey(level), grey = TRUE)
  )
}

col_na <- function() style_na("?")
