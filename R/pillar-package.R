#' @aliases NULL pillar-package
#'
#' @description
#' `r lifecycle::badge("stable")`
#'
#' Formats tabular data in columns or rows
#' using the full range of colours provided by modern terminals.
#' Provides various generics for making every aspect of the display customizable.
#'
#' @details
#' See [pillar()] for formatting a single column,
#' and [print.tbl()] for formatting data-frame-like objects.
#'
#' @examples
#' pillar(1:3)
#' pillar(c(1, 2, 3))
#' pillar(factor(letters[1:3]), title = "letters")
#' colonnade(iris[1:3, ])
"_PACKAGE"
