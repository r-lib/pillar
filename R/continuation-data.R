new_continuation_shaft <- function(parent) {
  extra_width <- get_extent(cli::symbol$ellipsis) + 1L

  new_pillar_shaft(
    list(parent, extra_width),
    class = "pillar_continuation_shaft",
    width = get_width(parent) + extra_width,
    min_width = get_min_width(parent) + extra_width
  )
}

#' @export
format.pillar_continuation_shaft <- function(x, width, ...) {
  parent <- x[[1]]
  extra_width <- x[[2]]

  parent_format <- format(parent, width = width - extra_width)

  new_ornament(
    paste0(parent_format, " ", cli::symbol$ellipsis),
    width = width,
    align = attr(parent_format, "align")
  )
}
