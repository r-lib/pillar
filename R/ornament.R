#' Helper to define the contents of a pillar
#'
#' This function is useful if your data renders differently depending on the
#' available width. In this case, implement the [pillar_shaft()] method for your
#' class to return a subclass of "pillar_shaft" and have the [format()] method
#' for this subclass call `new_ornament()`. See the implementation of
#' `pillar_shaft.numeric()` and `format.pillar_shaft_decimal()` for an example.
#'
#' @param x A character vector with formatting, see [crayon]
#' @param width An optional width of the resulting pillar, computed from `x` if
#'   missing
#' @param align Alignment, one of `"left"` or `"right"`
#'
#' @export
new_ornament <- function(x, width = NULL, align = NULL) {
  ret <- new_vertical(
    x,
    align = align,
    extra_class = "pillar_ornament"
  )
  ret <- set_width(ret, width)
  ret
}

new_vertical <- function(x, ..., extra_class = NULL) {
  ret <- structure(
    x,
    ...,
    class = c(extra_class, "pillar_vertical")
  )
  ret
}

#' @export
print.pillar_vertical <- function(x, ...) {
  if (length(x) > 0) {
    cat_line(paste(x, collapse = "\n"))
  }
  invisible(x)
}
