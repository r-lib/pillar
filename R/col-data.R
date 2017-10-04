#' Column data
#'
#' Internal class for formatting the data part of a column.
#'
#' @param x A vector to format
#' @param ... Unused, for extensibility.
#' @export
pillar_shaft <- function(x, ...) {
  UseMethod("pillar_shaft")
}

#' @export
format.pillar_shaft <- function(x, width, ...) {
  align <- attr(x, "align")
  desired_width <- get_width(x)
  if (width < desired_width) {
    data <- str_trunc(x, width)
  } else {
    data <- x
  }
  data[is.na(x)] <- paste0(strrep(" ", attr(x, "na_indent")), pillar_na())

  new_column(data, width = width, align = align)
}

#' @export
print.pillar_shaft <- function(x, ...) {
  print(format(x, ...))
}

#' @export
#' @param width The maximum column width.
#' @param align Alignment of the column.
#' @param min_width The minimum allowed column width, `width` if omitted.
#' @param na_indent Indention of `NA` values.
#' @rdname pillar_shaft
new_pillar_shaft <- function(x, ...,
                        width = max(crayon::col_nchar(x, type = "width"), 0L),
                        align = "left", min_width = NULL,
                        na_indent = 0L) {
  ret <- structure(
    x,
    align = align,
    na_indent = na_indent,
    class = "pillar_shaft"
  )
  ret <- set_width(ret, width)
  ret <- set_min_width(ret, min_width)
  ret
}

# Methods -----------------------------------------------------------------

#' @export
#' @rdname pillar_shaft
pillar_shaft.logical <- function(x, ...) {
  out <- rep(NA, length(x))
  out[x] <- "T"
  out[!x] <- "F"

  new_pillar_shaft(out, width = 1, align = "left")
}

#' @export
#' @rdname pillar_shaft
#' @param sigfig Minimum number of significant figures to display. Numbers
#'   larger than 1 will potentially show more signficiant figures than this
#'   but they will be greyed out.
pillar_shaft.numeric <- function(x, ..., sigfig = 3) {
  dec <- format_decimal(x, ..., sigfig = sigfig)
  sci <- format_scientific(x, ..., sigfig = sigfig)

  ret <- structure(
    list(dec = dec, sci = sci),
    class = c("pillar_decimal", "pillar_shaft")
  )

  ret <- set_width(ret, get_width(ret$dec))
  ret <- set_min_width(ret, min(get_min_widths(ret)))
  ret
}

#' @export
#' @rdname pillar_shaft
pillar_shaft.Date <- function(x, ...) {
  x <- format(x, format = "%Y-%m-%d")

  new_pillar_shaft(x, width = 10, align = "left")
}

#' @export
#' @rdname pillar_shaft
pillar_shaft.POSIXt <- function(x, ...) {
  date <- format(x, format = "%Y-%m-%d")
  time <- format(x, format = "%H:%M:%S")

  datetime <- paste0(date, " " , style_subtle(time))
  datetime[is.na(x)] <- NA

  new_pillar_shaft(datetime, width = 19, align = "left")
}


#' @export
#' @rdname pillar_shaft
pillar_shaft.character <- function(x, ...) {
  out <- x
  needs_quotes <- which(!is_proper_string(x))
  is_na <- is.na(x)
  quoted <- encodeString(x[needs_quotes], quote = '"', na.encode = FALSE)
  quoted <- gsub('^"|"$', style_subtle('"'), quoted)
  out[needs_quotes] <- quoted
  out[is_na] <- pillar_na(use_brackets_if_no_color = TRUE)

  width <- max(crayon::col_nchar(out, type = "width"), 0L)

  new_pillar_shaft(out, width = width, align = "left", min_width = min(width, 3L))
}

#' @export
#' @rdname pillar_shaft
pillar_shaft.list <- function(x, ...) {
  out <- paste0("<", obj_sum(x), ">")

  width <- max(nchar(out, type = "width"))

  new_pillar_shaft(style_list(out), width = width, align = "left", min_width = min(width, 3L))
}

style_list <- function(x) {
  style_subtle(x)
}

#' @export
#' @rdname pillar_shaft
pillar_shaft.default <- function(x, ...) {
  pillar_shaft(as.character(x), ...)
}
