#' Customize the appearance of simple pillars in your tibble subclass
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' Gain full control over the appearance of the pillars of your tibble subclass
#' in its body.
#' This method is intended for implementers of subclasses of the `"tbl"` class.
#' Users will rarely need them.
#'
#' @details
#' `ctl_new_pillar()` is called to construct pillars for regular (one-dimensional)
#' vectors.
#' The default implementation returns an object constructed with [pillar()].
#' Extend this method to modify the pillar components returned from the default
#' implementation.
#' Override this method to completely change the appearance of the pillars.
#' Components are created with [new_pillar_component()] or [pillar_component()].
#'
#' All components must be of the same height.
#' This restriction may be levied in the future.
#'
#' Implementations should return `NULL` if none of the data
#' fits the available width.
#'
#' @inheritParams ellipsis::dots_empty
#' @param controller The object of class `"tbl"` currently printed.
#' @param x A simple (one-dimensional) vector.
#' @param width The available width, can be a vector for multiple tiers.
#' @param title The title, derived from the name of the column in the data.
#'
#' @seealso
#' See [ctl_new_pillar_list()] for creating pillar objects for compound columns:
#' packed data frames, matrices, or arrays.
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
