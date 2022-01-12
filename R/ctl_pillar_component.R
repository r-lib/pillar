#' Components of a pillar
#'
#' `new_pillar_component()` constructs an object of class `"pillar_component"`.
#'
#' Objects of class `"pillar"` are internally a named lists of their components.
#' The default components are `title` (may be missing), `type`, and `data`.
#' Each component is a `"pillar_component"`.
#'
#' This class captures contents that can be fitted in a rectangle.
#' Each component consists of one or multiple cells that
#' are aligned horizontally (with one space in between) when printed.
#' Each cell has a maximum (i.e., desired) width and may have a minimum width
#' if the contents are compressible.
#' The component object stores the width of the cells as an attribute.
#'
#' @inheritParams ellipsis::dots_empty
#' @param x A bare list (for `new_pillar_component()`), or an object
#'   with attributes `"width"` and `"min_width"` attributes (for `pillar_component()`).
#' @param width,min_width Width and minimum width for the new component.
#'   If `min_width` is `NULL`, it is assumed to match `width`.
#' @export
#' @examples
#' new_pillar_component(list(letters[1:3]), width = 1)
#' pillar_component(new_pillar_title("letters"))
#' pillar_component(new_pillar_type(letters))
#' pillar_component(pillar_shaft(letters[1:3]))
new_pillar_component <- function(x, ..., width, min_width = NULL) {
  "!!!!DEBUG new_pillar_component(`v(x)`, `v(width)`, `v(min_width)`)"

  check_dots_empty()
  stopifnot(rlang::is_bare_list(x))
  stopifnot(is_integerish(width), length(width) == 1L)
  if (!is.null(min_width)) {
    stopifnot(is_integerish(min_width), length(min_width) == 1L)
  }

  structure(
    x,
    width = width,
    min_width = min_width,
    class = "pillar_component"
  )
}

#' pillar_component()
#'
#' `pillar_component()` is a convenience helper that wraps the input in a list
#' and extracts width and minimum width.
#'
#' @export
#' @rdname new_pillar_component
pillar_component <- function(x) {
  # FIXME: No longer need to wrap in a list, cell concept abandoned
  new_pillar_component(list(x), width = get_width(x), min_width = get_min_width(x))
}

pillar_get_widths <- function(x) {
  as.integer(exec(max, !!!map(x, get_width)))
}

pillar_get_min_widths <- function(x) {
  as.integer(exec(max, !!!map(x, get_min_width)))
}

pillar_format_parts_2 <- function(x, width) {
  widths <- pillar_get_widths(x)
  formatted <- map(x, function(.x) format(.x[[1L]], width = width))

  align <- attr(formatted[["data"]], "align", exact = TRUE) %||% "left"

  flat <- unlist(formatted)
  extent <- get_extent(flat)
  max_extent <- max(extent)
  aligned <- align_impl(flat, min(width, max_extent), align, " ", extent)

  list(max_extent = max_extent, aligned = aligned, components = names(x))
}
