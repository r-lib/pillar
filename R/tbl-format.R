#' Formatting of tbl objects
#'
#' See [tibble::formatting] for details.
#'
#' @name format_tbl
#' @export
#' @keywords internal
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
    deprecate_stop("1.6.2", "pillar::print(n_extra = )", "pillar::print(max_extra_cols = )")
    if (is.null(max_extra_cols)) {
      max_extra_cols <- n_extra
    }
  }

  writeLines(format(
    x,
    width = width, ...,
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
    deprecate_stop("1.6.2", "pillar::format(n_extra = )", "pillar::format(max_extra_cols = )")
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
    max_footer_lines = max_footer_lines,
    focus = attr(x, "pillar_focus")
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
  cli::ansi_strwrap(x, width = max(width, 0), indent = indent, exdent = indent + 2, simplify = FALSE)
}
