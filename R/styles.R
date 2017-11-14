keep_empty <- function(fun) {
  function(x) {
    ret <- rep_along(x, "")
    update <- which(is.na(x) | x != "")
    ret[update] <- fun(x[update])
    ret
  }
}

#' Styling helpers
#'
#' Functions that allow implementers of formatters for custom data types to
#' maintain a consistent style with the default data types.
#'
#' @param x The character vector to style.
#' @export
style_subtle <- keep_empty(function(x) {
  style_grey(0.6, x)
})

style_hint <- keep_empty(function(x) {
  style_grey(0.8, x)
})

style_spark_na <- function(x) {
  crayon::yellow(x)
}

#' @rdname style_subtle
#' @export
style_na <- function(x) {
  crayon::bgYellow(crayon::black(x))
}

#' @rdname style_subtle
#' @export
style_neg <- keep_empty(function(x) {
  crayon::red(x)
})


style_grey <- function(level, ...) {
  crayon::style(
    paste0(...),
    crayon::make_style(grDevices::grey(level), grey = TRUE)
  )
}

pillar_na <- function(use_brackets_if_no_color = FALSE) {
  if (use_brackets_if_no_color && !crayon::has_color()) "<NA>"
  else style_na("NA")
}

style_list <- function(x) {
  style_subtle(x)
}
