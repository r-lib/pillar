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
  max_widths <- map_int(map(x, get_widths), max)
  min_widths <- map_int(map(x, get_min_widths), max)

  col_widths <- mcf_compute_col_widths(min_widths, max_widths, width)

  max_widths <- max_widths[seq_along(col_widths)]
  added_space <- mcf_distribute_space(col_widths, max_widths, width)

  col_widths + added_space
}

mcf_compute_col_widths <- function(min_widths, max_widths, width) {
  cum_min_widths <- cumsum(min_widths + 1L)
  allowed_min <- which(cum_min_widths <= width)
  if (length(allowed_min) < length(min_widths)) {
    col_widths <- min_widths[allowed_min]
  } else {
    cum_max_widths <- cumsum(max_widths + 1L)
    rev_cum_rev_min_widths <- rev(cumsum(rev(min_widths) + 1L))

    allowed_max <- (cum_max_widths + c(rev_cum_rev_min_widths[-1L], 0L)) <= width
    col_widths <- ifelse(allowed_max, max_widths, min_widths)
  }
  col_widths
}

mcf_distribute_space <- function(col_widths, max_widths, width) {
  missing_space <- max_widths - col_widths

  # Avoid division by zero:
  if (all(missing_space == 0L)) return(rep_along(col_widths, 0L))

  remaining_width <- min(width - sum(col_widths + 1L), sum(missing_space))
  added_space_frac <- missing_space / sum(missing_space) * remaining_width
  added_space <- diff(c(0L, as.integer(round(cumsum(added_space_frac)))))
  added_space
}
