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
format.pillar_title <- function(x, width, ...) {
  title <- x$title
  if (is.null(title)) return(character())

  title <- format_title(title, width)

  style_bold(title)
}
