#' Set up formatting
#'
#' @description
#' `tbl_format_setup()` is called by [format.tbl()].
#' This method collects information that is common to the header, body,
#' and footer parts of a tibble.
#' Examples:
#'
#' - the dimensions sometimes are reported both in the header
#' and (implicitly) in the footer of a tibble;
#' - the columns shown in the body decide which columns are shown in the footer.
#'
#' This information is computed once in `tbl_format_setup()`.
#' The result is passed on to the
#' [tbl_format_header()], [tbl_format_body()] and [tbl_format_footer()]
#' methods.
#' If you need to customize parts of the printed output independently,
#' override these methods instead.
#'
#' @details
#' Extend this method to prepare information that is used
#' in several parts of the printed output of a tibble-like object,
#' or to collect additional arguments passed via `...` to
#' [print.tbl()] or [format.tbl()].
#'
#' We expect that `tbl_format_setup()` is extended only rarely,
#' and overridden only in exceptional circumstances, if at all.
#' If you override this method, you must also implement
#' [tbl_format_header()], [tbl_format_body()] and [tbl_format_footer()]
#' for your class.
#'
#' Implementing a method
#' allows to override printing and formatting of the entire object
#' without overriding the [print()] and [format()] methods directly.
#' This allows to keep the logic of the `width` and `n` arguments.
#'
#' @param x
#'   An object.
#' @param width
#'   Actual width for printing.
#' @param ...
#'   Extra arguments passed to [print.tbl()] or [format.tbl()].
#' @param n
#'   Actual number of rows to print.
#'   No [option]s should be considered by implementations of this method.
#' @param max_extra_cols
#'   Number of columns to print abbreviated information for,
#'   if the width is too small for the entire tibble.
#'   Currently initialized with the value of `n_extra`
#'   or the `tibble.max_extra_cols` options, do not rely on this.
#'
#' @export
tbl_format_setup <- function(x, width, ...,
                             n, max_extra_cols) {
  UseMethod("tbl_format_setup")
}

#' tbl_format_setup.tbl()
#'
#' @details
#' The default method for the `"tbl"` class collects information for
#' standard printing for tibbles.
#' Objects returned by the default method are lists with a `"class"` attribute.
#' Named elements can be added to such objects without affecting the behavior.
#' Do not modify existing elements.
#'
#' @rdname tbl_format_setup
#' @export
tbl_format_setup.tbl <- function(x, width, ...,
                                 n = NULL, max_extra_cols = NULL) {
  rows <- nrow(x)
  if (is.null(n)) {
    # For testing
    n <- rows
    stopifnot(!is.na(n))
  }

  if (is.na(rows)) {
    df <- as.data.frame(utils::head(x, n + 1))
    if (nrow(df) <= n) {
      rows <- nrow(df)
    } else {
      df <- df[seq_len(n), , drop = FALSE]
    }
  } else {
    df <- as.data.frame(utils::head(x, n))
  }

  if (is.na(rows)) {
    needs_dots <- (nrow(df) >= n)
  } else {
    needs_dots <- (rows > n)
  }

  if (needs_dots) {
    rows_missing <- rows - n
  } else {
    rows_missing <- 0L
  }

  rownames(df) <- NULL
  colonnade <- colonnade(
    df,
    has_row_id = if (.row_names_info(x) > 0) "*" else TRUE,
    width = width
  )

  squeezed <- squeeze_impl(colonnade)

  extra_cols <- extra_cols_impl(squeezed, n = max_extra_cols)

  trunc_info <- list(
    x = x,
    width = width,
    squeezed = squeezed, rows_missing = rows_missing,
    rows_total = rows, rows_min = nrow(df),
    extra_cols = extra_cols
  )

  new_tbl_format_setup(trunc_info)
}

new_tbl_format_setup <- function(x, ..., class = NULL) {
  structure(x, ..., class = c(class, "pillar_tbl_format_setup"))
}

is_tbl_format_setup <- function(x) {
  inherits(x, "pillar_tbl_format_setup")
}

# For testing
#' @export
print.pillar_tbl_format_setup <- function(x, ...) {
  writeLines(format(x, ...))
  invisible(x)
}

#' @export
format.pillar_tbl_format_setup <- function(x, ...) {
  check_dots_empty()
  format_setup(x$x, setup = x)
}
