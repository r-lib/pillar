keep_empty <- function(fun) {
   function(x) {
    ret <- rep_along(x, "")
    update <- which(is.na(x) | x != "")
    ret[update] <- fun(x[update])
    ret
  }
}

style_accent <- keep_empty(function(x) {
  crayon::green(x)
})

style_subtle <- keep_empty(function(x) {
  style_grey(0.6, x)
})

style_spark_na <- function(x) {
  crayon::yellow(x)
}

style_na <- function(x) {
  crayon::bgYellow(crayon::black(x))
}

style_neg <- keep_empty(function(x) {
  crayon::red(x)
})


style_grey <- function(level, ...) {
  crayon::style(
    paste0(...),
    crayon::make_style(grDevices::grey(level), grey = TRUE)
  )
}

cf_na <- function(use_brackets_if_no_color = FALSE) {
  if (use_brackets_if_no_color && !crayon::has_color()) "<NA>"
  else style_na("NA")
}
