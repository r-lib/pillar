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
#' `ctl_new_pillar_list()` is called to construct a list of pillars.
#' It also works for compound pillars: columns that are data frames, matrices or
#' arrays.
#' This method is also called to initiate the construction of all pillars
#' in the tibble to be printed.
#' If called for a regular one-dimensional vector, it returns a list of length
#' one.
#' In any case, all pillars in the returned list of pillars represent only the
#' first column in case of compound columns.
#' This ensures that only those pillars that are shown are constructed.
#' To print all columns of a packed data frame, `ctl_new_pillar_list()`
#' eventually calls itself recursively.
#' Users will only rarely need to override this method if ever.
#'
#' All components must be of the same height.
#' This restriction may be levied in the future.
#'
#' Implementations should return `NULL` if none of the data
#' fits the available width.
#'
#' @inheritParams ellipsis::dots_empty
#' @param controller The object of class `"tbl"` currently printed.
#' @param x A vector, can also be a data frame, array or matrix.
#'   in `ctl_new_pillar_list()`.
#' @param width The available width, can be a vector for multiple tiers.
#'   If `NULL`, compute only the first pillar.
#' @param title The title, derived from the name of the column in the data.
#'
#' @export
#' @examplesIf rlang::is_installed("palmerpenguins") && requireNamespace("tibble")
#' # Create pillar objects
#' ctl_new_pillar(
#'   palmerpenguins::penguins,
#'   palmerpenguins::penguins$species[1:3],
#'   width = 60
#' )
#' ctl_new_pillar(
#'   palmerpenguins::penguins,
#'   palmerpenguins::penguins$bill_length_mm[1:3],
#'   width = 60
#' )
#'
#' # Packed data frame
#' ctl_new_pillar_list(
#'   tibble::tibble(),
#'   palmerpenguins::penguins,
#'   width = 60
#' )
#'
#' # Packed matrix
#' ctl_new_pillar_list(tibble::tibble(), matrix(1:6, ncol = 2), width = 60)
#'
#' # Packed array
#' ctl_new_pillar_list(tibble::tibble(), Titanic, width = 60)
#'
#' @examples
#'
#' # Customize output
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
  "!!!!DEBUG ctl_new_pillar(`v(width)`, `v(title)`)"

  check_dots_empty()

  UseMethod("ctl_new_pillar")
}

#' @export
ctl_new_pillar.tbl <- function(controller, x, width, ..., title = NULL) {
  "!!!!DEBUG ctl_new_pillar.tbl(`v(width)`, `v(title)`)"

  pillar(x, title, if (!is.null(width)) max0(width))
}

max0 <- function(x) {
  if (length(x) > 0) {
    max(x)
  } else {
    0L
  }
}

#' @param first_pillar Can be passed to this method if the first pillar
#'   for a compound pillar (or the pillar itself for a simple pillar)
#'   has been computed already.
#' @rdname ctl_new_pillar
#' @export
ctl_new_pillar_list <- function(controller, x, width, ..., title = NULL, first_pillar = NULL) {
  "!!!!DEBUG ctl_new_pillar_list(`v(width)`, `v(title)`)"

  check_dots_empty()

  UseMethod("ctl_new_pillar_list")
}

#' @export
ctl_new_pillar_list.tbl <- function(controller, x, width, ..., title = NULL, first_pillar = NULL) {
  "!!!!DEBUG ctl_new_pillar_list.tbl(`v(width)`, `v(title)`)"

  if (is.data.frame(x)) {
    new_data_frame_pillar_list(x, controller, width, title = title, first_pillar = first_pillar)
  } else if (is.matrix(x)) {
    new_matrix_pillar_list(x, controller, width, title = title, first_pillar = first_pillar)
  } else if (is.array(x) && length(dim(x)) > 1) {
    new_array_pillar_list(x, controller, width, title = title, first_pillar = first_pillar)
  } else if (is.null(first_pillar)) {
    list(ctl_new_pillar(controller, x, width, ..., title = prepare_title(title)))
  } else {
    list(first_pillar)
  }
}

# FIXME: Keep vectorized titles later
prepare_title <- function(title) {
  paste(title, collapse = "")
}
