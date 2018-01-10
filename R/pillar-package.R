#' @aliases NULL pillar-package
#' @section Options that control appearance:
#'
#' - `pillar.bold`: Use bold font, e.g. for column headers? This currently
#'     defaults to `FALSE`, because many terminal fonts have poor support for
#'     bold fonts.
#' - `pillar.subtle`: Use subtle style, e.g. for insignificant digits? Default:
#'     `TRUE`.
#'
#' @section Options that control behaviour:
#'
#' - `pillar.sigfig`: The number of significant digits that will be printed and
#'     highlighted. Default: `3`. Set the `pillar.subtle` option to `FALSE` to
#'     turn off highlighting of significant digits.
#' - `pillar.colnames`: Controls the display of column names. The following
#'     values are supported:
#'     - `"full"` (default): Always print full column names
#'     - `"truncate"`: Allow truncation of column names, may lead to duplicate
#'       names in the header
"_PACKAGE"
