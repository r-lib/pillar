style_title <- style_bold

#' Prepare a column title for formatting
#'
#' Call [format()] on the result to render column titles.
#'
#' @param x A character vector of column titles.
#' @inheritParams ellipsis::dots_empty
#' @export
#' @examples
#' format(new_pillar_title(names(trees)))
new_pillar_title <- function(x, ...) {
  "!!!!DEBUG new_pillar_title(`v(x)`)"
  if (!missing(...)) {
    check_dots_empty(action = warn)
  }

  if (is.null(x)) {
    width <- 0L
  } else if (all(is.na(x) | x == "")) {
    width <- 0L
    x <- NULL
  } else {
    width <- get_max_extent(format_title(x, width = Inf))
    stopifnot(!is.na(width))
  }

  ret <- structure(list(x), class = "pillar_title")

  ret <- set_width(ret, width)
  ret <- set_min_width(ret, MIN_PILLAR_WIDTH)
  ret
}

#' @export
format.pillar_title <- function(x, width = NULL, ..., footnote_idx = 1L) {
  title <- x[[1]]
  if (is.null(title)) {
    return(character())
  }

  if (is.null(width)) {
    width <- get_width(x)
  }

  footnote <- (footnote_idx > 0L)
  title <- format_title(title, width, footnote)
  if (footnote) {
    title <- gsub("\u02df$", superdigit(footnote_idx), title)
  }
  style_title(title)
}
