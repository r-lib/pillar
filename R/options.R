#' Package options
#'
#' Options that affect display of tibble-like output.
#'
#' These options can be set via [options()] and queried via [getOption()].
#'
#' @usage NULL
#' @format NULL
#'
#' @examplesIf rlang::is_installed("tibble")
#' df <- tibble::tibble(x = c(1.234567, NA, 5:10))
#' df
#'
#' # Change for the duration of the session:
#' old <- options(
#'   pillar.sigfig = 6,
#'   pillar.print_max = 5,
#'   pillar.print_min = 5,
#'   pillar.advice = FALSE
#' )
#' df
#'
#' # Change back to the original value:
#' options(old)
#' df
#'
#' @section Options for the pillar package:
#'
#' - `width`: The width option controls the output width.
#'   Setting `options(pillar.width = )` to a larger value
#'   will lead to printing in multiple tiers (stacks).
#'
pillar_options <- list2(
  #' - `pillar.print_max`: Maximum number of rows printed, default: `20`.
  #'   Set to \code{Inf} to always print all rows.
  #'   For compatibility reasons, `getOption("tibble.print_max")` and
  #'   `getOption("dplyr.print_max")` are also consulted,
  #'   this will be soft-deprecated in pillar v2.0.0.
  print_max = make_option_impl(
    getOption("pillar.print_max", default = tibble_opt("print_max", 20L))
  ),
  #' - `pillar.print_min`: Number of rows printed if the table has more than
  #'   `print_max` rows, default: `10`.
  #'   For compatibility reasons, `getOption("tibble.print_min")` and
  #'   `getOption("dplyr.print_min")` are also consulted,
  #'   this will be soft-deprecated in pillar v2.0.0.
  print_min = make_option_impl(
    getOption("pillar.print_min", default = tibble_opt("print_min", 10L))
  ),
  #' - `pillar.width`: Output width. Default: `NULL`
  #'   (use `getOption("width")`).
  #'   This can be larger than `getOption("width")`, in this case the output
  #'   of the table's body is distributed over multiple tiers for wide tibbles.
  #'   For compatibility reasons, `getOption("tibble.width")` and
  #'   `getOption("dplyr.width")` are also consulted,
  #'   this will be soft-deprecated in pillar v2.0.0.
  width = make_option_impl(
    getOption("pillar.width", default = tibble_opt("width", getOption("width")))
  ),
  #' - `pillar.max_footer_lines`: The maximum number of lines in the footer,
  #'     default: `7`. Set to `Inf` to turn off truncation of footer lines.
  #'     The `max_extra_cols` option still limits
  #'     the number of columns printed.
  max_footer_lines = make_option_impl(
    getOption("pillar.max_footer_lines", default = 7L)
  ),
  #' - `pillar.max_extra_cols`: The maximum number of columns printed in the footer,
  #'     default: `100`. Set to `Inf` to show all columns.
  #'     Set the more predictable `max_footer_lines` to control the number
  #'     of footer lines instead.
  max_extra_cols = make_option_impl(
    getOption("pillar.max_extra_cols", default = tibble_opt("max_extra_cols", 100L))
  ),
  #' - `pillar.bold`: Use bold font, e.g. for column headers? This currently
  #'     defaults to `FALSE`, because many terminal fonts have poor support for
  #'     bold fonts.
  bold = make_option_impl(
    getOption("pillar.bold", default = FALSE)
  ),
  #' - `pillar.subtle`: Use subtle style, e.g. for row numbers and data types?
  #'     Default: `TRUE`.
  subtle = make_option_impl(
    getOption("pillar.subtle", default = TRUE)
  ),
  #' - `pillar.subtle_num`: Use subtle style for insignificant digits? Default:
  #'     `FALSE`, is also affected by the `subtle` option.
  subtle_num = make_option_impl(
    getOption("pillar.subtle_num", default = FALSE)
  ),
  #' - `pillar.neg`: Highlight negative numbers? Default: `TRUE`.
  neg = make_option_impl(
    getOption("pillar.neg", default = TRUE)
  ),
  #' - `pillar.sigfig`: The number of significant digits that will be printed and
  #'     highlighted, default: `3`. Set the `subtle` option to `FALSE` to
  #'     turn off highlighting of significant digits.
  sigfig = make_option_impl(option_name = "pillar.sigfig", {
    sigfig <- getOption("pillar.sigfig", default = 3L)
    if (!is.numeric(sigfig) || length(sigfig) != 1 || sigfig < 1L) {
      inform("Option pillar.sigfig must be a positive number greater or equal 1. Resetting to 3.")
      sigfig <- 3L
      set_pillar_option_sigfig(sigfig)
    }
    sigfig
  }),
  #' - `pillar.min_title_chars`: The minimum number of characters for the column
  #'     title, default: `20`.  Column titles may be truncated up to that width to
  #'     save horizontal space. Set to `Inf` to turn off truncation of column
  #'     titles.
  min_title_chars = make_option_impl(
    getOption("pillar.min_title_chars", default = 20L)
  ),
  #' - `pillar.min_chars`: The minimum number of characters wide to
  #'     display character columns, default: `3`.  Character columns may be
  #'     truncated up to that width to save horizontal space. Set to `Inf` to
  #'     turn off truncation of character columns.
  min_chars = make_option_impl(option_name = "pillar.min_chars", {
    min_chars <- getOption("pillar.min_chars", default = 3L)
    if (!is.numeric(min_chars) || length(min_chars) != 1 || min_chars < 3L) {
      inform("Option pillar.min_chars must be a nonnegative number greater or equal 3. Resetting to 3.")
      min_chars <- 3L
      set_pillar_option_min_chars(min_chars)
    }
    min_chars
  }),
  #' - `pillar.max_dec_width`: The maximum allowed width for decimal notation,
  #'     default: `13`.
  max_dec_width = make_option_impl(
    getOption("pillar.max_dec_width", default = 13L)
  ),
  #' - `pillar.bidi`: Set to `TRUE` for experimental support for bidirectional scripts.
  #'     Default: `FALSE`. When this option is set, "left right override"
  #'     and "first strong isolate"
  #'     [Unicode controls](https://www.w3.org/International/questions/qa-bidi-unicode-controls)
  #'     are inserted to ensure that text appears in its intended direction
  #'     and that the column headings correspond to the correct columns.
  bidi = make_option_impl(
    getOption("pillar.bidi", default = FALSE)
  ),
  #' - `pillar.superdigit_sep`: The string inserted between superscript digits
  #'   and column names in the footnote. Defaults to a `"\u200b"`, a zero-width
  #'   space, on UTF-8 platforms, and to `": "` on non-UTF-8 platforms.
  superdigit_sep = make_option_impl(
    getOption("pillar.superdigit_sep", default = superdigit_sep_default())
  ),
  #' - `pillar.advice`: Should advice be displayed in the footer when columns or rows
  #'   are missing from the output? Defaults to `TRUE` for interactive sessions,
  #'   and to `FALSE` otherwise.
  advice = make_option_impl(
    getOption("pillar.advice", default = is_interactive())
  ),
)

