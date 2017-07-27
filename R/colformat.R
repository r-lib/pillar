#' Format a vector suitable for tabular display
#'
#' @param x A vector to format
#' @param ... Other arguments passed to methods
#' @return A character vector with class `colformat` and
#'   `width` and `align` attributes.
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
colformat <- function(x, ...) {
  data <- coldata(x, ...)
  structure(
    list(data = data),
    class = "colformat"
  )
}

#' @export
format.colformat <- function(x, title = "title", ...) {
  format(x$data, title = title, ...)
}

#' @export
print.colformat <- function(x, title = "title", ...) {
  print(format(x, title = title, ...))
}
