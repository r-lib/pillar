#' Column data
#'
#' Internal class for formatting the data part of a column.
#'
#' @param x A vector to format
#' @param ... Other arguments passed to methods
#' @export
#' @examples
#' x <- 123456789 * (10 ^ c(-1, -3, -5, NA, -8, -10))
#' coldata(x)
#' coldata(-x)
#' coldata(runif(10))
#' coldata(rcauchy(20))
#'
#' # Special values are highlighted
#' coldata(c(runif(5), NA, NaN, Inf, -Inf))
#'
#' # Very wide ranges will be displayed in scientific format
#' coldata(c(1e10, 1e-10))
#' coldata(c(1e10, 1e-10), sci_threshold = Inf)
#'
#' x <- c(FALSE, NA, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE)
#' coldata(x)
#'
#' x <- c("This is string is rather long", NA, "?", "Short")
#' coldata(x)
#' coldata(x, width = 30)
#' coldata(x, width = 5)
#'
#' date <- as.Date("2017-05-15")
#' coldata(date + c(1, NA, 3:5))
#' coldata(as.POSIXct(date) + c(30, NA, 600, 3600, 86400))
coldata <- function(x, ...) {
  UseMethod("coldata")
}

#' @export
format.coldata <- function(x, title = "title", ...) {
  align <- attr(x, "align")
  width <- max(nchar(title), attr(x, "width"))

  new_column(x, title = title, width = width, align = attr(x, "align"))
}

#' @export
print.coldata <- function(x, title = "title", ...) {
  print(format(x, title = title, ...))
}

new_coldata <- function(x, width = max(crayon::col_nchar(x)), align = "left") {
  structure(
    x,
    width = width,
    align = align,
    class = "coldata"
  )
}

# Methods -----------------------------------------------------------------

#' @export
#' @rdname coldata
coldata.logical <- function(x, ...) {
  out <- character(length(x))
  out[x & !is.na(x)] <- style_accent("*")
  out[!x & !is.na(x)] <- style_subtle("-")
  out[is.na(x)] <- col_na()

  new_coldata(out, width = 1, align = "right")
}

#' @export
#' @rdname coldata
#' @param sigfig Minimum number of significant figures to display. Numbers
#'   larger than 1 will potentially show more signficiant figures than this
#'   but they will be greyed out.
#' @param sci_threshold If decimal display is wider than this threshold,
#'   use scientific display instead.
coldata.numeric <- function(x, ..., sigfig = 3, sci_threshold = 15) {
  dec <- format_decimal(x, sigfig = sigfig)

  # This is somewhat inefficient but we can fix if it becomes a bottleneck
  width <- attr(format(dec), "width")
  if (width <= sci_threshold) {
    dec
  } else {
    format_scientific(x, sigfig = sigfig)
  }
}

#' @export
#' @rdname coldata
coldata.Date <- function(x, ...) {
  x <- format(x, format = "%Y-%m-%d")
  x[is.na(x)] <- col_na()

  new_coldata(x, width = 11, align = "right")
}

#' @export
#' @rdname coldata
coldata.POSIXct <- function(x, ...) {
  date <- format(x, format = "%Y-%m-%d")
  time <- format(x, format = "%H:%M:%S")

  datetime <- paste0(date, " " , style_subtle(time))
  datetime[is.na(x)] <- col_na()

  new_coldata(datetime, width = 19, align = "right")
}


#' @export
#' @param width Preferred width of output
#' @rdname coldata
coldata.character <- function(x, ..., width = NA) {
  if (is.na(width)) {
    width <- pmin(max(nchar(x), na.rm = TRUE), 20)
  }

  x <- encodeString(x, na.encode = FALSE)
  out <- str_trunc(x, width = width)
  out[is.na(out)] <- col_na()

  new_coldata(out, width = width, align = "left")
}