tibble_opt <- function(x, default) {
  x_tibble <- paste0("tibble.", x)
  res <- getOption(x_tibble)
  if (!is.null(res)) {
    return(res)
  }

  x_dplyr <- paste0("dplyr.", x)
  res <- getOption(x_dplyr)
  if (!is.null(res)) {
    return(res)
  }

  default
}

get_width_print <- function(width) {
  if (!is.null(width)) {
    return(width)
  }

  get_pillar_option_width()
}

get_width_glimpse <- function(width) {
  width <- get_width_print(width)

  if (is.finite(width)) {
    width
  } else {
    getOption("width")
  }
}

get_n_print <- function(n, rows) {
  if (!is.null(n) && n >= 0) {
    return(n)
  }

  if (is.na(rows)) {
    structure(get_pillar_option_print_min(), max = get_pillar_option_print_max())
  } else if (rows > get_pillar_option_print_max()) {
    get_pillar_option_print_min()
  } else {
    rows
  }
}

get_max_extra_cols <- function(max_extra_cols) {
  if (!is.null(max_extra_cols) && max_extra_cols >= 0) {
    return(max_extra_cols)
  }

  get_pillar_option_max_extra_cols()
}

get_max_footer_lines <- function(max_footer_lines) {
  if (!is.null(max_footer_lines) && max_footer_lines >= 0) {
    return(max_footer_lines)
  }

  get_pillar_option_max_footer_lines()
}
