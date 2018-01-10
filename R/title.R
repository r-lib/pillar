pillar_title <- function(title, ...) {
  if (is.null(title)) {
    width <- 0L
  } else {
    width <- get_extent(format_title(title, width = Inf))
    stopifnot(!is.na(width))
  }

  ret <- structure(
    list(
      title = title
    ),
    class = "pillar_title"
  )

  ret <- set_width(ret, width)
  ret <- set_min_width(ret, get_min_title_width(width))
  ret
}

get_min_title_width <- function(width) {
  title_width <- getOption("pillar.min_title_width", 10)
  if (!is.numeric(title_width) || length(title_width) != 1 || title_width < 0) {
    stop("Option pillar.min_title_width must be a nonnegative number", call. = FALSE)
  }

  if (is.infinite(title_width)) return(width)
  min(title_width + get_extent(get_ellipsis()), width)
}

#' @export
format.pillar_title <- function(x, width, ...) {
  title <- x$title
  if (is.null(title)) return(character())

  title <- format_title(title, width)

  style_bold(title)
}
