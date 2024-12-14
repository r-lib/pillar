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
  }

  # Printing happens as a side effect thanks to `transform = writeLines` .
  # For formatting, the default `transform = identity` returns the data instead.
  format_tbl(
    x,
    width = width, ...,
    n = n, max_extra_cols = max_extra_cols, max_footer_lines = max_footer_lines,
    transform = writeLines
  )

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

format_tbl <- function(
  x,
  width = NULL,
  ...,
  n_extra = NULL,
  n = NULL,
  max_extra_cols = NULL,
  max_footer_lines = NULL,
  transform = identity
) {
  check_dots_empty()

  if (!is.null(n_extra)) {
    deprecate_stop("1.6.2", "pillar::format(n_extra = )", "pillar::format(max_extra_cols = )")
  }

  # Reset local cache for each new output
  force(x)
  num_colors(forget = TRUE)

  # This is a bit of a hack to allow the setup function to be called twice
  # if the implementer is prepared to handle that.
  # We detect that by checking if the `setup` argument has been evaluated.
  setup_used <- FALSE

  # In either case, we expect a `setup` object that can be passed to `tbl_format_header()`
  # as a return from this call.
  setup <- tbl_format_setup(
    x,
    width = width,
    ...,
    setup = {
      # This construct updates the `setup_used` variable in the parent scope
      # when the `setup` argument is evaluated.
      setup_used <- TRUE
      NULL
    },
    n = n,
    max_extra_cols = max_extra_cols,
    max_footer_lines = max_footer_lines,
    focus = attr(x, "pillar_focus")
  )

  header <- transform(tbl_format_header(x, setup))

  # If the implementation did not request the `setup` argument in the first call,
  # the default behavior before 1.9.1 is used: the first call already
  # has returned the full setup object.
  # Otherwise, we assume that a second call is required, and we pass it the
  # setup object returned from the first call.
  if (setup_used) {
    setup <- tbl_format_setup(
      x,
      width = width,
      ...,
      setup = setup,
      n = n,
      max_extra_cols = max_extra_cols,
      max_footer_lines = max_footer_lines,
      focus = attr(x, "pillar_focus")
    )
  }

  # In either case, the `setup` object is now complete and can be used to format the body
  # and the footer.
  body <- transform(tbl_format_body(x, setup))
  footer <- transform(tbl_format_footer(x, setup))
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
