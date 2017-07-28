#' Column data
#'
#' Internal class for formatting the data part of a column.
#'
#' @param x A vector to format
#' @param ... Other arguments passed to methods
#' @export
#' @examples
#' x <- 123456789 * (10 ^ c(-1, -3, -5, NA, -8, -10))
#' col_data(x)
#' col_data(-x)
#' col_data(runif(10))
#' col_data(rcauchy(20))
#'
#' # Special values are highlighted
#' col_data(c(runif(5), NA, NaN, Inf, -Inf))
#'
#' # Very wide ranges will be displayed in scientific format
#' col_data(c(1e10, 1e-10))
#' col_data(c(1e10, 1e-10), sci_threshold = Inf)
#'
#' x <- c(FALSE, NA, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE)
#' col_data(x)
#'
#' x <- c("This is string is rather long", NA, "?", "Short")
#' col_data(x)
#' col_data(x, width = 30)
#' col_data(x, width = 5)
#'
#' date <- as.Date("2017-05-15")
#' col_data(date + c(1, NA, 3:5))
#' col_data(as.POSIXct(date) + c(30, NA, 600, 3600, 86400))
col_data <- function(x, ...) {
  UseMethod("col_data")
}

#' @export
format.col_data <- function(x, ...) {
  align <- attr(x, "align")
  width <- get_width(x)

  new_column(x, width = width, align = attr(x, "align"))
}

#' @export
print.col_data <- function(x, ...) {
  print(format(x, ...))
}

new_col_data <- function(x, width = max(crayon::col_nchar(x)), align = "left") {
  ret <- structure(
    x,
    align = align,
    class = "col_data"
  )
  ret <- set_width(ret, width)
  ret
}

# Methods -----------------------------------------------------------------

#' @export
#' @rdname col_data
col_data.logical <- function(x, ...) {
  out <- character(length(x))
  out[x & !is.na(x)] <- style_accent("*")
  out[!x & !is.na(x)] <- style_subtle("-")
  out[is.na(x)] <- col_na()

  new_col_data(out, width = 1, align = "right")
}

#' @export
#' @rdname col_data
#' @param sigfig Minimum number of significant figures to display. Numbers
#'   larger than 1 will potentially show more signficiant figures than this
#'   but they will be greyed out.
#' @param sci_threshold If decimal display is wider than this threshold,
#'   use scientific display instead.
col_data.numeric <- function(x, ..., sigfig = 3, sci_threshold = 15) {
  dec <- format_decimal(x, sigfig = sigfig)

  # This is somewhat inefficient but we can fix if it becomes a bottleneck
  width <- get_width(format(dec))
  if (width <= sci_threshold) {
    dec
  } else {
    format_scientific(x, sigfig = sigfig)
  }
}

#' @export
#' @rdname col_data
col_data.Date <- function(x, ...) {
  x <- format(x, format = "%Y-%m-%d")
  x[is.na(x)] <- col_na()

  new_col_data(x, width = 11, align = "right")
}

#' @export
#' @rdname col_data
col_data.POSIXct <- function(x, ...) {
  date <- format(x, format = "%Y-%m-%d")
  time <- format(x, format = "%H:%M:%S")

  datetime <- paste0(date, " " , style_subtle(time))
  datetime[is.na(x)] <- col_na()

  new_col_data(datetime, width = 19, align = "right")
}


#' @export
#' @param width Preferred width of output
#' @rdname col_data
col_data.character <- function(x, ..., width = NA) {
  if (is.na(width)) {
    width <- pmin(max(nchar(x), na.rm = TRUE), 20)
  }

  x <- encodeString(x, na.encode = FALSE)
  out <- str_trunc(x, width = width)
  out[is.na(out)] <- col_na()

  new_col_data(out, width = width, align = "left")
}
