#' Column data
#'
#' Internal class for formatting the data part of a column.
#'
#' @param x A vector to format
#' @param ... Other arguments passed to methods
#' @export
cf_data <- function(x, ...) {
  UseMethod("cf_data")
}

#' @export
format.cf_data <- function(x, width, ...) {
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
print.cf_data <- function(x, ...) {
  print(format(x, ...))
}

new_cf_data <- function(x, width = max(crayon::col_nchar(x, type = "width"), 0L),
                        align = "left", min_width = NULL) {
  ret <- structure(
    x,
    align = align,
    class = "cf_data"
  )
  ret <- set_width(ret, width)
  ret <- set_min_width(ret, min_width)
  ret
}

# Methods -----------------------------------------------------------------

#' @export
#' @rdname cf_data
cf_data.logical <- function(x, ...) {
  out <- character(length(x))
  out[x & !is.na(x)] <- style_accent("*")
  out[!x & !is.na(x)] <- style_subtle("-")
  out[is.na(x)] <- cf_na()

  new_cf_data(out, width = 1, align = "right")
}

#' @export
#' @rdname cf_data
#' @param sigfig Minimum number of significant figures to display. Numbers
#'   larger than 1 will potentially show more signficiant figures than this
#'   but they will be greyed out.
cf_data.numeric <- function(x, ..., sigfig = 3) {
  dec <- format_decimal(x, ..., sigfig = sigfig)
  sci <- format_scientific(x, ..., sigfig = sigfig)

  ret <- structure(
    list(dec = dec, sci = sci),
    class = "decimal_format"
  )

  ret <- set_width(ret, get_width(ret$dec))
  ret <- set_min_width(ret, min(get_min_widths(ret)))
  ret
}

#' @export
#' @rdname cf_data
cf_data.Date <- function(x, ...) {
  x <- format(x, format = "%Y-%m-%d")
  x[is.na(x)] <- cf_na()

  new_cf_data(x, width = 10, align = "left")
}

#' @export
#' @rdname cf_data
cf_data.POSIXt <- function(x, ...) {
  date <- format(x, format = "%Y-%m-%d")
  time <- format(x, format = "%H:%M:%S")

  datetime <- paste0(date, " " , style_subtle(time))
  datetime[is.na(x)] <- cf_na()

  new_cf_data(datetime, width = 19, align = "left")
}


#' @export
#' @rdname cf_data
cf_data.character <- function(x, ...) {
  out <- x
  needs_quotes <- which(!is_syntactic(x))
  is_na <- is.na(x)
  out[needs_quotes] <- encodeString(x[needs_quotes], quote ='"', na.encode = FALSE)
  out[is_na] <- cf_na()

  width <- max(crayon::col_nchar(out, type = "width"), 0L)

  new_cf_data(out, width = width, align = "left", min_width = min(width, 3L))
}

#' @export
#' @rdname cf_data
cf_data.list <- function(x, ...) {
  out <- paste0("<", obj_sum(x), ">")

  width <- max(nchar(out, type = "width"))

  new_cf_data(style_list(out), width = width, align = "left", min_width = min(width, 3L))
}

style_list <- function(x) {
  style_subtle(x)
}

#' @export
#' @rdname cf_data
cf_data.default <- function(x, ...) {
  cf_data(as.character(x), ...)
}
