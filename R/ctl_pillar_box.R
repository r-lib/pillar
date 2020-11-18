new_pillar_box <- function(x, width, min_width = NULL) {
  structure(
    x,
    width = width,
    min_width = min_width
    # keep class attribute from x
  )
}

get_cell_widths <- function(x) {
  attr(x, "width")
}

get_cell_min_widths <- function(x) {
  attr(x, "min_width") %||% attr(x, "width")
}

get_cells <- function(x, from, to) {
  stopifnot(from <= to)

  if (length(x) < length(get_cell_widths(x))) {
    get_cells_for_hierarchy(x, from, to)
  } else {
    idx <- seq2(from, to)
    new_pillar_box(x[idx], get_cell_widths(x)[idx], get_cell_min_widths(x)[idx])
  }
}

get_cells_for_hierarchy <- function(x, from, to) {
  lengths <- map_int(x, function(.x) length(get_cell_widths(.x)))

  idx <- .bincode(c(from, to), lengths)
  from_idx <- idx[[1]]
  to_idx <- idx[[2]]

  ...
}

pillar_get_widths <- function(x) {
  exec(pmax, !!!map(x, get_cell_widths))
}

pillar_get_min_widths <- function(x) {
  exec(pmax, !!!map(x, get_cell_min_widths))
}
