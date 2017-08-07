#' Format multiple vectors in a tabular display
#'
#' The vectors are formatted to fit horizontally into a user-supplied number of
#' characters per row.
#'
#' @param x A list of vectors to format
#' @param width Default width of the entire output, optional
#' @param ... Ignored
multicolformat <- function(x, width = NULL, ...) {
  if (is_named(x)) {
    ret <- map2(x, names(x), colformat)
  } else {
    ret <- map(x, colformat)
  }
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
  out <- map2(x[seq_along(col_widths)], col_widths, cf_format_parts)
  mcf_data <- c(
    invoke(paste, map(out, `[[`, "title_format")),
    crayon::underline(invoke(paste, map(out, `[[`, "type_format"))),
    invoke(paste, map(out, `[[`, "data_format"))
  )

  new_vertical(mcf_data)
}

#' @export
print.multicolformat <- function(x, ...) {
  print(format(x, ...))
}

#' @rdname multicolformat
#' @usage NULL
#' @aliases NULL
mcf_get_width <- function(x, width) {
  max_widths <- map_int(map(x, get_widths), max)
  min_widths <- map_int(map(x, get_min_widths), max)

  #' @details
  #' In a first pass, for each column it is decided if it is hidden, shown with
  #' its minimum width or shown with its maximum width.
  col_widths <- mcf_compute_col_widths(min_widths, max_widths, width)

  #' Remaining space is then distributed proportionally to columns that do not
  #' use their desired width.
  max_widths <- max_widths[seq_along(col_widths)]
  added_space <- mcf_distribute_space(col_widths, max_widths, width)

  col_widths + added_space
}

#' @rdname multicolformat
#' @usage NULL
#' @aliases NULL
mcf_compute_col_widths <- function(min_widths, max_widths, width) {
  #' @details
  #' For computing the column widths, two cases are distinguished:
  #' 1. When taking the minimum width for each column (plus one inter-column
  #'    space), at least one column does not fit.
  cum_min_widths <- cumsum(min_widths + 1L)
  allowed_min <- which(cum_min_widths <= width)
  if (length(allowed_min) < length(min_widths)) {
    #'    In this case, the minimum width is assigned to all columns that do fit,
    #'    the non-fitting columns are stripped.
    col_widths <- min_widths[allowed_min]
  } else {
    #' 1. All columns fit with their minimum width. In this case, starting at
    #'    the leftmost column, the maximum width is allocated to the columns
    #'    until all available space is used.
    cum_max_widths <- cumsum(max_widths + 1L)
    rev_cum_rev_min_widths <- rev(cumsum(rev(min_widths) + 1L))

    allowed_max <- (cum_max_widths + c(rev_cum_rev_min_widths[-1L], 0L)) <= width
    col_widths <- ifelse(allowed_max, max_widths, min_widths)
  }

  col_widths
}

#' @rdname multicolformat
#' @usage NULL
#' @aliases NULL
mcf_distribute_space <- function(col_widths, max_widths, width) {
  missing_space <- max_widths - col_widths
  # Shortcut to avoid division by zero
  if (all(missing_space == 0L)) return(rep_along(col_widths, 0L))

  #' @details
  #' The remaining space is distributed from left to right.
  #' Each column gains space proportional to the fraction of missing and
  #' remaining space,
  remaining_width <- min(width - sum(col_widths + 1L), sum(missing_space))
  added_space_prop <- missing_space / sum(missing_space) * remaining_width

  #' rounded down.
  added_space_ceil <- ceiling(added_space_prop)
  added_space_floor <- floor(added_space_prop)
  added_space_diff <- added_space_ceil - added_space_floor
  added_space <- ifelse(
    #' Any space remaining after rounding is distributed from left to right,
    #' one space per column.
    sum(added_space_floor) + cumsum(added_space_diff) <= remaining_width,
    added_space_ceil,
    added_space_floor
  )

  added_space
}
