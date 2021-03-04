#' Get a glimpse of your data
#'
#' @description
#' `glimpse()` is like a transposed version of `print()`:
#' columns run down the page, and data runs across.
#' This makes it possible to see every column in a data frame.
#' It's a little like [str()] applied to a data frame
#' but it tries to show you as much data as possible.
#' (And it always shows the underlying data, even when applied
#' to a remote data source.)
#'
#' See [format_glimpse()] for details on the formatting.
#'
#' @section S3 methods:
#' `glimpse` is an S3 generic with a customised method for `tbl`s and
#' `data.frames`, and a default method that calls [str()].
#'
#' @param x An object to glimpse at.
#' @param width Width of output: defaults to the setting of the option
#'   `tibble.width` (if finite) or the width of the console.
#' @param ... Unused, for extensibility.
#' @return x original x is (invisibly) returned, allowing `glimpse()` to be
#'   used within a data pipe line.
#' @export
#' @examples
#' glimpse(mtcars)
#'
#' @examplesIf requireNamespace("nycflights13", quietly = TRUE)
#' glimpse(nycflights13::flights)
#'
glimpse <- function(x, width = NULL, ...) {
  UseMethod("glimpse")
}

#' @export
glimpse.tbl <- function(x, width = NULL, ...) {
  width <- get_width_glimpse(width)
  if (!is.finite(width)) {
    abort("`width` must be finite.")
  }

  cli::cat_line("Rows: ", big_mark(nrow(x)))

  # this is an overestimate, but shouldn't be too expensive.
  # every type needs at least three characters: "x, "
  rows <- as.integer(width / 3)
  df <- as.data.frame(head(x, rows))
  cli::cat_line("Columns: ", big_mark(ncol(df)))

  summary <- tbl_sum(x)
  brief_summary <- summary[-1]

  if (has_length(brief_summary)) {
    cli::cat_line(names(brief_summary), ": ", brief_summary)
  }

  if (ncol(df) == 0) {
    return(invisible(x))
  }

  var_types <- map_chr(map(df, new_pillar_type), format)
  ticked_names <- format(new_pillar_title(tick_if_needed(names(df))))
  var_names <- paste0("$ ", justify(ticked_names, right = FALSE), " ", var_types, " ")

  # for some reason the offset was -2 in tibble but is now -1
  # so that the desired width is obtained
  data_width <- width - crayon::col_nchar(var_names) - 1
  formatted <- map_chr(df, format_glimpse)
  truncated <- str_trunc(formatted, data_width)

  cli::cat_line(var_names, truncated)
  invisible(x)
}

#' @export
glimpse.data.frame <- glimpse.tbl

#' @importFrom utils str
#' @export
glimpse.default <- function(x, width = NULL, max.level = 3, ...) {
  str(x, width = get_width_glimpse(width), max.level = max.level, ...)
  invisible(x)
}

#' Format a vector for horizontal printing
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' This generic provides the logic for printing vectors in [glimpse()].
#'
#' The output strives to be as unambiguous as possible,
#' without compromising on readability.
#' To distinguish between vectors and lists, the latter are always surrounded
#' by `[]` brackets, empty lists are shown as `[]`.
#' Vectors inside lists are surrounded by `<>` angle brackets,
#' empty vectors are shown as `<>`.
#'
#' @return A string (a character vector of length 1).
#' @inheritDotParams ellipsis::check_dots_empty
#' @param x A vector.
#' @export
#' @examples
#' format_glimpse(1:3)
#'
#' # Lists use [], vectors inside lists use <>
#' format_glimpse(list(1:3))
#' format_glimpse(list(1, 2:3))
#' format_glimpse(list(list(1), list(2:3)))
#' format_glimpse(list(character()))
#' format_glimpse(list(NULL))
#'
#' # Character strings are always quoted
#' writeLines(format_glimpse(letters[1:3]))
#' writeLines(format_glimpse(c("A", "B, C")))
#'
#' # Factors are quoted only when needed
#' writeLines(format_glimpse(factor(letters[1:3])))
#' writeLines(format_glimpse(factor(c("A", "B, C"))))
format_glimpse <- function(x, ...) {
  UseMethod("format_glimpse")
}

#' @export
format_glimpse.default <- function(x, ...) {
  dims <- dim(x)

  if (!is.null(dims)) {
    dims_out <- paste0(dims, collapse = " x ")
    out <- paste0("<", class(x)[[1]], "[", dims_out, "]>")
  } else {
    out <- format(x, trim = TRUE, justify = "none")
  }

  collapse(out)
}

#' @export
format_glimpse.list <- function(x, ...) {
  out <- map_chr(x, format_glimpse)

  # Surround vectors by <>
  # Lists are already formatted by the inner format_glimpse()
  not_list <- !map_lgl(x, is.list)
  scalar <- rep_along(x, TRUE)
  scalar[not_list] <- (map_int(x[not_list], length) == 1L)
  out[!scalar] <- paste0("<", out[!scalar], ">")

  paste0("[", collapse(out), "]")
}

#' @export
format_glimpse.character <- function(x, ...) {
  collapse(encodeString(x, quote = '"'))
}

#' @export
format_glimpse.factor <- function(x, ...) {
  if (any(grepl(",", levels(x), fixed = TRUE))) {
    out <- encodeString(as.character(x), quote = '"')
  } else {
    out <- format(x, trim = TRUE, justify = "none")
  }

  collapse(out)
}
