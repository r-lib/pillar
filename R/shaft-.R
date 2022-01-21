#' Constructor for column data
#'
#' @description
#' The `new_pillar_shaft()` constructor creates objects of the `"pillar_shaft"`
#' class.
#' This is a virtual or abstract class, you must specify the `class`
#' argument.
#' By convention, this should be a string that starts with `"pillar_shaft_"`.
#' See `vignette("extending", package = "tibble")` for usage examples.
#'
#' This method accepts a vector of arbitrary length and is expected to return an S3 object with the following properties:
#'
#' - It has an attribute `"width"`
#' - It can have an attribute `"min_width"`, if missing, `"width"` is used
#' - It must implement a method `format(x, width, ...)` that can be called with any value between `min_width` and `width`
#' - This method must return an object that inherits from `character` and has attributes `"align"` (with supported values `"left"`, `"right"`, and `"center"`) and `"width"`
#'
#' The function [new_pillar_shaft()] returns such an object, and also correctly formats `NA` values.
#' In many cases, the implementation of `pillar_shaft.your_class_name()` will format the data as a character vector (using color for emphasis) and simply call `new_pillar_shaft()`.
#' See `pillar:::pillar_shaft.numeric` for a code that allows changing the display depending on the available width.
#'
#' @param x An object
#' @param ... Additional attributes.
#' @param width The maximum column width.
#' @param min_width The minimum allowed column width, `width` if omitted.
#' @param type_sum `r lifecycle::badge("experimental")`
#'
#'   Override the type summary displayed at the top of the data.
#'   This argument, if given, takes precedence over the type summary provided by
#'   [type_sum()].
#' @param class The name of the subclass.
#' @param subclass Deprecated, pass the `class` argument instead.
#' @name new_pillar_shaft
#' @export
new_pillar_shaft <- function(x, ..., width = NULL, min_width = width,
                             type_sum = NULL, class = NULL, subclass = NULL) {
  if (!is.null(subclass)) {
    deprecate_soft("1.4.0", "pillar::new_pillar_shaft(subclass = )", "new_pillar_shaft(class = )")
    class <- subclass
  }

  stopifnot(is.character(class))
  stopifnot(length(class) > 0)
  stopifnot(is_bare_numeric(width, 1))

  ret <- structure(
    x,
    ...,
    type = if (!is.null(type_sum)) new_pillar_type_obj(type_sum),
    class = c(class, "pillar_shaft")
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
#' @inheritParams ellipsis::dots_used
#' @export
#' @examples
#' pillar_shaft(1:3)
#' pillar_shaft(1.5:3.5)
#' pillar_shaft(NA)
#' pillar_shaft(c(1:3, NA))
pillar_shaft <- function(x, ...) {
  "!!!!DEBUG pillar_shaft(`v(class(x))`)"

  if (!missing(...)) {
    check_dots_used(action = warn)
  }

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
#' @param sigfig
#'   Deprecated, use [num()] or [set_num_opts()] on the data instead.
pillar_shaft.numeric <- function(x, ..., sigfig = NULL) {
  pillar_attr <- attr(x, "pillar", exact = TRUE)

  if (is.null(pillar_attr) && !is.null(attr(x, "class", exact = TRUE))) {
    ret <- format(x)
    return(new_pillar_shaft_simple(ret, width = get_max_extent(ret), align = "left"))
  }

  pillar_shaft_number_attr(unclass(x), pillar_attr, sigfig)
}

pillar_shaft_number_attr <- function(data, pillar_attr, sigfig = NULL) {
  scale <- pillar_attr$scale
  if (!is.null(scale)) {
    data <- data * scale
  }

  pillar_shaft_number(
    data,
    sigfig %||% pillar_attr$sigfig,
    pillar_attr$digits,
    pillar_attr$notation,
    pillar_attr$fixed_exponent,
    pillar_attr$extra_sigfig
  )
}

pillar_shaft_number <- function(x, sigfig, digits, notation, fixed_exponent, extra_sigfig) {
  if (!is.null(digits)) {
    if (!is.numeric(digits) || length(digits) != 1) {
      abort("`digits` must be a number.")
    }
  }
  if (is.null(sigfig)) {
    sigfig <- get_pillar_option_sigfig()
  }

  if (isTRUE(extra_sigfig)) {
    sigfig <- sigfig + compute_extra_sigfig(x)
  }

  if (is.null(notation) || notation == "fit") {
    dec <- split_decimal(x, sigfig = sigfig, digits = digits)
    sci <- split_decimal(x, sigfig = sigfig, digits = digits, sci_mod = 1, fixed_exponent = fixed_exponent)

    max_dec_width <- get_pillar_option_max_dec_width()
    dec_width <- get_width(dec)
    "!!!!!!DEBUG `v(dec_width)`"

    if (dec_width > max_dec_width) {
      dec <- NULL
    }
  } else if (notation == "dec") {
    dec <- split_decimal(x, sigfig = sigfig, digits = digits)
    sci <- NULL
  } else if (notation == "sci") {
    sci <- split_decimal(
      x,
      sigfig = sigfig, digits = digits,
      sci_mod = 1,
      fixed_exponent = fixed_exponent
    )
    dec <- NULL
  } else if (notation == "eng") {
    sci <- split_decimal(
      x,
      sigfig = sigfig, digits = digits, sci_mod = 3,
      fixed_exponent = fixed_exponent
    )
    dec <- NULL
  } else if (notation == "si") {
    sci <- split_decimal(
      x,
      sigfig = sigfig, digits = digits, sci_mod = 3, si = TRUE,
      fixed_exponent = fixed_exponent
    )
    dec <- NULL
  } else {
    abort(paste0('Internal error: `notation = "', notation, '".'))
  }

  ret <- list()
  ret$dec <- dec
  ret$sci <- sci

  if (!is.null(ret$sci$unit) && ret$sci$unit != 0) {
    type_sum <- I(paste0(
      # Turn off subtle styling for units
      sub(" ", "", style_subtle(" ")),
      "[",
      format_exp(ret$sci$unit, (notation == "si")),
      "]"
    ))
  } else {
    type_sum <- NULL
  }

  new_pillar_shaft(
    ret,
    width = get_width(ret$dec %||% ret$sci),
    min_width = min(get_min_widths(ret)),
    type_sum = type_sum,
    class = "pillar_shaft_decimal"
  )
}

# registered in .onLoad()
pillar_shaft.integer64 <- function(x, ..., sigfig = NULL) {
  if (class(x)[[1]] != "integer64") {
    return(NextMethod())
  }

  pillar_shaft_number(x, sigfig, digits = NULL, notation = NULL, fixed_exponent = NULL, extra_sigfig = NULL)
}

# registered in .onLoad()
pillar_shaft.Surv <- function(x, ...) {
  new_pillar_shaft_simple(format(x), align = "right")
}

# registered in .onLoad()
pillar_shaft.Surv2 <- function(x, ...) {
  new_pillar_shaft_simple(format(x), align = "right")
}

# registered in .onLoad()
type_sum.Surv <- function(x) {
  "Surv"
}

# registered in .onLoad()
type_sum.Surv2 <- function(x) {
  "Surv2"
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
#' @param min_width
#'   Deprecated, use [char()] or [set_char_opts()] on the data instead.
pillar_shaft.character <- function(x, ..., min_width = NULL) {
  pillar_attr <- attr(x, "pillar", exact = TRUE)

  min_chars <- min_width %||% pillar_attr$min_chars

  x <- utf8::utf8_encode(x)
  out <- x

  # Add subtle quotes if necessary
  needs_quotes <- which(is_ambiguous_string(x))
  if (has_length(needs_quotes)) {
    out[needs_quotes] <- gsub('"', '\\"', x[needs_quotes], fixed = TRUE)
    out[!is.na(x)] <- paste0(style_subtle('"'), out[!is.na(x)], style_subtle('"'))
    na_indent <- 1
  } else {
    na_indent <- 0
  }

  # determine width based on width of characters in the vector
  if (is.null(min_chars)) {
    min_chars <- get_pillar_option_min_chars()
  }

  pillar_shaft(as_glue(out), ..., min_width = min_chars, na_indent = na_indent, shorten = pillar_attr$shorten)
}

#' @export
#' @inheritParams new_pillar_shaft_simple
#' @rdname pillar_shaft
pillar_shaft.glue <- function(x, ..., min_width = NULL, na_indent = 0L, shorten = NULL) {
  min_width <- max(min_width, 3L)
  width <- get_max_extent(x)

  new_pillar_shaft_simple(
    x,
    width = width, align = "left", min_width = min(width, min_width),
    na = pillar_na(use_brackets_if_no_color = TRUE),
    na_indent = na_indent,
    shorten = shorten
  )
}

#' @export
#' @rdname pillar_shaft
pillar_shaft.list <- function(x, ...) {
  summary <- map(x, obj_sum)

  formatted <- paste0("<", unlist(summary), ">")

  short <- map(summary, attr, "short")
  short_idx <- !map_lgl(short, is.null)
  short_formatted <- formatted
  short_formatted[short_idx] <- paste0("<", unlist(short[short_idx]), ">")

  width <- get_max_extent(formatted)
  min_width <- get_max_extent(short_formatted)

  new_pillar_shaft_simple(
    style_list(formatted),
    width = width,
    align = "left",
    min_width = min_width,
    short_formatted = short_formatted
  )
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
  pillar_shaft(as_glue(format(x)), ...)
}
