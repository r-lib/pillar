#' @include shaft.R
#' @description
#' `new_pillar_shaft_simple()` provides an implementation of the `pillar_shaft`
#' class suitable for output that has a fixed formatting, which will be
#' truncated with a continuation character (ellipsis or `~`) if it doesn't fit
#' the available width.
#' By default, the required width is computed from the natural width of the
#' `formatted` argument.
#'
#' @param formatted An object coercible to [character].
#' @param align Alignment of the column.
#' @param na_indent Indention of `NA` values.
#' @export
#' @rdname new_pillar_shaft
new_pillar_shaft_simple <- function(formatted, ..., width = NULL, align = "left",
                                    min_width = NULL, na_indent = 0L) {
  if (is.null(width)) {
    width <- get_max_extent(as.character(formatted))
  }

  new_pillar_shaft(
    list(formatted),
    ...,
    width = width,
    min_width = min_width,
    align = align,
    na_indent = na_indent,
    subclass = "pillar_shaft_simple"
  )
}

#' @export
format.pillar_shaft_simple <- function(x, width, ...) {
  align <- attr(x, "align")
  desired_width <- get_width(x)
  data <- as.character(x[[1]])
  if (width < desired_width) {
    data <- str_trunc(data, width)
  }
  data[is.na(data)] <- paste0(strrep(" ", attr(x, "na_indent")), pillar_na())

  new_ornament(data, width = width, align = align)
}
