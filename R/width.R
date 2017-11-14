get_width <- function(x) {
  attr(x, "width")
}

#' Set width and minimum width information for an object
#'
#' Returns the input with updated `width` or `min_width` attributes.
#'
#' @param x Input to which assign a width or minimum width
#' @param width,min_width The new width
set_width <- function(x, width) {
  if (is.null(width)) return(x)
  if (is.infinite(width)) {
    attr(x, "width") <- NA_integer_
  } else {
    attr(x, "width") <- as.integer(width)
  }
  x
}

get_widths <- function(x) {
  map_int(x, get_width)
}

get_min_width <- function(x) {
  attr(x, "min_width") %||% get_width(x)
}

#' @rdname set_width
set_min_width <- function(x, min_width) {
  if (is.null(min_width)) return(x)
  attr(x, "min_width") <- as.integer(min_width)
  x
}

get_min_widths <- function(x) {
  map_int(x, get_min_width)
}
