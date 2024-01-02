#' Format the header of a tibble
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' For easier customization, the formatting of a tibble is split
#' into three components: header, body, and footer.
#' The `tbl_format_header()` method is responsible for formatting the header
#' of a tibble.
#'
#' Override this method if you need to change the appearance
#' of the entire header.
#' If you only need to change or extend the components shown in the header,
#' override or extend [tbl_sum()] for your class which is called by the
#' default method.
#'
#' @inheritParams tbl_format_body
#' @inherit tbl_format_body return
#'
#' @export
#' @examplesIf rlang::is_installed("palmerpenguins")
#' setup <- tbl_format_setup(palmerpenguins::penguins)
#' tbl_format_header(palmerpenguins::penguins, setup)
#'
#' # Shortcut for debugging
#' tbl_format_header(setup)
tbl_format_header <- function(x, setup, ...) {
  check_dots_empty()

  UseMethod("tbl_format_header")
}

#' @export
tbl_format_header.tbl <- function(x, setup, ...) {
  named_header <- setup$tbl_sum
  focus <- setup$focus
  if (!is.null(focus)) {
    named_header <- c(named_header, "Focus columns" = collapse(tick_if_needed(focus)))
  }

  if (all(names2(named_header) == "")) {
    header <- named_header
  } else {
    header <- paste0(
      align(paste0(names2(named_header), ":"), space = NBSP),
      # We add a space after the NBSP inserted by align()
      # so that wrapping occurs at the right location for very narrow outputs
      " ",
      named_header
    )
  }

  style_subtle(format_comment(header, width = setup$width))
}

#' @export
tbl_format_header.pillar_tbl_format_setup <- function(x, ...) {
  as_glue(c(
    cli::style_bold("<tbl_format_header(setup)>"),
    tbl_format_header(x$x, setup = x)
  ))
}
