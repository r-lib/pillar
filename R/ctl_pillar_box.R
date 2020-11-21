pillar2 <- function(x, title = NULL, width = NULL, ...) {
  if (is.null(width)) {
    width <- Inf
  }

  title <- new_pillar_title_box(title)
  if (get_cell_min_widths(title) > width) {
    return(NULL)
  }

  type <- new_pillar_type_box(x)
  if (get_cell_min_widths(type) > width) {
    return(NULL)
  }

  shaft <- pillar_shaft(x, ...)
  min_width <- get_min_width(shaft)
  if (min_width > width) {
    return(NULL)
  }
  width <- get_width(shaft)

  data <- new_pillar_box(list(shaft), width, min_width)
  new_pillar(list(title = title, type = type, data = data))
}

rowidformat2 <- function(n, has_star = FALSE) {
  type <- new_pillar_rif_type_box(has_star)
  data <- rif_shaft(n)

  new_pillar(list(type = type, data = pillar_box(data)))
}

new_pillar_title_box <- function(x) {
  pillar_box(new_pillar_title(x))
}

new_pillar_type_box <- function(x) {
  pillar_box(new_pillar_type(x))
}

new_pillar_rif_type_box <- function(has_star) {
  pillar_box(rif_type(has_star))
}

#' @export
new_pillar <- function(.base = list(), ..., .class = NULL) {
  structure(
    modifyList(.base, list(...)),
    class = c(.class, "pillar2")
  )
}

#' @export
print.pillar2 <- function(x, ...) {
  # Transient
  str(x)
}

new_pillar_box <- function(x, width, min_width = NULL) {
  structure(
    x,
    width = width,
    min_width = min_width
    # keep class attribute from x
  )
}

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
    new_pillar_box(x[idx], get_cell_widths(x)[idx], get_cell_min_widths(x)[idx])
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
