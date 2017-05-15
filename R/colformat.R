#' Format a vector suitable for tabular display
#'
#' @param x A vector to format
#' @param width Preferred width of output
#' @param ... Other arguments passed to methods
#' @return A character vector where every element is the same width.
#'   Should have `colformat` for better default print method.
#' @export
#' @examples
#'
#' x <- sample(c(TRUE, FALSE, NA), 10, replace = TRUE, prob = c(0.4, 0.4, 0.2))
#' colformat(x)
colformat <- function(x, ..., width = NA) {
  UseMethod("colformat")
}

#' @export
format.colformat <- function(x, title = "title", ...) {
  align <- attr(x, "align")
  width <- max(nchar(title), attr(x, "width"))

  structure(
    col_align(x, width = width, align = align),
    title = col_align(title, width = width, align = align),
    width = width
  )
}

#' @export
print.colformat <- function(x, title = "title", ...) {
  x <- format(x, title = title, ...)

  cat_line(attr(x, "title"))
  cat_line(boxes::rule(line = 1, width = attr(x, "width")))
  cat_line(paste(x, collapse = "\n"))
}

new_colformat <- function(x, width, align = "left") {
  structure(
    x,
    width = width,
    align = align,
    class = "colformat"
  )
}

# Methods -----------------------------------------------------------------

#' @export
colformat.logical <- function(x, title, ..., width = NA) {
  out <- character(length(x))
  out[x & !is.na(x)] <- crayon::green("*")
  out[!x & !is.na(x)] <- crayon::silver("-")
  out[is.na(x)] <- col_na()

  new_colformat(out, width = 1, align = "right")
}
