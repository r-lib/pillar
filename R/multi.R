#' Format multiple vectors in a tabular display
#'
#' @param x A list of vectors to format
#' @param width Default width of the entire output, optional
#' @param ... Ignored
multicolformat <- function(x, width = NULL, ...) {
  ret <- map2(x, names2(x), colformat)
  ret <- structure(ret, class = "multicolformat")
  ret <- set_width(ret, width)
  ret
}

#' @export
format.multicolformat <- function(x, width = NULL, ...) {
  if (is.null(width)) {
    width <- get_width(x)
  }

  if (is.null(width)) {
    width <- getOption("width")
  }

  col_widths <- mcf_get_width(x, width)
  formats <- map2(x[seq_along(col_widths)], col_widths, format)

  new_vertical(invoke(paste, formats))
}

#' @export
print.multicolformat <- function(x, ...) {
  print(format(x, ...))
}

mcf_get_width <- function(x, width) {
  widths <- map_int(map(x, get_widths), max)
  min_widths <- map_int(map(x, get_min_widths), max)

  cum_min_widths <- cumsum(min_widths + 1L)
  allowed_min <- which(cum_min_widths <= width)
  if (length(allowed_min) < length(x)) {
    x <- x[allowed_min]
    widths <- widths[allowed_min]
    col_widths <- min_widths[allowed_min]
  } else {
    cum_widths <- cumsum(widths + 1L)
    rev_cum_rev_min_widths <- rev(cumsum(rev(min_widths) + 1L))

    allowed_max <- (cum_widths + c(rev_cum_rev_min_widths[-1L], 0L)) <= width
    col_widths <- ifelse(allowed_max, widths, min_widths)
  }

  col_widths
}
