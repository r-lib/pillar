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
#' `style_subtle()` is affected by the `pillar.subtle` option.
#'
#' @param x The character vector to style.
#' @export
#' @seealso [pillar-package] for a list of options
#' @examples
#' style_subtle("text")
style_subtle <- keep_empty(function(x) {
  if (isTRUE(getOption("pillar.subtle", TRUE))) {
    style_grey(0.6, x)
  } else {
    x
  }
})

#' @rdname style_subtle
#' @details
#' `style_subtle_num()` is affected by the `pillar.subtle_num` option, which is
#' `FALSE` by default.
#'
#' @export
#' @examples
#' style_subtle_num(0.01)
style_subtle_num <- function(x, negative) {
  if (isTRUE(getOption("pillar.subtle_num", FALSE))) {
    style_subtle(x)
  } else {
    ifelse(negative, style_neg(x), x)
  }
}

style_hint <- keep_empty(function(x) {
  if (isTRUE(getOption("pillar.subtle", TRUE))) {
    style_grey(0.8, x)
  } else {
    x
  }
})

style_spark_na <- function(x) {
  crayon::yellow(x)
}

#' @details
#' `style_bold()` is affected by the `pillar.bold` option.
#'
#' @rdname style_subtle
#' @export
#' @examples
#' style_bold("Petal.Width")
style_bold <- function(x) {
  if (isTRUE(getOption("pillar.bold", FALSE))) {
    crayon::bold(x)
  } else {
    x
  }
}

#' @rdname style_subtle
#' @export
#' @examples
#' style_na("NA")
style_na <- function(x) {
  crayon::red(x)
}

#' @details
#' `style_neg()` is affected by the `pillar.neg` option.
#'
#' @rdname style_subtle
#' @export
#' @examples
#' style_neg("123")
style_neg <- keep_empty(function(x) {
  if (isTRUE(getOption("pillar.neg", TRUE))) {
    crayon::red(x)
  } else {
    x
  }
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
