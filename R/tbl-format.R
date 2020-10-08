#' Formatting of tbl objects
#'
#' These functions and methods are responsible for printing objects
#' of the `tbl` class, which includes [tibble][tibble::tibble]s and dbplyr lazy
#' data frames.
#' See [tibble::formatting] for user level documentation,
#' and `vignette("customization")` for details.
#'
#' @param x Object to format or print.
#' @param ... Passed on to `tbl_format_setup()` from `print()` and `format()`,
#'   must be empty for other methods.
#' @param n Number of rows to show. If `NULL`, the default, will print all rows
#'   if less than option `tibble.print_max`. Otherwise, will print
#'   `tibble.print_min` rows.
#' @param width Width of text output to generate. This defaults to `NULL`, which
#'   means use `getOption("tibble.width")` or (if also `NULL`)
#'   `getOption("width")`; the latter displays only the columns that fit on one
#'   screen. You can also set `options(tibble.width = Inf)` to override this
#'   default and always print all columns.
#' @param n_extra Number of extra columns to print abbreviated information for,
#'   if the width is too small for the entire tibble. If `NULL`, the default,
#'   will print information about at most `tibble.max_extra_cols` extra columns.
#'
#' @name format_tbl
#' @export
#' @examples
#' print(vctrs::new_data_frame(list(a = 1), class = "tbl"))
print.tbl <- function(x, width = NULL, ..., n = NULL, n_extra = NULL) {
  writeLines(format(x, width = width, ..., n = n, n_extra = n_extra))
  invisible(x)
}

#' @export
#' @rdname format_tbl
format.tbl <- function(x, width = NULL, ..., n = NULL, n_extra = NULL) {
  check_dots_empty()

  width <- get_width_print(width)

  n <- get_n_print(n, nrow(x))

  setup <- tbl_format_setup(x, width = width, ...,
    n = n,
    # FIXME: Don't repeat in default method
    max_extra_cols = n_extra %||% tibble_opt("max_extra_cols")
  )

  format_setup(x, setup)
}

format_setup <- function(x, setup) {
  header <- tbl_format_header(x, setup)
  body <- tbl_format_body(x, setup)
  footer <- tbl_format_footer(x, setup)
  c(header, body, footer)
}

#' @export
#' @param setup Printing setup object created by `tbl_format_setup()`.
#' @rdname format_tbl
tbl_format_header <- function(x, setup, ...) {
  check_dots_empty()

  UseMethod("tbl_format_header")
}

#' @export
#' @rdname format_tbl
tbl_format_body <- function(x, setup, ...) {
  check_dots_empty()

  UseMethod("tbl_format_body")
}

#' @export
#' @rdname format_tbl
tbl_format_footer <- function(x, setup, ...) {
  check_dots_empty()

  UseMethod("tbl_format_footer")
}

format_comment <- function(x, width) {
  if (length(x) == 0L) return(character())
  map_chr(x, wrap, prefix = "# ", width = min(width, cli::console_width()))
}

# wrap --------------------------------------------------------------------

NBSP <- "\U00A0"

wrap <- function(..., indent = 0, prefix = "", width) {
  x <- paste0(..., collapse = "")
  wrapped <- strwrap2(x, width - nchar(prefix, type = "width"), indent)
  wrapped <- paste0(prefix, wrapped)
  wrapped <- gsub(NBSP, " ", wrapped)

  paste0(wrapped, collapse = "\n")
}

strwrap2 <- function(x, width, indent) {
  fansi::strwrap_ctl(x, width = max(width, 0), indent = indent, exdent = indent + 2)
}
