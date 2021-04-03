#' Format a numeric vector in a tibble
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' Constructs a numeric vector that can be formatted with predefined
#' significant digits, or with a maximum or fixed number of digits
#' after the decimal point.
#' Scaling is supported, as well as forcing a decimal, scientific
#' or engineering notation.
#' If a label is given, it is shown in the header of a column.
#'
#' The formatting is applied when the vector is printed or formatted,
#' and also in a tibble column.
#' The formatting annotation and the class survives most arithmetic transformations,
#' the most notable exceptions are [var()] and [sd()].
#'
#' @family vector classes
#' @inheritParams ellipsis::dots_empty
#' @param x A numeric vector.
#' @param sigfig Define the number of significant digits to show. Must be one or greater.
#'   The `"pillar.sigfig"` option is not consulted.
#'   Can't be combined with `digits`.
#' @param digits Number of digits after the decimal points to show.
#'   Positive numbers specify the exact number of digits to show.
#'   Negative numbers specify (after negation) the maximum number of digits to show.
#'   With `digits = 2`, the numbers 1.2 and 1.234 are printed as 1.20 and 1.23,
#'   with `digits = -2` as 1.2 and 1.23, respectively.
#'   Can't be combined with `sigfig`.
#' @param label A label to show instead of the type description.
#' @param scale Multiplier to apply to the data before showing.
#'   Useful for displaying e.g. percentages.
#'   Must be combined with `label`.
#' @param notation One of `"fit"`, `"dec"`, `"sci"`, `"eng"`, or `"si"`.
#'   - `"fit"`: Use decimal notation if it fits and if it consumes 13 digits or less,
#'     otherwise use scientific notation. (The default for numeric pillars.)
#'   - `"dec"`: Use decimal notation, regardless of width.
#'   - `"sci"`: Use scientific notation.
#'   - `"eng"`: Use engineering notation, i.e. scientific notation
#'       using exponents that are a multiple of three.
#'   - `"si"`: Use SI notation, prefixes between `10e-24` and `10e24` are supported.
#' @param fixed_magnitude If `TRUE`, all elements will use the same magnitude
#'   corresponding to the smallest element in scientific, engineering or SI notation.
#' @export
#' @examples
#' # Display as a vector
#' num(9:11 * 100 + 0.5)
#' @examplesIf requireNamespace("tibble", quietly = TRUE)
#'
#' # Significant figures
#' tibble::tibble(
#'   x3 = num(9:11 * 100 + 0.5, sigfig = 3),
#'   x4 = num(9:11 * 100 + 0.5, sigfig = 4),
#'   x5 = num(9:11 * 100 + 0.5, sigfig = 5),
#' )
#'
#' # Maximum digits after the decimal points
#' tibble::tibble(
#'   x0 = num(9:11 * 100 + 0.5, digits =  0),
#'   x1 = num(9:11 * 100 + 0.5, digits = -1),
#'   x2 = num(9:11 * 100 + 0.5, digits = -2),
#' )
#'
#' # Use fixed digits and a currency label
#' tibble::tibble(
#'   usd = num(9:11 * 100 + 0.5, digits = 2, label = "USD"),
#'   gbp = num(9:11 * 100 + 0.5, digits = 2, label = "£"),
#'   chf = num(9:11 * 100 + 0.5, digits = 2, label = "SFr")
#' )
#'
#' # Scale
#' tibble::tibble(
#'   small  = num(9:11 / 1000 + 0.00005, label = "%", scale = 100),
#'   medium = num(9:11 /  100 + 0.0005 , label = "%", scale = 100),
#'   large  = num(9:11 /   10 + 0.005  , label = "%", scale = 100)
#' )
#'
#' # Notation
#' tibble::tibble(
#'   sci = num(10^(-13:6), notation = "sci"),
#'   eng = num(10^(-13:6), notation = "eng"),
#'   si  = num(10^(-13:6), notation = "si"),
#'   dec = num(10^(-13:6), notation = "dec")
#' )
#'
#' # Fixed exponent notation
#' tibble::tibble(
#'   scifix = num(10^(-7:6) * 123, notation = "sci", fixed_magnitude = TRUE),
#'   engfix = num(10^(-7:6) * 123, notation = "eng", fixed_magnitude = TRUE),
#'   sifix  = num(10^(-7:6) * 123, notation = "si",  fixed_magnitude = TRUE)
#' )
num <- function(x, ...,
                sigfig = NULL, digits = NULL,
                label = NULL, scale = NULL,
                notation = c("fit", "dec", "sci", "eng", "si"),
                fixed_magnitude = NULL) {

  stopifnot(is.numeric(x))
  check_dots_empty()

  # FIXME: math and arith should also work for integers
  x[] <- as.numeric(x)

  if (missing(notation)) {
    notation <- NULL
  }

  # FIXME: new_vctr() overrides class attribute, doesn't support subclassing
  out <- set_num_opts(
    x,
    sigfig = sigfig,
    digits = digits,
    label = label,
    scale = scale,
    notation = notation,
    fixed_magnitude = fixed_magnitude
  )

  # FIXME: Include class(x) to support subclassing/mixin?
  # Needs vec_base(): vec_data() but only strips vctrs_vctr class?
  # Avoid inheriting from numeric (?): https://github.com/r-lib/vctrs/issues/1339
  new_class <- c("tibble_num", "vctrs_vctr", "double")
  class(out) <- new_class

  out
}

