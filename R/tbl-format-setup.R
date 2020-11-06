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
#' [tbl_format_header()], [tbl_format_body()], and [tbl_format_footer()]
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
#' [tbl_format_header()], [tbl_format_body()], and [tbl_format_footer()]
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
#'   Actual width for printing, a numeric greater than zero.
#'   This argument is mandatory for all implementations of this method.
#' @param ...
#'   Extra arguments to [print.tbl()] or [format.tbl()].
#' @param n
#'   Actual number of rows to print.
#'   No [option]s should be considered by implementations of this method.
#' @param max_extra_cols
#'   Number of columns to print abbreviated information for,
#'   if the width is too small for the entire tibble.
#'   No [option]s should be considered by implementations of this method.
#'
#' @return
#'   An object that will be passed as `setup` argument to
#'   [tbl_format_header()], [tbl_format_body()], and [tbl_format_footer()].
#' @export
tbl_format_setup <- function(x, width, ...,
                             n, max_extra_cols) {
  stopifnot(is.numeric(width), width > 0)

  UseMethod("tbl_format_setup")
}

#' @details
#' The default method for the `"tbl"` class collects information for
#' standard printing for tibbles.
#' See [new_tbl_format_setup()] for details on the returned object.
#'
#' @rdname tbl_format_setup
#' @export
#' @importFrom utils head
tbl_format_setup.tbl <- function(x, width, ...,
                                 n = NULL, max_extra_cols = NULL) {
  rows <- nrow(x)
  if (is.null(n)) {
    # For testing
    n <- rows
    stopifnot(!is.na(n))
  }

  if (is.na(rows)) {
    df <- as.data.frame(head(x, n + 1))
    if (nrow(df) <= n) {
      rows <- nrow(df)
    } else {
      df <- df[seq_len(n), , drop = FALSE]
    }
  } else {
    df <- as.data.frame(head(x, n))
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

  new_tbl_format_setup(
    x = x,
    width = width,
    squeezed = squeezed,
    rows_body = nrow(df),
    rows_missing = rows_missing,
    rows_total = rows,
    extra_cols = extra_cols
  )
}

#' Construct a setup object for formatting
#'
#' @description
#' The object returned from the default method of [tbl_format_setup()]
#' is a list with a `"class"` attribute and the elements described in the
#' "Parameters" section.
#'
#' Named elements can be added to such objects without affecting the behavior.
#' Do not modify existing elements.
#'
#' @param x The input object unchanged,
#' @param width The `width` argument unchanged,
#' @param squeezed TBD
#' @param rows_body The number of rows shown in the body,
#'   even if the body does not have any columns.
#' @param rows_missing The number of rows not shown from the body,
#'   `NA` if unknown.
#' @param rows_total The total number of rows in the data,
#'   `NA` if unknown.
#' @param extra_cols TBD
#'
#' @keywords internal
new_tbl_format_setup <- function(x, width, squeezed,
                                 rows_body, rows_missing, rows_total,
                                 extra_cols) {
  trunc_info <- list(
    x = x,
    width = width,
    squeezed = squeezed,
    rows_body = rows_body,
    rows_missing = rows_missing,
    rows_total = rows_total,
    extra_cols = extra_cols
  )

  structure(trunc_info, class = "pillar_tbl_format_setup")
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
  c(
    cli::style_bold("<pillar_tbl_format_setup>"),
    format_setup(x$x, setup = x)
  )
}
