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
#' @param width Width of output: defaults to the setting of the
#'   `width` [option][pillar_options] (if finite)
#'   or the width of the console.
#' @param ... Unused, for extensibility.
#' @return x original x is (invisibly) returned, allowing `glimpse()` to be
#'   used within a data pipe line.
#' @export
#' @examples
#' glimpse(mtcars)
#'
#' @examplesIf rlang::is_installed("nycflights13")
#' glimpse(nycflights13::flights)
#'
glimpse <- function(x, width = NULL, ...) {
  UseMethod("glimpse")
}

#' @export
glimpse.tbl <- function(x, width = NULL, ...) {
  if (!is.null(width) && !is.finite(width)) {
    abort("`width` must be finite.")
  }
  width <- get_width_glimpse(width)

  cli::cat_line("Rows: ", big_mark(nrow(x)))

  # this is an overestimate, but shouldn't be too expensive.
  # every type needs at least three characters: "x, "
  rows <- as.integer(width / 3)
  df <- df_head(x, rows)
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
  var_names <- paste0("$ ", align(ticked_names), " ", var_types, " ")

  # for some reason the offset was -2 in tibble but is now -1
  # so that the desired width is obtained
  data_width <- width - get_extent(var_names) - 1
  formatted <- map_chr(df, format_glimpse_1)
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
#' In a list, to distinguish between vectors and nested lists,
#' the latter are surrounded by `[]` brackets.
#' Empty lists are shown as `[]`.
#' Vectors inside lists, of length not equal to one,
#' are surrounded by `<>` angle brackets.
#' Empty vectors are shown as `<>`.
#'
#' @return A character vector of the same length as `x`.
#' @inheritParams rlang::args_dots_used
#' @param x A vector.
#' @export
#' @examples
#' format_glimpse(1:3)
#'
#' # Lists use [], vectors inside lists use <>
#' format_glimpse(list(1:3))
#' format_glimpse(list(1, 2:3))
#' format_glimpse(list(list(1), list(2:3)))
#' format_glimpse(list(as.list(1), as.list(2:3)))
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
  check_dots_used()
  UseMethod("format_glimpse")
}

# A variant with collapse and without checks, for format_glimpse.list()
format_glimpse_1 <- function(x, ..., .inner = NULL) {
  if (!is_null(.inner) && .inner) {
    collapse(format_glimpse_(x, ..., .inner = .inner))
  } else {
    paste0(format_glimpse_(x, ...), collapse = crayon_grey_0.6(", "))
  }
}

format_glimpse_ <- function(x, ...) {
  UseMethod("format_glimpse")
}


#' @export
format_glimpse.default <- function(x, ...) {
  dims <- dim(x)

  if (is.null(dims)) {
    out <- format(x, trim = TRUE, justify = "none")
    style_na_if(out, if (is.atomic(x)) is.na(x) else FALSE)
  } else {
    dims_out <- paste0(dims, collapse = " x ")
    paste0("<", class(x)[[1]], "[", dims_out, "]>")
  }
}

#' @export
format_glimpse.list <- function(x, ..., .inner = FALSE) {
  if (!.inner && length(x) == 0) {
    return("list()")
  }

  out <- map_chr(x, format_glimpse_1, .inner = TRUE)
  # Surround vectors by <>
  # Only surround inner lists by []
  list <- map_lgl(x, is.list)
  scalar <- rep_along(x, TRUE)
  scalar[!list] <- (map_int(x[!list], length) == 1L)
  out[!scalar] <- paste0("<", out[!scalar], ">")
  out[list] <- paste0("[", out[list], "]")

  out
}

#' @export
format_glimpse.character <- function(x, ...) {
  out <- encodeString(as.character(x), quote = '"')
  style_na_if(out, is.na(x))
}

#' @export
format_glimpse.factor <- function(x, ...) {
  if (any(grepl(",", levels(x), fixed = TRUE))) {
    out <- encodeString(as.character(x), quote = '"')
  } else {
    out <- format(x, trim = TRUE, justify = "none")
  }
  style_na_if(out, is.na(x))
}
