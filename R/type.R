MIN_PILLAR_WIDTH <- 5L

style_type <- function(x) {
  force(x)
  x <- style_subtle(x)
  crayon_italic(x)
}

#' Prepare a column type for formatting
#'
#' Calls [type_sum()] to format the type.
#' Call [format()] on the result to render column types.
#'
#' @param x A vector for which the type is to be retrieved.
#' @inheritParams rlang::args_dots_empty
#' @export
#' @examples
#' format(new_pillar_type("a"))
#' format(new_pillar_type(factor("a")))
new_pillar_type <- function(x, ...) {
  "!!!!DEBUG new_pillar_type(`v(class(x))`)"
  if (!missing(...)) {
    check_dots_empty(action = warn)
  }

  new_pillar_type_obj(get_pillar_type(x))
}

new_pillar_type_obj <- function(type) {
  # Must wrap in a list, because type_sum() can return a classed object
  ret <- structure(list(type), class = "pillar_type")
  extent <- get_extent(format_type_sum(type, NULL))
  ret <- set_width(ret, width = max(extent, MIN_PILLAR_WIDTH))
  ret <- set_min_width(ret, MIN_PILLAR_WIDTH)
  ret
}

get_pillar_type <- function(x) {
  type <- type_sum(x)
  if (length(type) == 0L) type <- "?"
  # Can return a classed object to be formatted by format_type_sum()
  type[] <- as.character(type[[1L]])
  type
}

#' @export
format.pillar_type <- function(x, width = NULL, ..., is_focus = FALSE) {
  out <- format_type_sum(x[[1]], width)
  if (is_focus) {
    out <- crayon_underline(out)
  }
  out
}

format_full_pillar_type <- function(x) {
  type <- get_pillar_type(x)
  format_type_sum(type, NULL)
}

#' Format a type summary
#'
#' Called on values returned from [type_sum()] for defining the description
#' in the capital.
#'
#' Two methods are implemented by default for this generic: the default method,
#' and the method for the `"AsIs"` class.
#' Return `I("type")` from your [type_sum()] implementation to format the type
#' without angle brackets.
#' For even more control over the formatting, implement your own method.
#'
#' @param x A return value from `type_sum()`
#' @param width The desired total width. If the returned string still is
#'   wider, it will be trimmed. Can be `NULL`.
#' @inheritParams rlang::args_dots_used
#'
#' @export
#' @examples
#' # Default method: show the type with angle brackets
#' writeLines(format_type_sum("dbl", width = NULL))
#' pillar(1)
#'
#' # AsIs method: show the type without angle brackets
#' type_sum.accel <- function(x) {
#'   I("kg m/s^2")
#' }
#'
#' # Typically done through NAMESPACE
#' # (perhaps with an @export directive in roxygen2)
#' registerS3method("type_sum", "accel", type_sum.accel)
#'
#' accel <- structure(9.81, class = "accel")
#' pillar(accel)
format_type_sum <- function(x, width, ...) {
  if (!missing(...)) {
    check_dots_used(action = warn)
  }

  UseMethod("format_type_sum")
}

#' @export
#' @rdname format_type_sum
format_type_sum.default <- function(x, width, ...) {
  if (!is.null(width) && width - 2 < get_extent(x)) {
    x <- substr(x, 1, max(width - 2, 0))
  }
  style_type(paste0("<", x, ">"))
}

#' @export
#' @rdname format_type_sum
format_type_sum.AsIs <- function(x, width, ...) {
  if (!is.null(width) && width < get_extent(x)) {
    x <- substr(x, 1, width)
  }
  style_type(unclass(x))
}
