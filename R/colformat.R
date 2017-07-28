#' Format a vector suitable for tabular display
#'
#' @param x A vector to format
#' @param title An optional title for the column
#' @param width Default width, optional
#' @param ... Other arguments passed to methods
#' @export
#' @examples
#' x <- 123456789 * (10 ^ c(-1, -3, -5, NA, -8, -10))
#' colformat(x)
#' colformat(-x)
#' colformat(runif(10))
#' colformat(rcauchy(20))
#'
#' # Special values are highlighted
#' colformat(c(runif(5), NA, NaN, Inf, -Inf))
#'
#' # Very wide ranges will be displayed in scientific format
#' colformat(c(1e10, 1e-10))
#' colformat(c(1e10, 1e-10), sci_threshold = Inf)
#'
#' x <- c(FALSE, NA, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE)
#' colformat(x)
#'
#' x <- c("This is string is rather long", NA, "?", "Short")
#' colformat(x)
#' colformat(x, width = 30)
#' colformat(x, width = 5)
#'
#' date <- as.Date("2017-05-15")
#' colformat(date + c(1, NA, 3:5))
#' colformat(as.POSIXct(date) + c(30, NA, 600, 3600, 86400))
colformat <- function(x, title = NULL, width = NULL, ...) {
  title <- col_title(title, ...)
  type <- col_type(x, ...)
  data <- col_data(x, ...)
  ret <- structure(
    list(title = title, type = type, data = data),
    class = "colformat"
  )
  ret <- set_width(ret, width)
  ret
}

#' @export
format.colformat <- function(x, width = NULL, ...) {
  if (is.null(width)) {
    width <- get_width(x)
  }

  if (is.null(width)) {
    widths <- get_widths(x)
    width <- max(widths)
  }

  min_widths <- max(get_min_widths(x))
  if (width < min_widths) width <- min_widths

  title_format <- format(x$title, width = width, ...)
  type_format <- format(x$type, width = width, ...)
  data_format <- format(x$data, width = width, ...)
  align <- attr(data_format, "align")

  col_data <- c(title_format, type_format, data_format)

  new_column(
    crayon::col_align(col_data, width = width, align = align),
    width,
    align = "left"
  )
}

#' @export
print.colformat <- function(x, ...) {
  print(format(x, ...))
}
