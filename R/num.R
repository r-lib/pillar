#' Format a numeric vector in a tibble
#'
#' These functions are reexported as [tibble::num()] and [tibble::set_num_opts()].
#'
#' @keywords internal
#' @export
num <- function(x, ...,
                sigfig = NULL, digits = NULL,
                label = NULL, scale = NULL,
                notation = c("fit", "dec", "sci", "eng", "si"),
                fixed_exponent = NULL,
                extra_sigfig = NULL) {
  stopifnot(is.numeric(x))
  stopifnot(is.null(digits) || is_integerish(digits))
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
    fixed_exponent = fixed_exponent,
    extra_sigfig = extra_sigfig
  )

  # FIXME: Include class(x) to support subclassing/mixin?
  # Needs vec_base(): vec_data() but only strips vctrs_vctr class?
  # Avoid inheriting from numeric (?): https://github.com/r-lib/vctrs/issues/1339
  new_class <- c("pillar_num", "pillar_vctr", "vctrs_vctr", "double")
  class(out) <- new_class

  out
}

#' @export
vec_ptype_abbr.pillar_num <- function(x, ...) {
  pillar_attr <- attr(x, "pillar", exact = TRUE)
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
format.pillar_num <- function(x, trim = FALSE, ...) {
  "!!!!DEBUG format.pillar_num()"

  shaft <- pillar_shaft(x)
  out <- format(shaft, width = get_width(shaft))
  if (trim) {
    attributes(out) <- NULL
  } else {
    out <- format(out, align = "right")
  }
  out
}

#' @method vec_arith pillar_num
#' @export
vec_arith.pillar_num <- function(op, x, y, ...) {
  "!!!!DEBUG vec_arith.pillar_num(`v(op)`)"

  UseMethod("vec_arith.pillar_num", y)
}
#' @method vec_arith.pillar_num default
#' @export
vec_arith.pillar_num.default <- function(op, x, y, ...) {
  "!!!!DEBUG vec_arith.pillar_num.default(`v(op)`)"
  stopifnot(is.numeric(x), is.numeric(y))
  out <- vec_arith_base(op, vec_proxy(x), vec_proxy(y))

  if (inherits(x, "pillar_num")) {
    vec_restore(out, x)
  } else {
    vec_restore(out, y)
  }
}
#' @method vec_arith.pillar_num MISSING
#' @export
vec_arith.pillar_num.MISSING <- function(op, x, y, ...) {
  "!!!!DEBUG vec_arith.pillar_num.MISSING(`v(op)`)"
  stopifnot(is.numeric(x))
  # FIXME
  out <- vec_arith_base(op, 0, vec_proxy(x))

  vec_restore(out, x)
}

#' @method vec_arith.numeric pillar_num
#' @export
vec_arith.numeric.pillar_num <- vec_arith.pillar_num.default


#' @export
vec_math.pillar_num <- function(op, x, ...) {
  "!!!!DEBUG vec_math(`v(op)`)"

  stopifnot(is.numeric(x))
  out <- vec_math_base(op, vec_proxy(x))

  if (is.numeric(out)) {
    out <- vec_restore(out, x)
  }

  out
}

#' @export
#' @rdname num
set_num_opts <- function(x, ...,
                         sigfig = NULL, digits = NULL,
                         label = NULL, scale = NULL,
                         notation = c("fit", "dec", "sci", "eng", "si"),
                         fixed_exponent = NULL,
                         extra_sigfig = NULL) {
  check_dots_empty()

  if (missing(notation)) {
    notation <- NULL
  } else if (!is.null(notation)) {
    notation <- arg_match(notation)
  }

  if (!is.null(fixed_exponent) && !is.null(notation)) {
    if (fixed_exponent && notation == "dec") {
      abort('Incomatible arguments: `notation = "dec"` and `fixed_exponent` given')
    }
  }

  if (!is.null(scale) && is.null(label)) {
    abort("Must set `label` if `scale` is provided.")
  }

  if (!is.null(digits) && !is.null(extra_sigfig)) {
    abort("Incompatible arguments: `extra_sigfig` and `digits`.")
  }

  pillar_attr <- structure(
    list(
      sigfig = sigfig,
      digits = digits,
      label = label,
      scale = scale,
      notation = notation,
      fixed_exponent = fixed_exponent,
      extra_sigfig = extra_sigfig
    ),
    class = c("pillar_num_attr", "pillar_vctr_attr", "tibble_vec_attr")
  )
  attr(x, "pillar") <- pillar_attr
  x
}

#' @export
format.pillar_num_attr <- function(x, ...) {
  notation <- x$notation
  if (is.null(notation)) {
    class <- "pillar_num"
  } else {
    class <- paste0("pillar_num(", notation, ")")
  }

  sigfig <- x$sigfig
  digits <- x$digits
  label <- x$label
  extra_sigfig <- x$extra_sigfig

  if (!is.null(digits)) {
    if (digits >= 0) {
      out <- paste0(class, ":.", digits, "!")
    } else {
      out <- paste0(class, ":.", -digits)
    }
  } else if (!is.null(sigfig)) {
    out <- paste0(class, ":", sigfig)

    if (isTRUE(extra_sigfig)) {
      out <- paste0(out, "*")
    }
  } else if (isTRUE(extra_sigfig)) {
    out <- paste0(class, "*")
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

  fixed_exponent <- x$fixed_exponent

  if (!is.null(fixed_exponent)) {
    out <- paste0(out, "|", fixed_exponent)
  }

  out
}

#' @export
vec_ptype2.pillar_num.pillar_num <- function(x, y, ...) {
  x
}
#' @export
vec_ptype2.pillar_num.double <- function(x, y, ...) {
  x
}
#' @export
vec_ptype2.double.pillar_num <- function(x, y, ...) {
  y
}

#' @export
vec_ptype2.pillar_num.integer <- function(x, y, ...) {
  x
}
#' @export
vec_ptype2.integer.pillar_num <- function(x, y, ...) {
  y
}

#' @export
vec_cast.pillar_num.pillar_num <- function(x, to, ...) {
  pillar_x <- attr(x, "pillar", exact = TRUE)
  pillar_to <- attr(to, "pillar", exact = TRUE)

  pillar_x_label <- pillar_x$label
  pillar_to_label <- pillar_to$label

  if (!is.null(pillar_x_label) && !is.null(pillar_to_label)) {
    if (!identical(pillar_x$label, pillar_to$label)) {
      abort("Only `pillar_num` objects with the same label can be combined.")
    }
  }

  attr(x, "pillar") <- pillar_to
  x
}
#' @export
vec_cast.double.pillar_num <- function(x, to, ...) {
  vec_data(x)
}
#' @export
vec_cast.pillar_num.double <- function(x, to, ...) {
  vec_restore(vec_proxy(x), to)
}
#' @export
vec_cast.pillar_num.integer <- function(x, to, ...) {
  vec_restore(as.numeric(x), to)
}
