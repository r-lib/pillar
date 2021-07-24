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
#' These options can also be queried via [getOption()] and set via [options()]
#' by prefixing them with `pillar.` (the package name and a dot).
#' Example: for an option `foo`,
#' `pillar_options$foo(value)` is equivalent to
#' `options(pillar.foo = value)`.
#'
#' @export
#' @examples
#' # Default setting:
#' pillar_options$sigfig()
#' pillar(1.234567)
#'
#' # Change for the duration of the session:
#' old <- pillar_options$sigfig(6)
#' pillar(1.234567)
#'
#' # Change back to the original value:
#' pillar_options$sigfig(old)
#' pillar(1.234567)
#'
#' # Local scope:
#' local({
#'   pillar_options$sigfig(6, local = TRUE)
#'   pillar(1.234567)
#' })
#' pillar(1.234567)
#' @section Options for the pillar package:
pillar_options <- list2(
  # get_pillar_option_bold
  # set_pillar_option_bold
  bold = make_option_impl(
    getOption("pillar.bold", default = FALSE)
  ),
  #' - `bold`: Use bold font, e.g. for column headers? This currently
  #'     defaults to `FALSE`, because many terminal fonts have poor support for
  #'     bold fonts.
  # get_pillar_option_subtle
  # set_pillar_option_subtle
  subtle = make_option_impl(
    getOption("pillar.subtle", default = TRUE)
  ),
  #' - `subtle`: Use subtle style, e.g. for row numbers and data types?
  #'     Default: `TRUE`.
  # get_pillar_option_subtle_num
  # set_pillar_option_subtle_num
  subtle_num = make_option_impl(
    getOption("pillar.subtle_num", default = FALSE)
  ),
  #' - `subtle_num`: Use subtle style for insignificant digits? Default:
  #'     `FALSE`, is also affected by the `subtle` option.
  #' - `neg`: Highlight negative numbers? Default: `TRUE`.
  # get_pillar_option_neg
  # set_pillar_option_neg
  neg = make_option_impl(
    getOption("pillar.neg", default = TRUE)
  ),
  #' - `sigfig`: The number of significant digits that will be printed and
  #'     highlighted, default: `3`. Set the `subtle` option to `FALSE` to
  #'     turn off highlighting of significant digits.
  # get_pillar_option_sigfig
  # set_pillar_option_sigfig
  sigfig = make_option_impl(option_name = "pillar.sigfig", {
    sigfig <- getOption("pillar.sigfig", default = 3L)
    if (!is.numeric(sigfig) || length(sigfig) != 1 || sigfig < 1L) {
      inform("Option pillar.sigfig must be a positive number greater or equal 1. Resetting to 3.")
      sigfig <- 3L
      set_pillar_option_sigfig(sigfig)
    }
    sigfig
  }),
  #' - `min_title_chars`: The minimum number of characters for the column
  #'     title, default: `15`.  Column titles may be truncated up to that width to
  #'     save horizontal space. Set to `Inf` to turn off truncation of column
  #'     titles.
  # get_pillar_option_min_title_chars
  # set_pillar_option_min_title_chars
  min_title_chars = make_option_impl(
    getOption("pillar.min_title_chars", default = 15L)
  ),
  #' - `min_chars`: The minimum number of characters wide to
  #'     display character columns, default: `3`.  Character columns may be
  #'     truncated up to that width to save horizontal space. Set to `Inf` to
  #'     turn off truncation of character columns.
  # get_pillar_option_min_chars
  # set_pillar_option_min_chars
  min_chars = make_option_impl(option_name = "pillar.min_chars", {
    min_chars <- getOption("pillar.min_chars", default = 3L)
    if (!is.numeric(min_chars) || length(min_chars) != 1 || min_chars < 3L) {
      inform("Option pillar.min_chars must be a nonnegative number greater or equal 3. Resetting to 3.")
      min_chars <- 3L
      set_pillar_option_min_chars(min_chars)
    }
    min_chars
  }),
  #' - `max_dec_width`: The maximum allowed width for decimal notation,
  #'     default 13.
  # get_pillar_option_max_dec_width
  # set_pillar_option_max_dec_width
  max_dec_width = make_option_impl(
    getOption("pillar.max_dec_width", default = 13L)
  ),
)
