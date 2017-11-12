#' Format a vector suitable for tabular display
#'
#' `pillar()` formats a vector using one row for a title (if given),
#' one row for the type, and `length(x)` rows for the data.
#'
#' @param x A vector to format
#' @param title An optional title for the column
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
  title <- pillar_title(title, ...)
  type <- pillar_type(x, ...)
  data <- pillar_shaft(x, ...)
  ret <- structure(
    list(title = title, type = type, data = data),
    class = "pillar"
  )
  ret <- set_width(ret, width)
  ret
}

rowidformat <- function(n, has_title_row = FALSE, has_star = FALSE, ...) {
  title <- rif_title(has_title_row, ...)
  type <- rif_type(has_star, ...)
  data <- rif_data(n, ...)
  ret <- structure(
    list(title = title, type = type, data = data),
    class = "pillar"
  )
  ret
}

#' @export
format.pillar <- function(x, width = NULL, ...) {
  width <- pillar_get_width(x, width)
  out <- pillar_format_parts(x, width)

  fmt <- c(out$title_format, style_type_header(out$type_format), out$data_format)
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
  title_format <- format(x$title, width = width, ...)
  type_format <- format(x$type, width = width, ...)
  data_format <- format(x$data, width = width, ...)
  align <- attr(data_format, "align")

  title_format <- align(title_format, width = width, align = align)
  type_format <- align(type_format, width = width, align = align)
  data_format <- align(data_format, width = width, align = align)

  list(
    title_format = title_format,
    type_format = type_format,
    data_format = data_format
  )
}

pillar_format_abbrev <- function(x, ...) {
  title_format <- format(x$title, width = Inf, ...)
  type_format <- style_type(format(x$type, width = Inf, ...))
  paste0(title_format, "\u00a0", type_format)
}
