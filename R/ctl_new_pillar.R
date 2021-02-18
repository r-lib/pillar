#' Customize your tibble subclass
#'
#' Gain full control over the appearance of the pillars of your tibble subclass
#' in its body.
#' These methods are intended for implementers of subclasses of the `"tbl"`
#' class.
#' Users will rarely need them.
#'
#' `ctl_new_pillar()` is called to construct pillars for regular (one-dimensional)
#' vectors.
#' The default implementation returns an object constructed with [pillar()].
#' Extend this method to tweak pillar components returned from the default
#' implementation.
#' Override this method to completely change the appearance of the pillars.
#'
#' `ctl_new_compound_pillar()` is called for compound pillars: columns
#' that are data frames, matrices or arrays.
#' The default implementation returns a compound pillar with suitable formatting
#' for the titles and types of the sub-pillar.
#' Users will only rarely need to override this method if ever.
#'
#' Implementations should return `NULL` if none of the data
#' fits the available width.
#'
#' @inheritParams ellipsis::dots_empty
#' @param controller The object of class `"tbl"` currently printed.
#' @param x A vector, can also be a data frame, array or matrix
#'   in `ctl_new_compound_pillar()`
#' @param width The available width, can be a vector for multiple tiers
#' @param title The title, derived from the name of the column in the data
#'
#' @export
#' @examples
#' lines <- function(char = "-") {
#'   stopifnot(nchar(char) == 1)
#'   structure(char, class = "lines")
#' }
#'
#' format.lines <- function(x, width, ...) {
#'   paste(rep(x, width), collapse = "")
#' }
#'
#' ctl_new_pillar.line_tbl <- function(controller, x, width, ..., title = NULL) {
#'   out <- NextMethod()
#'   new_pillar(list(
#'     title = out$title,
#'     type = out$type,
#'     lines = new_pillar_component(list(lines("=")), width = 1),
#'     data = out$data
#'   ))
#' }
#'
#' vctrs::new_data_frame(
#'   list(a = 1:3, b = letters[1:3]),
#'   class = c("line_tbl", "tbl")
#' )
ctl_new_pillar <- function(controller, x, width, ..., title = NULL) {
  "!!DEBUG ctl_new_pillar()"

  check_dots_empty()

  if (length(width) == 0) {
    return(NULL)
  }

  UseMethod("ctl_new_pillar")
}

#' @rdname ctl_new_pillar
#' @export
ctl_new_compound_pillar <- function(controller, x, width, ..., title = NULL) {
  "!!DEBUG ctl_new_compound_pillar()"

  check_dots_empty()

  if (length(width) == 0) {
    return(NULL)
  }

  UseMethod("ctl_new_compound_pillar")
}

#' @export
ctl_new_compound_pillar.tbl <- function(controller, x, width, ..., title = NULL) {
  "!!DEBUG ctl_new_compound_pillar.tbl()"

  if (is.data.frame(x)) {
    new_data_frame_pillar(x, controller, width, title = title)
  } else if (is.matrix(x)) {
    new_matrix_pillar(x, controller, width, title = title)
  } else if (is.array(x) && length(dim(x)) > 1) {
    new_array_pillar(x, controller, width, title = title)
  } else {
    ctl_new_pillar(controller, x, width, ..., title = prepare_title(title))
  }
}

#' @export
ctl_new_pillar.tbl <- function(controller, x, width, ..., title = NULL) {
  "!!DEBUG ctl_new_pillar.tbl()"

  pillar(x, title, if (!is.null(width)) max0(width))
}

max0 <- function(x) {
  if (length(x) > 0) {
    max(x)
  } else {
    0L
  }
}

# FIXME: Keep vectorized titles later
prepare_title <- function(title) {
  paste(title, collapse = "")
}
