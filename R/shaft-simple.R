#' @include shaft.R
#' @description
#' `new_pillar_shaft_simple()` provides an implementation of the `pillar_shaft`
#' class suitable for output that has a fixed formatting, which will be
#' truncated with a continuation character (ellipsis or `~`) if it doesn't fit
#' the available width.
#' By default, the required width is computed from the natural width of the
#' `formatted` argument.
#'
#' @details
#' The `formatted` argument may also contain ANSI escapes to change color
#' or other attributes of the text, see [crayon].
#'
#' @param formatted An object coercible to [character].
#' @param align Alignment of the column.
#' @param na String to use as `NA` value, defaults to `"NA"` styled with
#'   [style_na()] with fallback if color is not available.
#' @param na_indent Indentation of `NA` values.
#' @export
#' @rdname new_pillar_shaft
new_pillar_shaft_simple <- function(formatted, ..., width = NULL, align = "left",
                                    min_width = NULL, na = NULL, na_indent = 0L) {
  if (is.null(width)) {
    width <- get_max_extent(as.character(formatted))
  }

  if (is.null(na)) {
    na <- pillar_na()
  }

  new_pillar_shaft(
    list(formatted),
    ...,
    width = width,
    min_width = min_width,
    align = align,
    na = na,
    na_indent = na_indent,
    class = "pillar_shaft_simple"
  )
}

#' @export
format.pillar_shaft_simple <- function(x, width, ...) {
  align <- attr(x, "align")
  desired_width <- get_width(x)
  shaft <- as.character(x[[1]])
  if (width < desired_width) {
    shaft <- str_trunc(shaft, width)
  }
  shaft[is.na(shaft)] <- paste0(
    strrep(" ", attr(x, "na_indent")),
    # Fallback for compatibility, remove pillar_na() call in pillar 1.5.0
    attr(x, "na") %||% pillar_na()
  )

  new_ornament(shaft, width = width, align = align)
}
