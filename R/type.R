MIN_PILLAR_WIDTH <- 5L

style_type <- function(x) {
  crayon::italic(style_subtle(x))
}

pillar_type <- function(x, ...) {
  type <- type_sum(x)
  if (length(type) == 0L) type <- "?"
  type <- as_character(type[[1L]])

  ret <- structure(
    list(
      type = type
    ),
    class = "pillar_type"
  )
  ret <- set_width(ret, width = max(get_extent(type) + 2L, MIN_PILLAR_WIDTH))
  ret <- set_min_width(ret, MIN_PILLAR_WIDTH)
  ret
}

#' @export
format.pillar_type <- function(x, width = NULL, ...) {
  if (is.null(width) || width >= get_width(x)) type <- x$type
  else type <- crayon::col_substr(x$type, 1, width - 2)
  style_type(paste0("<", type, ">"))
}
