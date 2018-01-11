#' @aliases NULL pillar-package
#' @section Package options:
#'
#' - `pillar.bold`: Use bold font, e.g. for column headers? This currently
#'     defaults to `FALSE`, because many terminal fonts have poor support for
#'     bold fonts.
#' - `pillar.subtle`: Use subtle style, e.g. for insignificant digits? Default:
#'     `TRUE`.
#' - `pillar.neg`: Highlight negative numbers? Default: `TRUE`.
#' - `pillar.sigfig`: The number of significant digits that will be printed and
#'     highlighted, default: `3`. Set the `pillar.subtle` option to `FALSE` to
#'     turn off highlighting of significant digits.
#' - `pillar.min_title_chars`: The minimum number of characters for the column
#'     title, default: `15`.  Column titles may be truncated up to that width to
#'     save horizontal space. Set to `Inf` to turn off truncation of column
#'     titles.
"_PACKAGE"
