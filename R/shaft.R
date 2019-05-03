#' Constructor for column data
#'
#' The `new_pillar_shaft()` constructor creates objects of the `"pillar_shaft"`
#' class.
#' This is a virtual or abstract class, you must specify the `subclass`
#' argument.
#' By convention, this should be a string that starts with `"pillar_shaft_"`.
#' See `vignette("extending", package = "tibble")` for usage examples.
#'
#' @param x An object
#' @param ... Additional attributes
#' @param width The maximum column width.
#' @param min_width The minimum allowed column width, `width` if omitted.
#' @param subclass The name of the subclass.
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
#' `pillar_shaft()` is a coercion method that must be implemented
#' for your data type to display it in a tibble.
#'
#' @param x A vector to format
#' @param ... Unused, for extensibility.
#' @export
#' @examples
#' pillar_shaft(1:3)
#' pillar_shaft(1.5:3.5)
#' pillar_shaft(NA)
#' pillar_shaft(c(1:3, NA))
pillar_shaft <- function(x, ...) {
  UseMethod("pillar_shaft")
}

#' @export
pillar_shaft.pillar_empty_col <- function(x, ...) {
  new_empty_shaft()
}

#' @param width Width for printing and formatting.
#' @export
#' @rdname pillar_shaft
print.pillar_shaft <- function(x, width = NULL, ...) {
  #' @description
  #' This class comes with a default method for [print()] that calls [format()].
  #' If `print()` is called without `width` argument, the natural width will be
  #' used when calling `format()`.
  #' Usually there's no need to implement this method for your subclass.
  if (is.null(width)) width <- get_width(x)
  print(format(x, width = width, ...))
}

#' @export
#' @rdname pillar_shaft
format.pillar_shaft <- function(x, width, ...) {
  #' @description
  #' Your subclass must implement `format()`, the default implementation just
  #' raises an error.
  #' Your `format()` method can assume a valid value for the `width` argument.
  stop("Please implement a format() method for class ", class(x)[[1]], call. = FALSE)
}

# Methods -----------------------------------------------------------------

#' @export
#' @rdname pillar_shaft
pillar_shaft.logical <- function(x, ...) {
  out <- rep(NA, length(x))
  out[x] <- "TRUE"
  out[!x] <- "FALSE"

  new_pillar_shaft_simple(out, width = 5, align = "left")
}

#' @export
#' @rdname pillar_shaft
#' @param sigfig Minimum number of significant figures to display. Numbers
#'   larger than 1 will potentially show more significant figures than this
#'   but they will be greyed out.
pillar_shaft.numeric <- function(x, ..., sigfig = getOption("pillar.sigfig", 3)) {
  if (!is.null(attr(x, "class"))) {
    ret <- format(x)
    return(new_pillar_shaft_simple(ret, width = get_max_extent(ret), align = "left"))
  }

  dec <- format_decimal(x, ..., sigfig = sigfig)
  sci <- format_scientific(x, ..., sigfig = sigfig)

  ret <- list(dec = dec, sci = sci)

  MAX_DEC_WIDTH <- 13
  dec_width <- get_width(ret$dec)
  if (dec_width > MAX_DEC_WIDTH) {
    dec_width <- get_width(ret$sci)
  }

  new_pillar_shaft(
    ret,
    width = dec_width,
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
  width <- 19L
  digits_secs <- getOption("digits.secs", 0L)
  if (digits_secs > 0) {
    width <- width + min(digits_secs, 6) + 1L
  }

  date <- format(x, format = "%Y-%m-%d")
  time <- format(x, format = "%H:%M:%OS")

  datetime <- paste0(date, " ", style_subtle(time))
  datetime[is.na(x)] <- NA

  new_pillar_shaft_simple(datetime, width = width, align = "left")
}


#' @export
#' @rdname pillar_shaft
#' @param min_width Minimum number of characters to display,
#'   unless the string fits a shorter width.
pillar_shaft.character <- function(x, ..., min_width = 3L) {
  x <- utf8::utf8_encode(x)
  out <- x

  # Add subtle quotes if necessary
  needs_quotes <- which(is_ambiguous_string(x))
  if (length(needs_quotes) > 0) {
    quoted <- gsub('"', '\\"', x[needs_quotes], fixed = TRUE)
    quoted <- paste0(style_subtle('"'), quoted, style_subtle('"'))
    out[needs_quotes] <- quoted
  }

  pillar_shaft(new_vertical(out), ..., min_width = min_width)
}

#' @export
#' @rdname pillar_shaft
pillar_shaft.pillar_vertical <- function(x, ..., min_width = 3L) {
  # Format NA values separately
  is_na <- which(is.na(x))
  if (length(is_na) > 0) {
    na_contents <- pillar_na(use_brackets_if_no_color = TRUE)
    x[is_na] <- na_contents
  }

  width <- get_max_extent(x)
  new_pillar_shaft_simple(x, width = width, align = "left", min_width = min(width, min_width))
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
pillar_shaft.factor <- function(x, ...) {
  pillar_shaft(as.character(x), ...)
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
  #' The default method will currently format via [format()],
  #' but you should not rely on this behavior.
  pillar_shaft(new_vertical(format(x)), ...)
}
