MIN_PILLAR_WIDTH <- 5L

style_type <- function(x) {
  crayon::italic(style_subtle(x))
}

pillar_type <- function(x, ...) {
  type <- get_pillar_type(x)

  ret <- structure(
    list(
      type = type
    ),
    class = "pillar_type"
  )
  extent <- get_extent(format_type_sum(type))
  ret <- set_width(ret, width = max(extent, MIN_PILLAR_WIDTH))
  ret <- set_min_width(ret, MIN_PILLAR_WIDTH)
  ret
}

get_pillar_type <- function(x) {
  type <- type_sum(x)
  if (length(type) == 0L) type <- "?"
  type[] <- as_character(type[[1L]])
  type
}

#' @export
format.pillar_type <- function(x, width = NULL, ...) {
  type <- x$type
  if (!is.null(width) && width <= get_width(x)) {
    type[] <- crayon::col_substr(type, 1, width - 2)
  }
  format_type_sum(type)
}

format_full_pillar_type <- function(x) {
  type <- get_pillar_type(x)
  format_type_sum(type)
}

#' Format a type summary
#'
#' Called on values returned from [type_sum()] for defining the description
#' in the capital.  Implement this method for a helper class for custom
#' formatting, and return an object of this helper class from your
#' `type_sum()` implementation.  See examples.
#'
#' @param x A return value from `type_sum()`
#'
#' @export
#' @examples
#' format_type_sum(1)
#' pillar(1)
#'
#' type_sum.accel <- function(x) {
#'   structure("kg m/s^2", class = "type_sum_accel")
#' }
#' format_type_sum.type_sum_accel <- function(x) {
#'   style_subtle(x)
#' }
#' accel <- structure(9.81, class = "accel")
#' pillar(accel)
format_type_sum <- function(x) UseMethod("format_type_sum")

#' @export
#' @rdname format_type_sum
format_type_sum.default <- function(x) {
  style_type(paste0("<", x, ">"))
}
