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
#' `style_subtle()` is affected by the `subtle` [option][pillar_options].
#'
#' @param x The character vector to style.
#' @export
#' @seealso [pillar_options] for a list of options
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
#' `subtle_num` [option][pillar_options],
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
#' `style_bold()` is affected by the `bold` [option][pillar_options],
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

style_na_if <- function(x, p) {
  idx <- which(p)
  if (length(idx) == 0) {
    return(x)
  }
  x[p] <- style_na(x[idx[[1]]])
  x
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
      num_colors <<- cli::num_ansi_colors()
    }
    num_colors
  }
})

has_color <- function() {
  num_colors() > 1
}

# nocov start
# Crayon functions call cli::num_ansi_colors() every call
make_style_fast <- function(...) {
  # Force has_color to be true when making styles
  # Use prefix to avoid problems with empty NAMESPACE
  rlang::local_options(cli.num_colors = 16L)

  style_16 <- attr(cli::make_ansi_style(..., colors = 16), "_styles")[[1]]
  open_16 <- style_16$open
  close_16 <- style_16$close

  style_256 <- attr(cli::make_ansi_style(..., colors = 256), "_styles")[[1]]
  open_256 <- style_256$open
  close_256 <- style_256$close

  function(...) {
    colors <- num_colors()
    if (colors <= 1) {
      paste0(...)
    } else if (colors >= 256) {
      paste0(open_256, ..., close_256)
    } else {
      paste0(open_16, ..., close_16)
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
