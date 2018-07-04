#' Format a vector suitable for tabular display
#'
#' `pillar()` formats a vector using one row for a title (if given),
#' one row for the type, and `length(x)` rows for the data.
#'
#' @param x A vector to format
#' @param title An optional title for the column. The title will be
#'   used "as is", no quoting will be applied.
#' @param width Default width, optional
#' @param ... Other arguments passed to methods
#' @export
#' @examples
#' x <- 123456789 * (10 ^ c(-1, -3, -5, NA, -8, -10))
#' pillar(x)
#' pillar(-x)
#' pillar(runif(10))
#' pillar(rcauchy(20))
#'
#' # Special values are highlighted
#' pillar(c(runif(5), NA, NaN, Inf, -Inf))
#'
#' # Very wide ranges will be displayed in scientific format
#' pillar(c(1e10, 1e-10), width = 20)
#' pillar(c(1e10, 1e-10))
#'
#' x <- c(FALSE, NA, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE)
#' pillar(x)
#'
#' x <- c("This is string is rather long", NA, "?", "Short")
#' pillar(x)
#' pillar(x, width = 30)
#' pillar(x, width = 5)
#'
#' date <- as.Date("2017-05-15")
#' pillar(date + c(1, NA, 3:5))
#' pillar(as.POSIXct(date) + c(30, NA, 600, 3600, 86400))
pillar <- function(x, title = NULL, width = NULL, ...) {
  capital <- pillar_capital(x, title, ...)
  shaft <- pillar_shaft(x, ...)
  new_pillar(capital, shaft, width)
}

rowidformat <- function(n, has_title_row = FALSE, has_star = FALSE, ...) {
  capital <- rif_capital(has_title_row, has_star, ...)
  shaft <- rif_shaft(n, ...)
  new_pillar(capital, shaft)
}

new_pillar <- function(capital, shaft, width = NULL) {
  ret <- structure(
    list(capital = capital, shaft = shaft),
    class = "pillar"
  )
  ret <- set_width(ret, width)
  ret
}

#' @export
format.pillar <- function(x, width = NULL, ...) {
  width <- pillar_get_width(x, width)
  out <- pillar_format_parts(x, width)

  fmt <- c(out$capital_format, out$shaft_format)
  new_vertical(fmt)
}

#' @export
print.pillar <- function(x, ...) {
  print(format(x, ...))
}

pillar_get_width <- function(x, width) {
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
  align <- attr(shaft_format, "align")

  capital_format <- align(capital_format, width = width, align = align)
  shaft_format <- align(shaft_format, width = width, align = align)

  list(
    capital_format = capital_format,
    shaft_format = shaft_format
  )
}

format_abbrev <- function(x, title = NULL) {
  type_format <- format_full_pillar_type(x)
  if (is.null(title)) {
    type_format
  } else {
    title_format <- format_full_pillar_title(title)
    paste0(title_format, "\u00a0", type_format)
  }
}
