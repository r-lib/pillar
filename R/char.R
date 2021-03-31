#' Format a character vector in a tibble
#'
#' @description
#' Constructs a character vector that can be formatted with predefined minimum width
#' or without width restrictions, and where the abbreviation style can be configured.
#'
#' The formatting is applied when the vector is printed or formatted,
#' and also in a tibble column.
#'
#' @family vector classes
#' @inheritParams ellipsis::dots_empty
#' @export
#' @examples
#' # Display as a vector
#' char(letters[1:3])
#' @examplesIf { set.seed(20210331); requireNamespace("stringi", quietly = TRUE) }
#'
#' rand_strings <- pillar(stringi::stri_rand_strings(10, 31:40))
#'
#' # Plain character vectors get truncated if space is limited:
#' data_with_id <- function(id) {
#'   tibble::tibble(
#'     id,
#'     some_number_1 = 1, some_number_2 = 2, some_number_3 = 3,
#'     some_number_4 = 4, some_number_5 = 5, some_number_6 = 6,
#'     some_number_7 = 7, some_number_8 = 8, some_number_9 = 9
#'   )
#' }
#' data_with_id(rand_strings)
#'
#' # Use char() to avoid or control truncation
#' data_with_id(char(rand_strings, min_chars = 35))
#' data_with_id(char(rand_strings, shorten = "none"))
#' data_with_id(char(rand_strings, min_chars = 35, shorten = "mid"))
#'
#' lipsum <- stringi::stri_rand_lipsum(3)
#' data_with_id(char(lipsum, shorten = "abbreviate"))
char <- function(x, ..., min_chars = NULL,
                 shorten = c("back", "front", "mid", "never", "abbreviate")) {

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

  new_class <- c("tibble_char", "vctrs_vctr", "character")
  class(out) <- new_class

  out
}

#' @export
pillar_shaft.tibble_char <- function(x, ...) {
  # still seems necessary
  pillar_shaft(unclass(x))
}

#' @export
vec_ptype_full.tibble_char <- function(x, ...) {
  format(attr(x, "pillar"))
}

#' @export
vec_ptype_abbr.tibble_char <- function(x, ...) {
  pillar_attr <- attr(x, "pillar")

  out <- "char"

  shorten <- pillar_attr$shorten
  if (!is.null(shorten) && shorten == "abbr") {
    out <- "abbr"
  }

  out
}

#' @export
format.tibble_char <- function(x, trim = FALSE, ...) {
  "!!!!DEBUG format.tibble_char()"

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
obj_print_data.tibble_char <- function(x, ...) {
  if (length(x) == 0) {
    return(invisible(x))
  }

  # FIXME: base::print.default() can't use color, roll own implementation?
  out <- stats::setNames(strip_sgr(format(x), warn = FALSE), names(x))
  print(out, quote = FALSE)
  invisible(x)
}

#' set_char_opts
#'
#' `set_char_opts()` adds formatting options to an arbitrary character vector,
#' useful for composing with other types.
#'
#' @export
#' @rdname char
set_char_opts <- function(x, ..., min_chars = NULL,
                          shorten = c("back", "front", "mid", "never", "abbreviate")) {

  check_dots_empty()

  if (missing(shorten)) {
    shorten <- NULL
  } else if (!is.null(shorten)) {
    shorten <- arg_match(shorten)
  }

  if (!is.null(min_chars) && !is.null(shorten) && shorten == "never") {
    abort('Incomatible arguments: `min_chars` and `shorten = "never"`')
  }

  pillar_attr <- structure(
    list(
      min_chars = min_chars,
      shorten = shorten
    ),
    class = c("tibble_char_attr", "tibble_vec_attr")
  )
  attr(x, "pillar") <- pillar_attr
  x
}

#' @export
format.tibble_char_attr <- function(x, ...) {
  out <- "tibble_char"

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
print.tibble_char_attr <- function(x, ...) {
  writeLines(format(x))
  invisible(x)
}

#' @export
vec_ptype2.tibble_char.tibble_char <- function(x, y, ...) {
  x
}
#' @export
vec_ptype2.tibble_char.character <- function(x, y, ...) {
  x
}
#' @export
vec_ptype2.character.tibble_char <- function(x, y, ...) {
  y
}

#' @export
vec_cast.tibble_char.tibble_char <- function(x, to, ...) {
  pillar_x <- attr(x, "pillar")
  pillar_to <- attr(to, "pillar")

  pillar_x_shorten <- pillar_x$shorten
  pillar_to_shorten <- pillar_to$shorten

  if (!is.null(pillar_x_shorten) && !is.null(pillar_to_shorten)) {
    if (!identical(pillar_x$shorten, pillar_to$shorten)) {
      abort("Only `tibble_char` objects with the same shortening setting can be combined.")
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
vec_cast.character.tibble_char <- function(x, to, ...) {
  vec_data(x)
}
#' @export
vec_cast.tibble_char.character <- function(x, to, ...) {
  vec_restore(x, to)
}

#' @export
vec_proxy_compare.tibble_char <- function(x, ...) {
  vec_data(x)
}
#' @export
vec_proxy_order.tibble_char <- function(x, ...) {
  vec_data(x)
}
