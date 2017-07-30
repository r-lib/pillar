cf_title <- function(title, ...) {
  ret <- structure(
    list(
      title = title
    ),
    class = "cf_title"
  )

  if (is.null(title)) {
    width <- 0L
  } else {
    width <- nchar(format_title(title, width = Inf), "width")
  }
  ret <- set_width(ret, width)
  ret <- set_min_width(ret, 3L)
  ret
}

#' @export
format.cf_title <- function(x, width, ...) {
  title <- x$title
  if (is.null(title)) return(character())

  desired_width <- get_width(x)
  title <- format_title(title, width)

  crayon::bold(title)
}
