#' TBD
#'
#' TBD
#'
#' @inheritParams ellipsis::dots_empty
#' @param x TBD
#' @param width,min_width TBD
#' @export
new_pillar_box <- function(x, ..., width, min_width = NULL) {
  check_dots_empty()
  stopifnot(is.list(x))
  stopifnot(is_integerish(width), length(width) == length(x))
  if (!is.null(min_width)) {
    stopifnot(is_integerish(min_width), length(min_width) == length(x))
  }

  structure(
    x,
    width = width,
    min_width = min_width
    # keep class attribute from x
  )
}

#' @export
#' @rdname new_pillar_box
pillar_box <- function(x) {
  new_pillar_box(list(x), width = get_width(x), min_width = get_min_width(x))
}

get_cell_widths <- function(x) {
  attr(x, "width")
}

get_cell_min_widths <- function(x) {
  attr(x, "min_width") %||% attr(x, "width")
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
    new_pillar_box(
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

  browser()
  abort("NYI")
}

pillar_get_widths <- function(x) {
  exec(pmax, !!!map(x, get_cell_widths))
}

pillar_get_min_widths <- function(x) {
  exec(pmax, !!!map(x, get_cell_min_widths))
}

pillar_format_parts_2 <- function(x, width) {
  formatted <- map(x, function(.x) format(.x[[1]], width = width))

  alignment <- attr(formatted[["data"]], "align") %||% "left"

  map(formatted, align, width = width, align = alignment)
}