#' @export
pillar_shaft.tibble_num <- function(x, ...) {
  # still seems necessary
  pillar_shaft(unclass(x))
}

#' @export
vec_ptype_full.tibble_num <- function(x, ...) {
  format(attr(x, "pillar"))
}

#' @export
vec_ptype_abbr.tibble_num <- function(x, ...) {
  pillar_attr <- attr(x, "pillar")
  notation <- pillar_attr$notation
  if (is.null(notation)) {
    notation <- "num"
  }

  sigfig <- pillar_attr$sigfig
  digits <- pillar_attr$digits

  if (!is.null(digits)) {
    if (digits > 0) {
      out <- paste0(notation, ":.", digits, "!")
    } else {
      out <- paste0(notation, ":.", -digits)
    }
  } else if (!is.null(sigfig)) {
    out <- paste0(notation, ":", sigfig)
  } else {
    out <- notation
  }

  out
}

#' @export
format.tibble_num <- function(x, trim = FALSE, ...) {
  "!!!!DEBUG format.tibble_num()"

  shaft <- pillar_shaft(x)
  out <- format(shaft, width = get_width(shaft))
  if (trim) {
    attributes(out) <- NULL
  } else {
    out <- format(out, align = "right")
  }
  out
}

#' @export
obj_print_data.tibble_num <- function(x, ...) {
  if (length(x) == 0) {
    return(invisible(x))
  }

  # FIXME: base::print.default() can't use color, roll own implementation?
  out <- stats::setNames(strip_sgr(format(x), warn = FALSE), names(x))
  print(out, quote = FALSE)
  invisible(x)
}

#' @method vec_arith tibble_num
#' @export
vec_arith.tibble_num <- function(op, x, y, ...) {
  "!!!!DEBUG vec_arith.tibble_num(`v(op)`)"

  UseMethod("vec_arith.tibble_num", y)
}
#' @method vec_arith.tibble_num default
#' @export
vec_arith.tibble_num.default <- function(op, x, y, ...) {
  "!!!!DEBUG vec_arith.tibble_num.default(`v(op)`)"
  stopifnot(is.numeric(x), is.numeric(y))
  out <- vec_arith_base(op, x, y)

  if (inherits(x, "tibble_num")) {
    vec_restore(out, x)
  } else {
    vec_restore(out, y)
  }
}
#' @method vec_arith.tibble_num MISSING
#' @export
vec_arith.tibble_num.MISSING <- function(op, x, y, ...) {
  "!!!!DEBUG vec_arith.tibble_num.MISSING(`v(op)`)"
  stopifnot(is.numeric(x))
  # FIXME
  out <- vec_arith_base(op, 0, x)

  vec_restore(out, x)
}

#' @method vec_arith.numeric tibble_num
#' @export
vec_arith.numeric.tibble_num <- vec_arith.tibble_num.default


