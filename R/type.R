MIN_PILLAR_WIDTH <- 5L

style_type <- function(x) {
  force(x)
  x <- style_subtle(x)
  crayon_italic(x)
}

#' Prepare a column type for formatting
#'
#' Call [format()] on the result to render column types.
#'
#' @param x A vector for which the type is to be retrieved.
#' @inheritParams ellipsis::dots_empty
#' @export
#' @examples
#' format(new_pillar_type(iris$Species))
new_pillar_type <- function(x, ...) {
  if (!missing(...)) {
    check_dots_empty(action = warn)
  }

  type <- get_pillar_type(x)

  ret <- structure(
    list(
      type = type
    ),
    class = "pillar_type"
  )
  extent <- get_extent(format_type_sum(type, NULL))
  ret <- set_width(ret, width = max(extent, MIN_PILLAR_WIDTH))
  ret <- set_min_width(ret, MIN_PILLAR_WIDTH)
  ret
}

get_pillar_type <- function(x) {
  type <- type_sum(x)
  if (length(type) == 0L) type <- "?"
  type[] <- as.character(type[[1L]])
  type
}

#' @export
format.pillar_type <- function(x, width = NULL, ...) {
  ret <- format_type_sum(x$type, width)
  if (!is.null(width) && get_extent(ret) > width) {
    ret <- fansi::substr_ctl(ret, 1, width)
  }
  ret
}

format_full_pillar_type <- function(x) {
  type <- get_pillar_type(x)
  format_type_sum(type, NULL)
}

#' Format a type summary
#'
#' Called on values returned from [type_sum()] for defining the description
#' in the capital.  Implement this method for a helper class for custom
#' formatting, and return an object of this helper class from your
#' `type_sum()` implementation.  See examples.
#'
#' @param x A return value from `type_sum()`
#' @param width The desired total width. If the returned string still is
#'   wider, it will be trimmed. Can be `NULL`.
#' @inheritParams ellipsis::dots_used
#'
#' @export
#' @examples
#' format_type_sum(1, NULL)
#' pillar(1)
#'
#' type_sum.accel <- function(x) {
#'   structure("kg m/s^2", width = 8, class = "type_sum_accel")
#' }
#' format_type_sum.type_sum_accel <- function(x, width, ...) {
#'   if (!is.null(width) && width < attr(x, "width")) {
#'     x <- substr(x, 1, width)
#'   }
#'   style_subtle(x)
#' }
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
  if (!is.null(width) && width - 2 < nchar(x, type = "width")) {
    x <- substr(x, 1, max(width - 2, 0))
  }
  style_type(paste0("<", x, ">"))
}
