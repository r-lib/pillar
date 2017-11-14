#' Constructor for column data
#'
#' The `new_pillar_shaft()` constructor creates objects of the `"pillar_shaft"`
#' class.
#' This is a virtual or abstract class, you must specify the `subclass`
#' argument.
#' By convention, this should be a string that starts with `"pillar_shaft_"`.
#'
#' @param x An object
#' @param ... Additional attributes
#' @param width The maximum column width.
#' @param min_width The minimum allowed column width, `width` if omitted.
#' @export
new_pillar_shaft <- function(x, ..., width, min_width = width, subclass) {
  stopifnot(is.character(subclass))
  stopifnot(length(subclass) > 0)

  ret <- structure(
    x,
    ...,
    class = c(subclass, "pillar_shaft")
  )
  ret <- set_width(ret, width)
  ret <- set_min_width(ret, min_width)
  ret
}

#' Column data
#'
#' Internal class for formatting the data for a column.
#' `pillar()` is a coercion method that must be implemented for your data type
#' to display it in a tibble.
#'
#' @param x A vector to format
#' @param ... Unused, for extensibility.
#' @export
pillar_shaft <- function(x, ...) {
  UseMethod("pillar_shaft")
}

#' @export
print.pillar_shaft <- function(x, ...) {
  print(format(x, ...))
}

#' @export
format.pillar_shaft <- function(x, ...) {
  stop("Please implement a format() method for class ", class(x)[[1]], call. = FALSE)
}

# Methods -----------------------------------------------------------------

#' @export
#' @rdname pillar_shaft
pillar_shaft.logical <- function(x, ...) {
  out <- rep(NA, length(x))
  out[x] <- "T"
  out[!x] <- "F"

  new_pillar_shaft_simple(out, width = 1, align = "left")
}

#' @export
#' @rdname pillar_shaft
#' @param sigfig Minimum number of significant figures to display. Numbers
#'   larger than 1 will potentially show more signficiant figures than this
#'   but they will be greyed out.
pillar_shaft.numeric <- function(x, ..., sigfig = 3) {
  dec <- format_decimal(x, ..., sigfig = sigfig)
  sci <- format_scientific(x, ..., sigfig = sigfig)

  ret <- list(dec = dec, sci = sci)

  new_pillar_shaft(
    ret,
    width = get_width(ret$dec),
    min_width = min(get_min_widths(ret)),
    subclass = "pillar_shaft_decimal"
  )
}

#' @export
#' @rdname pillar_shaft
pillar_shaft.Date <- function(x, ...) {
  x <- format(x, format = "%Y-%m-%d")

  new_pillar_shaft_simple(x, width = 10, align = "left")
}

#' @export
#' @rdname pillar_shaft
pillar_shaft.POSIXt <- function(x, ...) {
  date <- format(x, format = "%Y-%m-%d")
  time <- format(x, format = "%H:%M:%S")

  datetime <- paste0(date, " " , style_subtle(time))
  datetime[is.na(x)] <- NA

  new_pillar_shaft_simple(datetime, width = 19, align = "left")
}


#' @export
#' @rdname pillar_shaft
pillar_shaft.character <- function(x, ...) {
  x <- utf8::utf8_encode(x)
  out <- x

  # Add subtle quotes if necessary
  needs_quotes <- which(is_ambiguous_string(x))
  if (length(needs_quotes) > 0) {
    quoted <- gsub('"', '\\"', x[needs_quotes], fixed = TRUE)
    quoted <- paste0(style_subtle('"'), quoted, style_subtle('"'))
    out[needs_quotes] <- quoted
  }

  # Format NA values separately
  is_na <- which(is.na(x))
  if (length(is_na) > 0) {
    na_contents <- pillar_na(use_brackets_if_no_color = TRUE)
    out[is_na] <- na_contents
  }

  width <- get_max_extent(out)
  new_pillar_shaft_simple(out, width = width, align = "left", min_width = min(width, 3L))
}

#' @export
#' @rdname pillar_shaft
pillar_shaft.list <- function(x, ...) {
  out <- paste0("<", obj_sum(x), ">")

  width <- get_max_extent(out)

  new_pillar_shaft_simple(style_list(out), width = width, align = "left", min_width = min(width, 3L))
}

#' @export
#' @rdname pillar_shaft
pillar_shaft.AsIs <- function(x, ...) {
  pillar_shaft(remove_as_is_class(x))
}

#' @export
#' @rdname pillar_shaft
pillar_shaft.default <- function(x, ...) {
  #' @details
  #' The default method will currently display values coerced with
  #' [as.character()] as a fallback, but you should not rely on this behavior.
  pillar_shaft(as.character(x), ...)
}
