#' Format the body of a tibble
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' For easier customization, the formatting of a tibble is split
#' into three components: header, body, and footer.
#' The `tbl_format_body()` method is responsible for formatting the body
#' of a tibble.
#'
#' Override this method if you need to change the appearance of all parts
#' of the body.
#' If you only need to change the appearance of a single data type,
#' override [vctrs::vec_ptype_abbr()] and [pillar_shaft()] for this data type.
#'
#' @inheritParams rlang::args_dots_empty
#' @param x A tibble-like object.
#' @param setup A setup object returned from [tbl_format_setup()].
#'
#' @return
#'   A character vector.
#'
#' @export
#' @examplesIf rlang::is_installed(c("palmerpenguins", "tibble"))
#' setup <- tbl_format_setup(palmerpenguins::penguins)
#' tbl_format_body(palmerpenguins::penguins, setup)
#'
#' # Shortcut for debugging
#' tbl_format_body(setup)
tbl_format_body <- function(x, setup, ...) {
  check_dots_empty()

  UseMethod("tbl_format_body")
}

#' @export
tbl_format_body.tbl <- function(x, setup, ...) {
  force(setup)
  setup$body
}

#' @export
tbl_format_body.pillar_tbl_format_setup <- function(x, ...) {
  as_glue(c(
    cli::style_bold("<tbl_format_body(setup)>"),
    tbl_format_body(x$x, setup = x)
  ))
}
