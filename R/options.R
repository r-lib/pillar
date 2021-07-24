#' Package options
#'
#' Options that affect display of tibble-like output.
#'
#' All options are available via the `pillar_options` list.
#' The elements of this list are combined getter/setter functions.
#' Calling a function without arguments returns the current value,
#' by providing an argument the current value is set and the old value
#' is returned, invisibly.
#' Setting `local = TRUE` enables the option for the duration of the
#' current stack frame via [rlang::local_options()].
#'
#' @eval option_usage()
#'
#' @export
#' @section Options:
pillar_options <- list(
  # pillar_option_get_bold
  # pillar_option_set_bold
  bold = make_option_impl("bold", FALSE),
  #' - `bold`: Use bold font, e.g. for column headers? This currently
  #'     defaults to `FALSE`, because many terminal fonts have poor support for
  #'     bold fonts.
  # pillar_option_get_subtle
  # pillar_option_set_subtle
  subtle = make_option_impl("subtle", TRUE),
  #' - `subtle`: Use subtle style, e.g. for row numbers and data types?
  #'     Default: `TRUE`.
  # pillar_option_get_subtle_num
  # pillar_option_set_subtle_num
  subtle_num = make_option_impl("subtle_num", FALSE),
  #' - `subtle_num`: Use subtle style for insignificant digits? Default:
  #'     `FALSE`, is also affected by the `subtle` option.
  #' - `neg`: Highlight negative numbers? Default: `TRUE`.
  # pillar_option_get_neg
  # pillar_option_set_neg
  neg = make_option_impl("neg", TRUE),
  #' - `sigfig`: The number of significant digits that will be printed and
  #'     highlighted, default: `3`. Set the `subtle` option to `FALSE` to
  #'     turn off highlighting of significant digits.
  # pillar_option_get_sigfig
  # pillar_option_set_sigfig
  sigfig = make_option_impl("sigfig", 3L),
  #' - `min_title_chars`: The minimum number of characters for the column
  #'     title, default: `15`.  Column titles may be truncated up to that width to
  #'     save horizontal space. Set to `Inf` to turn off truncation of column
  #'     titles.
  # pillar_option_get_min_title_chars
  # pillar_option_set_min_title_chars
  min_title_chars = make_option_impl("min_title_chars", 15L),
  #' - `min_chars`: The minimum number of characters wide to
  #'     display character columns, default: `3`.  Character columns may be
  #'     truncated up to that width to save horizontal space. Set to `Inf` to
  #'     turn off truncation of character columns.
  # pillar_option_get_min_chars
  # pillar_option_set_min_chars
  min_chars = make_option_impl("min_chars", 3L),
  #' - `max_dec_width`: The maximum allowed width for decimal notation,
  #'     default 13.
  # pillar_option_get_max_dec_width
  # pillar_option_set_max_dec_width
  max_dec_width = make_option_impl("max_dec_width", 13L)
)
