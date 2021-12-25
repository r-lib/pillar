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
#' @inheritParams tibble::char
#' @param formatted The data to show, an object coercible to [character].
#' @param align Alignment of the column.
#' @param na String to use as `NA` value, defaults to `"NA"` styled with
#'   [style_na()] with fallback if color is not available.
#' @param na_indent Indentation of `NA` values.
#' @param short_formatted If provided, a character vector of the same length as
#'   `formatted`, to be used when the available width is insufficient to show
#'   the full output.
#' @export
#' @rdname new_pillar_shaft
new_pillar_shaft_simple <- function(formatted, ..., width = NULL, align = "left",
                                    min_width = NULL, na = NULL, na_indent = 0L,
                                    shorten = c("back", "front", "mid", "abbreviate"),
                                    short_formatted = NULL) {
  formatted <- as.character(formatted)

  if (is.null(width)) {
    width <- get_max_extent(formatted)
  }

  if (is.null(na)) {
    na <- pillar_na()
  }

  if (missing(shorten)) {
    shorten <- NULL
  } else if (!is.null(shorten)) {
    shorten <- arg_match(shorten)
  }

  if (!is.null(short_formatted)) {
    # stopifnot(get_extent(short_formatted) <= get_extent(formatted))
    if (is.null(min_width)) {
      min_width <- get_max_extent(short_formatted)
    }
  }

  new_pillar_shaft(
    list(formatted),
    ...,
    width = width,
    min_width = min_width,
    align = align,
    na = na,
    na_indent = na_indent,
    shorten = shorten,
    short_formatted = short_formatted,
    class = "pillar_shaft_simple"
  )
}

#' @export
format.pillar_shaft_simple <- function(x, width, ...) {
  align <- attr(x, "align", exact = TRUE)
  shorten <- attr(x, "shorten", exact = TRUE)
  short_formatted <- attr(x, "short_formatted", exact = TRUE)
  desired_width <- get_width(x)
  shaft <- as.character(x[[1]])
  if (width < desired_width) {
    if (is.null(short_formatted)) {
      shaft <- str_trunc(shaft, width, shorten)
    } else {
      short_idx <- !is.na(shaft) & (get_extent(shaft) > width)
      shaft[short_idx] <- short_formatted[short_idx]
    }
  }

  shaft[is.na(shaft)] <- paste0(
    strrep(" ", attr(x, "na_indent", exact = TRUE)),
    attr(x, "na", exact = TRUE)
  )

  new_ornament(shaft, width = width, align = align)
}
