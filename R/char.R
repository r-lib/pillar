#' Format a character vector in a tibble
#'
#' These functions are reexported as [tibble::char()] and [tibble::set_char_opts()].
#'
#' @keywords internal
#' @export
char <- function(x, ..., min_chars = NULL,
                 shorten = c("back", "front", "mid", "abbreviate")) {
  stopifnot(is.character(x))
  check_dots_empty()

  if (missing(shorten)) {
    shorten <- NULL
  }

  out <- set_char_opts(
    x,
    min_chars = min_chars,
    shorten = shorten
  )

  new_class <- c("pillar_char", "pillar_vctr", "vctrs_vctr", "character")
  class(out) <- new_class

  out
}

#' @export
vec_ptype_full.pillar_char <- function(x, ...) {
  # No longer inherited in vctrs > 0.4.1,
  # https://github.com/r-lib/vctrs/pull/1571
  format(attr(x, "pillar", exact = TRUE))
}

#' @export
vec_ptype_abbr.pillar_char <- function(x, ...) {
  pillar_attr <- attr(x, "pillar", exact = TRUE)

  out <- "char"

  shorten <- pillar_attr$shorten
  if (!is.null(shorten) && shorten == "abbr") {
    out <- "abbr"
  }

  out
}

#' @export
format.pillar_char <- function(x, trim = FALSE, ...) {
  "!!!!DEBUG format.pillar_char()"

  shaft <- pillar_shaft(x)
  out <- format(shaft, width = get_width(shaft))
  if (trim) {
    attributes(out) <- NULL
  } else {
    out <- format(out, align = "left")
  }
  out
}

#' @export
#' @rdname char
set_char_opts <- function(x, ..., min_chars = NULL,
                          shorten = c("back", "front", "mid", "abbreviate")) {
  check_dots_empty()

  if (missing(shorten)) {
    shorten <- NULL
  } else if (!is.null(shorten)) {
    shorten <- arg_match(shorten)
  }

  pillar_attr <- structure(
    list(
      min_chars = min_chars,
      shorten = shorten
    ),
    class = c("pillar_char_attr", "pillar_vctr_attr", "tibble_vec_attr")
  )
  attr(x, "pillar") <- pillar_attr
  x
}

#' @export
format.pillar_char_attr <- function(x, ...) {
  out <- "pillar_char"

  min_chars <- x$min_chars
  if (!is.null(min_chars)) {
    out <- paste0(out, "(", min_chars, ")")
  }

  shorten <- x$shorten
  if (!is.null(shorten)) {
    extra <- switch(shorten,
      back = ">",
      front = "<",
      mid = "|",
      never = "=",
      abbr = "&"
    )

    out <- paste0(out, extra)
  }

  out
}

#' @export
vec_ptype2.pillar_char.pillar_char <- function(x, y, ...) {
  x
}
#' @export
vec_ptype2.pillar_char.character <- function(x, y, ...) {
  x
}
#' @export
vec_ptype2.character.pillar_char <- function(x, y, ...) {
  y
}

#' @export
vec_cast.pillar_char.pillar_char <- function(x, to, ...) {
  pillar_x <- attr(x, "pillar", exact = TRUE)
  pillar_to <- attr(to, "pillar", exact = TRUE)

  pillar_x_shorten <- pillar_x$shorten
  pillar_to_shorten <- pillar_to$shorten

  if (!is.null(pillar_x_shorten) && !is.null(pillar_to_shorten)) {
    if (!identical(pillar_x$shorten, pillar_to$shorten)) {
      abort("Only `pillar_char` objects with the same shortening setting can be combined.")
    }
  }

  pillar_x_min_chars <- pillar_x$min_chars
  pillar_to_min_chars <- pillar_to$min_chars

  if (!is.null(pillar_x_min_chars) && !is.null(pillar_to_min_chars)) {
    pillar_to$min_chars <- max(pillar_x_min_chars, pillar_to_min_chars)
  }

  attr(x, "pillar") <- pillar_to
  x
}
#' @export
vec_cast.character.pillar_char <- function(x, to, ...) {
  vec_data(x)
}
#' @export
vec_cast.pillar_char.character <- function(x, to, ...) {
  char(x)
}
