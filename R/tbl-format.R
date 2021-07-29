#' Formatting of tbl objects
#'
#' @description
#' These functions and methods are responsible for printing objects
#' of the `"tbl"` class, which includes [tibble][tibble::tibble]s
#' and dbplyr lazy tables.
#' See [tibble::formatting] for user level documentation,
#' and `vignette("customization")` for details.
#'
#' While it is possible to implement a custom [format()] or [print()] method
#' for your tibble-like objects, it should never be necessary
#' if your class inherits from `"tbl"`.
#' In this case, the default methods offer many customization options
#' at every level of detail.
#' This means you only need to override or extend implementations for the parts
#' that need change.
#'
#' The output uses color and highlighting according to the `"cli.num_colors"` option.
#' Set it to `1` to suppress colored and highlighted output.
#'
#' @seealso
#'
#' - [tbl_format_setup()] for preparing an object for formatting
#'
#' @param x Object to format or print.
#' @param ... Passed on to [tbl_format_setup()].
#' @param n Number of rows to show. If `NULL`, the default, will print all rows
#'   if less than the `print_max` [option][pillar_options].
#'   Otherwise, will print as many rows as specified by the
#'   `print_min` [option][pillar_options].
#' @param width Width of text output to generate. This defaults to `NULL`, which
#'   means use the `width` [option][pillar_options].
#' @param max_extra_cols Number of extra columns to print abbreviated information for,
#'   if the width is too small for the entire tibble. If `NULL`,
#'   the `max_extra_cols` [option][pillar_options] is used.
#'   The previously defined `n_extra` argument is soft-deprecated.
#' @param max_footer_lines Maximum number of footer lines. If `NULL`,
#'   the `max_footer_lines` [option][pillar_options] is used.
#'
#' @name format_tbl
#' @export
#' @examples
#' print(vctrs::new_data_frame(list(a = 1), class = "tbl"))
print.tbl <- function(x, width = NULL, ..., n = NULL, max_extra_cols = NULL,
                      max_footer_lines = NULL) {
  print_tbl(
    x, width, ...,
    n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines
  )
}

print_tbl <- function(x, width = NULL, ...,
                      n_extra = NULL,
                      n = NULL, max_extra_cols = NULL, max_footer_lines = NULL) {

  if (!is.null(n_extra)) {
    deprecate_soft(
      "1.6.2", "pillar::print(n_extra = )", "pillar::print(max_extra_cols = )",
      user_env = caller_env(2)
    )
    if (is.null(max_extra_cols)) {
      max_extra_cols <- n_extra
    }
  }

  writeLines(format(
    x, width = width, ...,
    n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines
  ))
  invisible(x)
}

#' @export
#' @rdname format_tbl
format.tbl <- function(x, width = NULL, ...,
                       n = NULL, max_extra_cols = NULL, max_footer_lines = NULL) {
  format_tbl(
    x, width, ...,
    n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines
  )
}

format_tbl <- function(x, width = NULL, ...,
                       n_extra = NULL,
                       n = NULL, max_extra_cols = NULL, max_footer_lines = NULL) {
  check_dots_empty(action = signal)

  if (!is.null(n_extra)) {
    deprecate_soft(
      "1.6.2", "pillar::format(n_extra = )", "pillar::format(max_extra_cols = )",
      user_env = caller_env(2)
    )
    if (is.null(max_extra_cols)) {
      max_extra_cols <- n_extra
    }
  }

  # Reset local cache for each new output
  force(x)
  num_colors(forget = TRUE)

  setup <- tbl_format_setup(x,
    width = width, ...,
    n = n,
    max_extra_cols = max_extra_cols,
    max_footer_lines = max_footer_lines
  )

  header <- tbl_format_header(x, setup)
  body <- tbl_format_body(x, setup)
  footer <- tbl_format_footer(x, setup)
  c(header, body, footer)
}

format_comment <- function(x, width) {
  if (length(x) == 0L) {
    return(character())
  }
  map_chr(x, wrap, prefix = "# ", width = min(width, cli::console_width()))
}

# wrap --------------------------------------------------------------------

NBSP <- "\U00A0"

wrap <- function(..., indent = 0, prefix = "", width) {
  x <- paste0(..., collapse = "")
  wrapped <- strwrap2(x, width - get_extent(prefix), indent)
  wrapped <- paste0(prefix, wrapped)
  wrapped <- gsub(NBSP, " ", wrapped)

  paste0(wrapped, collapse = "\n")
}

strwrap2 <- function(x, width, indent) {
  fansi::strwrap_ctl(x, width = max(width, 0), indent = indent, exdent = indent + 2)
}
