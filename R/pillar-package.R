#' @aliases NULL pillar-package
#'
#' @description
#' `r lifecycle::badge("maturing")`
#' Provides [pillar] and [colonnade] generics designed for formatting columns
#' of data using the full range of colours provided by modern terminals.

#' @details
#' See [pillar()] for formatting a single column,
#' and [colonnade()] for formatting multiple columns passed as a data frame.
#'
#' @section Package options:
#'
#' - `pillar.bold`: Use bold font, e.g. for column headers? This currently
#'     defaults to `FALSE`, because many terminal fonts have poor support for
#'     bold fonts.
#' - `pillar.subtle`: Use subtle style, e.g. for row numbers and data types?
#'     Default: `TRUE`.
#' - `pillar.subtle_num`: Use subtle style for insignificant digits? Default:
#'     `FALSE`, is also affected by the `pillar.subtle` option.
#' - `pillar.neg`: Highlight negative numbers? Default: `TRUE`.
#' - `pillar.sigfig`: The number of significant digits that will be printed and
#'     highlighted, default: `3`. Set the `pillar.subtle` option to `FALSE` to
#'     turn off highlighting of significant digits.
#' - `pillar.min_title_chars`: The minimum number of characters for the column
#'     title, default: `15`.  Column titles may be truncated up to that width to
#'     save horizontal space. Set to `Inf` to turn off truncation of column
#'     titles.
#' - `pillar.min_chars`: The minimum number of characters wide to
#'     display character columns, default: `0`.  Character columns may be
#'     truncated up to that width to save horizontal space. Set to `Inf` to
#'     turn off truncation of character columns.
#'
#' @examples
#' pillar(1:3)
#' pillar(c(1, 2, 3))
#' pillar(factor(letters[1:3]), title = "letters")
#' colonnade(iris[1:3, ])
"_PACKAGE"
