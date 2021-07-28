# nocov start
keep_empty <- function(fun) {
  function(x) {
    ret <- rep_along(x, "")
    update <- which(is.na(x) | x != "")
    ret[update] <- fun(x[update])
    ret
  }
}
# nocov end

#' Styling helpers
#'
#' Functions that allow implementers of formatters for custom data types to
#' maintain a consistent style with the default data types.
#'
#' `style_subtle()` is affected by the `pillar.subtle` [option][pillar_options].
#'
#' @param x The character vector to style.
#' @export
#' @seealso [pillar-package] for a list of options
#' @examples
#' style_subtle("text")
style_subtle <- keep_empty(function(x) {
  force(x)
  if (isTRUE(get_pillar_option_subtle())) {
    crayon_grey_0.6(x)
  } else {
    x
  }
})

#' @rdname style_subtle
#' @details
#' `style_subtle_num()` is affected by the
#' `pillar.subtle_num` [option][pillar_options],
#' which is `FALSE` by default.
#'
#' @export
#' @examples
#' style_subtle_num(0.01 * 1:3, c(TRUE, FALSE, TRUE))
style_subtle_num <- function(x, negative) {
  if (isTRUE(get_pillar_option_subtle_num())) {
    style_subtle(x)
  } else {
    ifelse(negative, style_neg(x), x)
  }
}

style_hint <- keep_empty(function(x) {
  force(x)
  if (isTRUE(get_pillar_option_subtle())) {
    crayon_grey_0.8(x)
  } else {
    x
  }
})

style_spark_na <- function(x) {
  crayon_yellow(x)
}

#' @details
#' `style_bold()` is affected by the `pillar.bold` [option][pillar_options],
#' which is `FALSE` by default.
#'
#' @rdname style_subtle
#' @export
#' @examples
#' style_bold("Petal.Width")
style_bold <- keep_empty(function(x) {
  if (isTRUE(get_pillar_option_bold())) {
    crayon_bold(x)
  } else {
    x
  }
})

#' @rdname style_subtle
#' @export
#' @examples
#' style_na("NA")
style_na <- function(x) {
  crayon_red(x)
}

#' @details
#' `style_neg()` is affected by the `pillar.neg` [option][pillar_options].
#'
#' @rdname style_subtle
#' @export
#' @examples
#' style_neg("123")
style_neg <- keep_empty(function(x) {
  if (isTRUE(get_pillar_option_neg())) {
    crayon_red(x)
  } else {
    x
  }
})

pillar_na <- function(use_brackets_if_no_color = FALSE) {
  if (use_brackets_if_no_color && !has_color()) {
    "<NA>"
  } else {
    style_na("NA")
  }
}

style_list <- function(x) {
  style_subtle(x)
}

# Only check if we have color support once per session
num_colors <- local({
  num_colors <- NULL
  function(forget = FALSE) {
    if (is.null(num_colors) || forget) {
      num_colors <<- crayon::num_colors(forget = forget)
    }
    num_colors
  }
})

has_color <- function() {
  num_colors() > 1
}

# nocov start
# Crayon functions call crayon::num_colors() every call
make_style_fast <- function(...) {
  # Force has_color to be true when making styles
  # Use prefix to avoid problems with empty NAMESPACE
  rlang::local_options(cli.num_colors = 16L)

  style_16 <- crayon::make_style(..., colors = 16)
  start_16 <- stats::start(style_16)
  finish_16 <- crayon::finish(style_16)

  style_256 <- crayon::make_style(..., colors = 256)
  start_256 <- stats::start(style_256)
  finish_256 <- crayon::finish(style_256)

  function(...) {
    if (has_color()) {
      colors <- num_colors()
      if (colors >= 256) {
        paste0(start_256, ..., finish_256)
      } else {
        paste0(start_16, ..., finish_16)
      }
    } else {
      paste0(...)
    }
  }
}

# Placeholders, assigned in .onLoad()
crayon_underline <- function(...) {}
crayon_italic <- function(...) {}
crayon_red <- function(...) {}
crayon_yellow <- function(...) {}
crayon_bold <- function(...) {}
crayon_grey_0.6 <- function(...) {}
crayon_grey_0.8 <- function(...) {}

assign_crayon_styles <- function() {
  crayon_underline <<- make_style_fast("underline")
  crayon_italic <<- make_style_fast("italic")
  crayon_red <<- make_style_fast("red")
  crayon_yellow <<- make_style_fast("yellow")
  crayon_bold <<- make_style_fast("bold")
  crayon_grey_0.6 <<- make_style_fast(grDevices::grey(0.6), grey = TRUE)
  crayon_grey_0.8 <<- make_style_fast(grDevices::grey(0.8), grey = TRUE)
}
# nocov end
