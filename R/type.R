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
#' @inheritParams ellipsis::dots_empty
#' @export
#' @examples
#' format(new_pillar_type(iris$Species))
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

get_pillar_type <- function(x, shaft) {
  type <- type_sum(x)
  if (length(type) == 0L) type <- "?"
  # Can return a classed object to be formatted by format_type_sum()
  type[] <- as.character(type[[1L]])
  type
}

#' @export
format.pillar_type <- function(x, width = NULL, ...) {
  format_type_sum(x[[1]], width)
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
#' @inheritParams ellipsis::dots_used
#'
#' @export
#' @examples
#' # Default method: show the type with angle brackets
#' format_type_sum(1, NULL)
#' pillar(1)
#'
#' # AsIs method: show the type without angle brackets
#' type_sum.accel <- function(x) {
#'   I("kg m/s^2")
#' }
#'
#' accel <- structure(9.81, class = "accel")
#' pillar(accel)
format_type_sum <- function(x, width, ...) {
  if (!missing(...)) {
    check_dots_used(action = warn)
  }

  UseMethod("format_type_sum")
}

# https://github.com/r-lib/pkgdown/issues/1540
type_sum.accel <- function(x) {
  I("kg m/s^2")
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
