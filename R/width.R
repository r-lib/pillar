get_width <- function(x) {
  attr(x, "width")
}

set_width <- function(x, width) {
  if (is.null(width)) return(x)
  attr(x, "width") <- as.integer(width)
  x
}

get_widths <- function(x) {
  map_int(x, get_width)
}

get_min_width <- function(x) {
  attr(x, "min_width") %||% get_width(x)
}

set_min_width <- function(x, min_width) {
  if (is.null(min_width)) return(x)
  attr(x, "min_width") <- as.integer(min_width)
  x
}

get_min_widths <- function(x) {
  map_int(x, get_min_width)
}
