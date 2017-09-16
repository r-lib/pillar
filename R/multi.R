#' Format multiple vectors in a tabular display
#'
#' The vectors are formatted to fit horizontally into a user-supplied number of
#' characters per row.
#'
#' @param x A list of vectors to format
#' @param has_row_id Include a column indicating row IDs? Pass `"*"` to mark
#'   the row ID column with a star.
#' @param width Default width of the entire output, optional
#' @param ... Ignored
#' @export
colonnade <- function(x, has_row_id = TRUE, width = NULL, ...) {
  has_title <- is_named(x)
  if (has_title) {
    ret <- map2(x, names(x), pillar)
  } else {
    ret <- map(x, pillar)
  }
  if (!is_false(has_row_id) && length(x) > 0) {
    rowid <- rowidformat(
      length(x[[1]]),
      has_star = identical(has_row_id, "*"),
      has_title_row = has_title
    )
    ret <- c(list(rowid), ret)
  }
  zero_height <- length(x) == 0L || length(x[[1]]) == 0L
  ret <- structure(ret, zero_height = zero_height, class = "colonnade")
  ret <- set_width(ret, width)
  ret
}

#' @description
#' The `squeeze()` function is called by [format()]  and [print()] and usually
#' doesn't need to be called manually.
#' It returns an object suitable for printing and formatting at a fixed width
#' with additional information about omitted columns.
#'
#' @rdname colonnade
#' @export
squeeze <- function(x, width = NULL, ...) {
  # Hacky shortcut for zero-height corner case
  if (attr(x, "zero_height")) {
    return(new_colonnade_sqeezed(list(), x[names2(x) != ""]))
  }

  if (is.null(width)) {
    width <- get_width(x)
  }

  if (is.null(width)) {
    width <- getOption("width")
  }

  col_widths <- colonnade_get_width(x, width)
  col_widths_show <- split(col_widths, col_widths$chunk != 0)
  col_widths_shown <- col_widths_show[["TRUE"]]
  col_widths_chunks <- split(col_widths_shown, col_widths_shown$chunk)
  out <- map(col_widths_chunks, function(chunk) {
    map2(x[chunk$id], chunk$width, pillar_format_parts)
  })

  col_widths_extra <- col_widths_show[["FALSE"]]
  new_colonnade_sqeezed(out, x[col_widths_extra$id])
}

new_colonnade_sqeezed <- function(x, extra_cols) {
  structure(
    x,
    extra_cols = map_chr(extra_cols, pillar_format_abbrev),
    class = "squeezed_colonnade"
  )
}

#' @export
format.squeezed_colonnade <- function(x, ...) {
  formatted <- map(x, format_colonnade_chunk)
  new_vertical(as.character(unlist(formatted)))
}

format_colonnade_chunk <- function(x) {
  xt <- list(
    title = map(x, `[[`, "title_format"),
    type = map(x, `[[`, "type_format"),
    data = map(x, `[[`, "data_format")
  )

  c(
    invoke(paste, xt$title),
    style_type_header(invoke(paste, xt$type)),
    invoke(paste, xt$data)
  )
}

#' @export
print.squeezed_colonnade <- function(x, ...) {
  print(format(x, ...), ...)
  invisible(x)
}

# Method registration happens in .onLoad()
knit_print.squeezed_colonnade <- function(x, ...) {
  header <- map_chr(x, `[[`, "title_format")
  col <- map(x, function(xx) c(xx[["type_format"]], xx[["data_format"]]))

  knitr::kable(as.data.frame(col), row.names = NA, col.names = header)
}

#' Retrieve information about columns that didn't fit the available width
#'
#' Formatting a [colonnade] object may lead to some columns being omitted
#' due to width restrictions. This method returns a character vector that
#' describes each of the omitted columns.
#' @param x The result of [format()] on a [colonnade] object
#' @param ... Unused
#' @export
extra_cols <- function(x, ...) {
  UseMethod("extra_cols")
}

#' @export
extra_cols.squeezed_colonnade <- function(x, ...) {
  attr(x, "extra_cols")
}

#' @export
format.colonnade <- function(x, ...) {
  format(squeeze(x, ...))
}

#' @export
print.colonnade <- function(x, ...) {
  print(format(x, ...))
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
colonnade_get_width <- function(x, width) {
  max_widths <- map_int(map(x, get_widths), max)
  min_widths <- map_int(map(x, get_min_widths), max)

  #' @details
  #' In a first pass, for each column it is decided if it is hidden, shown with
  #' its minimum width or shown with its maximum width.
  col_widths <- colonnade_compute_col_widths(min_widths, max_widths, width)

  #' Remaining space is then distributed proportionally to columns that do not
  #' use their desired width.
  added_space <- colonnade_distribute_space(col_widths, max_widths[seq_along(col_widths)], width)

  total_widths <- col_widths + added_space
  length(total_widths) <- length(x)

  data.frame(id = seq_along(x), width = total_widths, chunk = ifelse(is.na(total_widths), 0L, 1L))
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
colonnade_compute_col_widths <- function(min_widths, max_widths, width) {
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

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
colonnade_distribute_space <- function(col_widths, max_widths, width) {
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
