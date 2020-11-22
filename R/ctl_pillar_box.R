rowidformat2 <- function(data, names, has_star) {
  out <- map(set_names(names), function(.x) "")

  if ("type" %in% names) {
    out$type <- pillar_box(rif_type(has_star))
  }

  if ("data" %in% names) {
    out$data <- pillar_box(data)
  }

  new_pillar(out)
}

#' @export
new_pillar <- function(.base = list(), ..., .width = NULL, .class = NULL) {
  structure(
    modifyList(.base, list(...)),
    width = .width,
    class = c(.class, "pillar")
  )
}

#' @export
format.pillar <- function(x, width = NULL, ...) {
  if (is.null(width)) {
    width <- get_width(x)
  }

  if (is.null(width)) {
    widths <- pillar_get_widths(x)
    width <- sum(widths) - length(widths) + 1L
  }

  out <- pillar_format_parts_2(x, width)

  new_vertical(unlist(unname(out)))
}

#' @export
print.pillar <- function(x, ...) {
  writeLines(style_bold("<pillar>"))
  print(format(x, ...))
}

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
