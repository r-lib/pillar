style_title <- style_bold

#' Prepare a column title for formatting
#'
#' Call [format()] on the result to render column titles.
#'
#' @param x A character vector of column titles.
#' @param ... Unused.
#' @export
#' @examples
#' format(new_pillar_title(names(iris)))
new_pillar_title <- function(x, ...) {
  if (is.null(x)) {
    width <- 0L
  } else {
    width <- get_max_extent(format_title(x, width = Inf))
    stopifnot(!is.na(width))
  }

  ret <- structure(
    list(
      title = x
    ),
    class = "pillar_title"
  )

  ret <- set_width(ret, width)
  ret <- set_min_width(ret, get_min_title_width(width))
  ret
}

get_min_title_width <- function(width) {
  title_chars <- getOption("pillar.min_title_chars", 15)
  if (!is.numeric(title_chars) || length(title_chars) != 1 || title_chars < 0) {
    stop("Option pillar.min_title_chars must be a nonnegative number", call. = FALSE)
  }

  if (is.infinite(title_chars)) return(width)

  # We don't use the ellipsis if we don't truncate, a solution with min()
  # is difficult to make work in all corner cases (and slower too)
  if (width <= title_chars) return(width)
  title_chars + get_extent(get_ellipsis())
}

#' @export
format.pillar_title <- function(x, width = NULL, ...) {
  title <- x$title
  if (is.null(title)) return(character())

  if (is.null(width)) {
    width <- get_width(x)
  }

  title <- format_title(title, width)
  style_title(title)
}

format_full_pillar_title <- function(title) {
  title <- format_title(title, Inf)
  style_title(title)
}
