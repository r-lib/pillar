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
  force(x)
  if (isTRUE(getOption("pillar.subtle", TRUE))) {
    crayon_grey_0.6(x)
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
#' style_subtle_num(0.01 * 1:3, c(TRUE, FALSE, TRUE))
style_subtle_num <- function(x, negative) {
  if (isTRUE(getOption("pillar.subtle_num", FALSE))) {
    style_subtle(x)
  } else {
    ifelse(negative, style_neg(x), x)
  }
}

style_hint <- keep_empty(function(x) {
  force(x)
  if (isTRUE(getOption("pillar.subtle", TRUE))) {
    crayon_grey_0.8(x)
  } else {
    x
  }
})

style_spark_na <- function(x) {
  crayon_yellow(x)
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
    crayon_bold(x)
  } else {
    x
  }
}

#' @rdname style_subtle
#' @export
#' @examples
#' style_na("NA")
style_na <- function(x) {
  crayon_red(x)
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
has_color <- local({
  has_color <- NULL
  function(forget = FALSE) {
    if (is.null(has_color) || forget) {
      has_color <<- crayon::has_color()
    }
    has_color
  }
})

# Important to use 16-color palette for consistent testing
is_testing <- local({
  is_testing <- FALSE
  function(set = NA) {
    if (!is.na(set)) {
      is_testing <<- set
    }
    is_testing
  }
})

# Crayon functions call crayon::has_color() every call
make_style_fast <- function(...) {
  # Force has_color to be true when making styles
  old <- options(crayon.enabled = TRUE)
  on.exit(options(old))

  style <- crayon::make_style(...)
  start <- stats::start(style)
  finish <- crayon::finish(style)

  function(...) {
    if (has_color()) {
      paste0(start, ..., finish)
    } else {
      paste0(...)
    }
  }
}

make_style_fast_16 <- function(...) {
  # Force has_color to be true when making styles
  old <- options(crayon.enabled = TRUE)
  on.exit(options(old))

  style <- crayon::make_style(...)
  start <- stats::start(style)
  finish <- crayon::finish(style)

  old_16 <- options(crayon.colors = 16)
  crayon::num_colors(forget = TRUE)
  on.exit(
    {
      options(old_16)
      crayon::num_colors(forget = TRUE)
    },
    add = TRUE
  )

  style_16 <- crayon::make_style(...)
  start_16 <- stats::start(style_16)
  finish_16 <- crayon::finish(style_16)

  function(...) {
    if (has_color()) {
      if (is_testing()) {
        paste0(start_16, gsub(finish_16, start_16, ..., fixed = TRUE), finish_16)
      } else {
        paste0(start, gsub(finish, start, ..., fixed = TRUE), finish)
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
  crayon_grey_0.6 <<- make_style_fast_16(grDevices::grey(0.6), grey = TRUE)
  crayon_grey_0.8 <<- make_style_fast_16(grDevices::grey(0.8), grey = TRUE)
}
