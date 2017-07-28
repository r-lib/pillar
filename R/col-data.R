#' Column data
#'
#' Internal class for formatting the data part of a column.
#'
#' @param x A vector to format
#' @param ... Other arguments passed to methods
#' @export
col_data <- function(x, ...) {
  UseMethod("col_data")
}

#' @export
format.col_data <- function(x, width, ...) {
  align <- attr(x, "align")
  desired_width <- get_width(x)
  if (width < desired_width) {
    data <- str_trunc(x, width)
  } else {
    data <- x
  }

  new_column(data, width = width, align = align)
}

#' @export
print.col_data <- function(x, ...) {
  print(format(x, ...))
}

new_col_data <- function(x, width = max(crayon::col_nchar(x)), align = "left",
                         min_width = NULL) {
  ret <- structure(
    x,
    align = align,
    class = "col_data"
  )
  ret <- set_width(ret, width)
  ret <- set_min_width(ret, min_width)
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
col_data.numeric <- function(x, ..., sigfig = 3) {
  dec <- format_decimal(x, ..., sigfig = sigfig)
  sci <- format_scientific(x, ..., sigfig = sigfig)

  ret <- structure(
    list(dec = dec, sci = sci),
    class = "decimal_format"
  )

  ret <- set_width(ret, max(get_widths(ret)))
  ret <- set_min_width(ret, min(get_min_widths(ret)))
  ret
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
col_data.character <- function(x, ...) {
  width <- max(nchar(x, type = "width"), na.rm = TRUE)

  x <- encodeString(x, na.encode = FALSE)
  out <- str_trunc(x, width = width)
  out[is.na(out)] <- col_na()

  new_col_data(out, width = width, align = "left", min_width = min(width, 3L))
}
