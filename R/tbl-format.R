#' Formatting of tbl objects
#'
#' These functions and methods are responsible for printing objects
#' of the `tbl` class, which includes [tibble]s and dbplyr lazy
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
#' @param min_rows,max_rows
#'   If the total number of rows is greater than `max_rows`,
#'   only `min_rows` should be printed.
#'   Otherwise, all rows should be printed.
#'   Currently initialized with the value of the
#'   `tibble.print_min` and  `tibble.print_max` options, do not rely on this.
#' @param max_extra_cols
#'   Number of columns to print abbreviated information for,
#'   if the width is too small for the entire tibble.
#'   Currently initialized with the value of `n_extra`
#'   or the `tibble.max_extra_cols` options, do not rely on this.
#'
#' @name format_tbl
#' @export
#' @examples
#' print(vctrs::new_data_frame(list(a = 1), class = "tbl"))
print.tbl <- function(x, width = NULL, ..., n = NULL, n_extra = NULL) {
  cli::cat_line(format(x, width = width, ..., n = n, n_extra = n_extra))
  invisible(x)
}

#' @export
#' @rdname format_tbl
format.tbl <- function(x, width = NULL, ..., n = NULL, n_extra = NULL) {
  check_dots_empty()

  if (is.null(width)) {
    width <- cli::console_width()
  }

  setup <- tbl_format_setup(x, width = width, ...,
    n = n,
    min_rows = tibble_opt("print_min"),
    max_rows = tibble_opt("print_max"),
    max_extra_cols = n_extra %||% tibble_opt("max_extra_cols")
  )
  header <- tbl_format_header(x, setup)
  body <- tbl_format_body(x, setup)
  footer <- tbl_format_footer(x, setup)
  c(header, body, footer)
}

#' @export
#' @rdname format_tbl
tbl_format_setup <- function(x, width, ..., n, min_rows, max_rows, max_extra_cols) {
  check_dots_empty()

  UseMethod("tbl_format_setup")
}

tbl_format_setup.default <- function(x, width, ..., n, min_rows, max_rows, max_extra_cols) {
  rows <- nrow(x)

  if (is.null(n) || n < 0) {
    if (is.na(rows) || rows > max_rows) {
      n <- min_rows
    } else {
      n <- rows
    }
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
    width = width,
    squeezed = squeezed, rows_missing = rows_missing,
    rows_total = rows, rows_min = nrow(df),
    extra_cols = extra_cols
  )

  structure(trunc_info, class = "pillar_tbl_format_setup")
}

#' @export
#' @param setup Printing setup object created by `tbl_format_setup()`.
#' @rdname format_tbl
tbl_format_header <- function(x, setup, ...) {
  check_dots_empty()

  UseMethod("tbl_format_header")
}

#' @export
tbl_format_header.default <- function(x, setup, ...) {
  named_header <- tbl_sum(x)
  if (all(names2(named_header) == "")) {
    header <- named_header
  } else {
    header <- paste0(
      justify(
        paste0(names2(named_header), ":"),
        right = FALSE, space = NBSP
      ),
      # We add a space after the NBSP inserted by justify()
      # so that wrapping occurs at the right location for very narrow outputs
      " ",
      named_header
    )
  }

  style_subtle(format_comment(header, width = setup$width))
}

#' @export
#' @rdname format_tbl
tbl_format_body <- function(x, setup, ...) {
  check_dots_empty()

  UseMethod("tbl_format_body")
}

#' @export
tbl_format_body.default <- function(x, setup, ...) {
  format(setup$squeezed)
}

#' @export
#' @rdname format_tbl
tbl_format_footer <- function(x, setup, ...) {
  check_dots_empty()

  UseMethod("tbl_format_footer")
}

#' @export
#' @rdname format_tbl
tbl_format_footer.default <- function(x, setup, ...) {
  footer <- pre_dots(format_footer(x, setup))
  footer_comment <- split_lines(format_comment(footer, width = setup$width))
  style_subtle(footer_comment)
}

format_footer <- function(x, setup) {
  extra_rows <- format_footer_rows(x, setup)
  extra_cols <- format_footer_cols(x, setup)

  extra <- c(extra_rows, extra_cols)
  if (length(extra) >= 1) {
    extra[[1]] <- paste0("with ", extra[[1]])
    extra[-1] <- map_chr(extra[-1], function(ex) paste0("and ", ex))
    collapse(extra)
  } else {
    character()
  }
}

format_footer_rows <- function(x, setup) {
  if (length(setup$squeezed) != 0) {
    if (is.na(setup$rows_missing)) {
      "more rows"
    } else if (setup$rows_missing > 0) {
      paste0(big_mark(setup$rows_missing), pluralise_n(" more row(s)", setup$rows_missing))
    }
  } else if (is.na(setup$rows_total) && setup$rows_min > 0) {
    paste0("at least ", big_mark(setup$rows_min), pluralise_n(" row(s) total", setup$rows_min))
  }
}

format_footer_cols <- function(x, setup) {
  extra_cols <- setup$extra_cols
  if (length(extra_cols) == 0) return(NULL)

  vars <- format_extra_vars(extra_cols)
  paste0(
    big_mark(length(extra_cols)), " ",
    if (!identical(setup$rows_total, 0L) && setup$rows_min > 0) "more ",
    pluralise("variable(s)", extra_cols), vars
  )
}

format_extra_vars <- function(extra_cols) {
  # Also covers empty extra_cols vector!
  if (is.na(extra_cols[1])) return("")

  if (anyNA(extra_cols)) {
    extra_cols <- c(extra_cols[!is.na(extra_cols)], cli::symbol$ellipsis)
  }

  paste0(": ", collapse(extra_cols))
}

format_comment <- function(x, width) {
  if (length(x) == 0L) return(character())
  map_chr(x, wrap, prefix = "# ", width = min(width, cli::console_width()))
}

pre_dots <- function(x) {
  if (length(x) > 0) {
    paste0(cli::symbol$ellipsis, " ", x)
  } else {
    character()
  }
}

justify <- function(x, right = TRUE, space = " ") {
  if (length(x) == 0L) return(character())
  width <- nchar(x, type = "width")
  max_width <- max(width)
  spaces_template <- paste(rep(space, max_width), collapse = "")
  spaces <- map_chr(max_width - width, substr, x = spaces_template, start = 1L)
  if (right) {
    paste0(spaces, x)
  } else {
    paste0(x, spaces)
  }
}

collapse <- function(x) paste(x, collapse = ", ")

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

split_lines <- function(x) {
  # Avoid .ptype argument to vec_c()
  if (is_empty(x)) return(character())

  unlist(strsplit(x, "\n", fixed = TRUE))
}
