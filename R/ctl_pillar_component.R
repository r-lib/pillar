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
  stopifnot(is_integerish(width), length(width) == length(x))
  if (!is.null(min_width)) {
    stopifnot(is_integerish(min_width), length(min_width) == length(x))
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
  new_pillar_component(list(x), width = get_width(x), min_width = get_min_width(x))
}

get_cell_widths <- function(x) {
  # FIXME: Choose different name to avoid confusion with get_width()?
  attr(x, "width", exact = TRUE)
}

get_cell_min_widths <- function(x) {
  attr(x, "min_width", exact = TRUE) %||% attr(x, "width", exact = TRUE)
}

get_sub_pillar <- function(x, i) {
  new_pillar(map(x, get_cells, i, i))
}

get_cells <- function(x, from, to) {
  stopifnot(from <= to)

  if (length(x) < length(get_cell_widths(x))) {
    get_cells_for_hierarchy(x, from, to)
  } else {
    idx <- seq2(from, to)
    new_pillar_component(
      x[idx],
      width = get_cell_widths(x)[idx],
      min_width = get_cell_min_widths(x)[idx]
    )
  }
}

get_cells_for_hierarchy <- function(x, from, to) {
  lengths <- map_int(x, function(.x) length(get_cell_widths(.x)))

  idx <- .bincode(c(from, to), lengths)
  from_idx <- idx[[1]]
  to_idx <- idx[[2]]

  # FIXME
  abort("NYI: get_cells_for_hierarchy()")
}

pillar_get_widths <- function(x) {
  exec(pmax, !!!map(x, get_cell_widths))
}

pillar_get_min_widths <- function(x) {
  exec(pmax, !!!map(x, get_cell_min_widths))
}

pillar_format_parts_2 <- function(x, width) {
  formatted <- map(x, function(.x) format(.x[[1]], width = width))

  align <- attr(formatted[["data"]], "align", exact = TRUE) %||% "left"

  flat <- unlist(formatted)
  extent <- get_extent(flat)
  align_impl(flat, width, align, " ", extent)
}
