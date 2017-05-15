#' Format a vector suitable for tabular display
#'
#' @param x A vector to format
#' @param width Preferred width of output
#' @param ... Other arguments passed to methods
#' @return A character vector where every element is the same width.
#'   Should have `colformat` for better default print method.
#' @export
colformat <- function(x, ..., width = NA) {
  UseMethod("colformat")
}

#' @export
print.colformat <- function(x, ...) {
  cat(paste(x, collapse = "\n"))
}