#' @export
vec_math.tibble_num <- function(op, x, ...) {
  "!!!!DEBUG vec_math(`v(op)`)"

  stopifnot(is.numeric(x))
  out <- vec_math_base(op, x)

  if (is.numeric(out)) {
    out <- vec_restore(out, x)
  }

  out
}

#' set_num_opts
#'
#' `set_num_opts()` adds formatting options to an arbitrary numeric vector,
#' useful for composing with other types.
#'
#' @export
#' @rdname num
set_num_opts <- function(x, ...,
                         sigfig = NULL, digits = NULL,
                         label = NULL, scale = NULL,
                         notation = c("fit", "dec", "sci", "eng", "si"),
                         fixed_magnitude = NULL) {

  check_dots_empty()

  if (missing(notation)) {
    notation <- NULL
  } else if (!is.null(notation)) {
    notation <- arg_match(notation)
  }

  if (!is.null(fixed_magnitude) && !is.null(notation)) {
    if (fixed_magnitude && notation == "dec") {
      abort('Incomatible arguments: `notation = "dec"` and `fixed_magnitude = TRUE`')
    }
  }

  if (!is.null(scale) && is.null(label)) {
    abort("Must set `label` if `scale` is provided.")
  }

  pillar_attr <- structure(
    list(
      sigfig = sigfig,
      digits = digits,
      label = label,
      scale = scale,
      notation = notation,
      fixed_magnitude = fixed_magnitude
    ),
    class = c("tibble_num_attr", "tibble_vec_attr")
  )
  attr(x, "pillar") <- pillar_attr
  x
}

#' @export
format.tibble_num_attr <- function(x, ...) {
  notation <- x$notation
  if (is.null(notation)) {
    class <- "tibble_num"
  } else {
    class <- paste0("tibble_num(", notation, ")")
  }

  sigfig <- x$sigfig
  digits <- x$digits
  label <- x$label

  if (!is.null(digits)) {
    if (digits >= 0) {
      out <- paste0(class, ":.", digits, "!")
    } else {
      out <- paste0(class, ":.", -digits)
    }
  } else if (!is.null(sigfig)) {
    out <- paste0(class, ":", sigfig)
  } else {
    out <- class
  }

  if (!is.null(label)) {
    out <- paste0(out, "{", label, "}")
  }

  scale <- x$scale

  if (!is.null(scale)) {
    out <- paste0(out, "*", scale)
  }

  fixed_magnitude <- x$fixed_magnitude

  if (!is.null(fixed_magnitude)) {
    out <- paste0(out, "|")
  }

  out
}

#' @export
print.tibble_num_attr <- function(x, ...) {
  writeLines(format(x))
  invisible(x)
}

#' @export
vec_ptype2.tibble_num.tibble_num <- function(x, y, ...) {
  x
}
#' @export
vec_ptype2.tibble_num.double <- function(x, y, ...) {
  x
}
#' @export
vec_ptype2.double.tibble_num <- function(x, y, ...) {
  y
}

#' @export
vec_ptype2.tibble_num.integer <- function(x, y, ...) {
  x
}
#' @export
vec_ptype2.integer.tibble_num <- function(x, y, ...) {
  y
}

#' @export
vec_cast.tibble_num.tibble_num <- function(x, to, ...) {
  pillar_x <- attr(x, "pillar")
  pillar_to <- attr(to, "pillar")

  pillar_x_label <- pillar_x$label
  pillar_to_label <- pillar_to$label

  if (!is.null(pillar_x_label) && !is.null(pillar_to_label)) {
    if (!identical(pillar_x$label, pillar_to$label)) {
      abort("Only `tibble_num` objects with the same label can be combined.")
    }
  }

  attr(x, "pillar") <- pillar_to
  x
}
#' @export
vec_cast.double.tibble_num <- function(x, to, ...) {
  vec_data(x)
}
#' @export
vec_cast.tibble_num.double <- function(x, to, ...) {
  vec_restore(x, to)
}
#' @export
vec_cast.tibble_num.integer <- function(x, to, ...) {
  vec_restore(as.numeric(x), to)
}

#' @export
vec_proxy_compare.tibble_num <- function(x, ...) {
  vec_data(x)
}
#' @export
vec_proxy_order.tibble_num <- function(x, ...) {
  vec_data(x)
}
