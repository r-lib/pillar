pillar_title <- function(title, ...) {
  if (is.null(title)) {
    width <- 0L
  } else {
    width <- get_extent(format_title(title, width = Inf))
  }

  ret <- structure(
    list(
      title = title
    ),
    class = "pillar_title"
  )

  ret <- set_width(ret, width)
  ret <- set_min_width(ret, 3L)
  ret
}

#' @export
format.pillar_title <- function(x, width, ...) {
  title <- x$title
  if (is.null(title)) return(character())

  desired_width <- get_width(x)
  title <- format_title(title, width)

  crayon::bold(title)
}
