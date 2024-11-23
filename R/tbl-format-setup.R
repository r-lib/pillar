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
#' @param setup
#'   This method is first called with `setup = NULL` .
#'   If the method _evaluates_ this argument, the return value
#'   will only be used in a call to [tbl_format_header()],
#'   and after that, a second call to this method will be made
#'   with the return value of the first call as `setup`.
#'   This allows displaying the header before starting the computation
#'   required for the body and footer.
#' @param n
#'   Actual number of rows to print.
#'   No [options][pillar_options] should be considered
#'   by implementations of this method.
#' @param max_extra_cols
#'   Number of columns to print abbreviated information for,
#'   if the width is too small for the entire tibble.
#'   No [options][pillar_options] should be considered
#'   by implementations of this method.
#' @param max_footer_lines
#'   Maximum number of lines for the footer.
#'   No [options][pillar_options] should be considered
#'   by implementations of this method.
#' @param focus `r lifecycle::badge("experimental")`
#'
#'   Names of columns to show preferentially if space is tight.
#' @return
#'   An object that can be passed as `setup` argument to
#'   [tbl_format_header()], [tbl_format_body()], and [tbl_format_footer()].
#' @export
#' @examplesIf rlang::is_installed(c("palmerpenguins", "tibble"))
#' tbl_format_setup(palmerpenguins::penguins)
tbl_format_setup <- function(
  x,
  width = NULL,
  ...,
  setup = list(tbl_sum = tbl_sum(x)),
  n = NULL,
  max_extra_cols = NULL,
  max_footer_lines = NULL,
  focus = NULL
) {
  "!!!!DEBUG tbl_format_setup()"

  width <- get_width_print(width)

  n <- get_n_print(n, tbl_nrow(x))

  max_extra_cols <- get_max_extra_cols(max_extra_cols)
  max_footer_lines <- get_max_footer_lines(max_footer_lines)

  # Calls UseMethod("tbl_format_setup"),
  # allows using default values in S3 dispatch
  out <- tbl_format_setup_dispatch(
    x,
    width,
    ...,
    setup = setup,
    n = n,
    max_extra_cols = max_extra_cols,
    max_footer_lines = max_footer_lines,
    focus = focus
  )
  return(out)
  UseMethod("tbl_format_setup")
}

tbl_format_setup_dispatch <- function(x, width, ..., n, max_extra_cols, max_footer_lines, focus = NULL) {
  UseMethod("tbl_format_setup")
}

#' @details
#' The default method for the `"tbl"` class collects information for
#' standard printing for tibbles.
#' See [new_tbl_format_setup()] for details on the returned object.
#'
#' @rdname tbl_format_setup
#' @export
tbl_format_setup.tbl <- function(
  x,
  width,
  ...,
  setup,
  n,
  max_extra_cols,
  max_footer_lines,
  focus
) {
  "!!!!DEBUG tbl_format_setup.tbl()"

  if (is.null(setup)) {
    # Header with early exit
    tbl_sum <- tbl_sum(x)
    return(new_tbl_format_setup(width, tbl_sum, rows_total = NA_integer_))
  } else {
    tbl_sum <- setup$tbl_sum
  }

  # Number of rows
  rows <- tbl_nrow(x)

  lazy <- is.na(rows)
  if (lazy) {
    df <- as.data.frame(head(x, n + 1))
    if (nrow(df) <= n) {
      rows <- nrow(df)
    } else {
      df <- vec_head(df, n)
    }
  } else {
    df <- df_head(x, n)
  }

  if (is.na(rows)) {
    # Lazy table with too many rows
    needs_dots <- (nrow(df) >= n)
  } else {
    # Lazy table with few rows, or regular data frame
    needs_dots <- (rows > n)
  }

  if (needs_dots) {
    rows_missing <- rows - n
  } else {
    rows_missing <- 0L
  }

  # Body
  rownames(df) <- NULL

  colonnade <- ctl_colonnade(
    df,
    has_row_id = if (!lazy && .row_names_info(x) > 0) "*" else TRUE,
    width = width,
    controller = x,
    focus = focus
  )

  body <- colonnade$body

  # Extra columns
  extra_cols <- colonnade$extra_cols
  extra_cols_total <- length(extra_cols)

  if (extra_cols_total > max_extra_cols) {
    length(extra_cols) <- max_extra_cols
  }

  # Abbreviated columns
  abbrev_cols <- colonnade$abbrev_cols

  # Result
  new_tbl_format_setup(
    x = x,
    df = df,
    width = width,
    tbl_sum = tbl_sum,
    body = body,
    rows_missing = rows_missing,
    rows_total = rows,
    extra_cols = extra_cols,
    extra_cols_total = extra_cols_total,
    max_footer_lines = max_footer_lines,
    abbrev_cols = abbrev_cols
  )
}

#' Number of rows in a tbl object
#'
#' This generic will be called by [tbl_format_setup()] to determine the number
#' of rows in a tbl object.
#'
#' @param x A tbl object.
#' @inheritParams rlang::args_dots_empty
#' @export
tbl_nrow <- function(x, ...) {
  check_dots_empty0(...)
  UseMethod("tbl_nrow")
}

#' @export
tbl_nrow.tbl <- function(x, ...) {
  nrow(x)
}


#' Construct a setup object for formatting
#'
#' @description
#' The object returned from the default method of [tbl_format_setup()]
#' is an object with a `"class"` attribute and the elements described in the
#' "Parameters" section.
#'
#' Named elements can be added to such objects without affecting the behavior.
#' Do not modify existing elements.
#'
#' @param x The input object unchanged.
#' @param df A data frame representation of the intended output,
#'   trimmed to the desired number of rows.
#' @param width The `width` argument unchanged.
#' @param tbl_sum A named character vector, as returned from [tbl_sum()].
#' @param body A character vector with the formatted body,
#'   one element per line,
#' @param rows_missing The number of rows not shown from the body,
#'   `NA` if unknown.
#' @param rows_total The total number of rows in the data,
#'   `NA` if unknown.
#' @param extra_cols Columns that did not fit into the body,
#'   as a character vector of formatted column names and types.
#' @param extra_cols_total The total number of columns, may be larger than
#'   `length(extra_cols)`.
#' @param max_footer_lines The maximum number of lines in the footer.
#' @param abbrev_cols Formatted names of the columns that are shown abbreviated
#'   in the body.
#'
#' @keywords internal
new_tbl_format_setup <- function(
  width,
  tbl_sum,
  x = NULL,
  df = NULL,
  body = NULL,
  rows_missing = NULL,
  rows_total = NULL,
  extra_cols = NULL,
  extra_cols_total = NULL,
  max_footer_lines = NULL,
  abbrev_cols = NULL
) {
  trunc_info <- list(
    x = x,
    df = df,
    width = width,
    tbl_sum = tbl_sum,
    body = body,
    rows_missing = rows_missing,
    rows_total = rows_total,
    extra_cols = extra_cols,
    extra_cols_total = extra_cols_total,
    max_footer_lines = max_footer_lines,
    abbrev_cols = abbrev_cols
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
    tbl_format_header(x),
    tbl_format_body(x),
    tbl_format_footer(x)
  )
}
