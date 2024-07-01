rowidformat <- function(n, has_title_row = FALSE, has_star = FALSE, ...) {
  capital <- rif_capital(has_title_row, has_star, ...)
  shaft <- rif_shaft(n, ...)
  new_pillar_1e(capital, shaft)
}

new_pillar_1e <- function(capital, shaft, width = NULL) {
  ret <- structure(
    list(capital = capital, shaft = shaft),
    class = "pillar_1e"
  )
  ret <- set_width(ret, width)
  ret
}

#' @export
format.pillar_1e <- function(x, width = NULL, ...) {
  width <- pillar_get_width_1e(x, width)
  out <- pillar_format_parts(x, width)

  as_glue(unlist(unname(out)))
}

#' @export
print.pillar_1e <- function(x, ...) {
  writeLines(style_bold("<pillar>"))
  print(format(x, ...))
}

pillar_get_width_1e <- function(x, width) {
  if (is.null(width)) {
    width <- get_width(x)
  }

  if (is.null(width)) {
    widths <- get_widths(x)
    width <- max(widths)
  }

  min_widths <- max(get_min_widths(x))
  if (width < min_widths) width <- min_widths

  width
}

pillar_format_parts <- function(x, width, ...) {
  capital_format <- format(x$capital, width = width, ...)
  shaft_format <- format(x$shaft, width = width, ...)
  align <- attr(shaft_format, "align", exact = TRUE)

  capital_format <- align(capital_format, width = width, align = align)
  shaft_format <- align(shaft_format, width = width, align = align)

  list(
    capital_format = capital_format,
    shaft_format = shaft_format
  )
}

format_abbrev <- function(x, title = NULL, space = " ") {
  type_format <- ansi_strip(format_full_pillar_type(x))
  if (is.null(title)) {
    type_format
  } else {
    title_format <- format_full_pillar_title(title)
    paste0(title_format, space, type_format)
  }
}

format_full_pillar_title <- function(title) {
  # Backticks already added here
  title <- format_title(title, Inf)
  style_title(title)
}
