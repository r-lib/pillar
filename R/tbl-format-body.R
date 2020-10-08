#' Format the body of a tibble
#'
#' @description
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
#' @inheritParams ellipsis::dots_empty
#' @param x A tibble-like object.
#' @param setup A setup object returned from [tbl_format_setup()].
#'
#' @return
#'   A character vector.
#'
#' @export
tbl_format_body <- function(x, setup, ...) {
  check_dots_empty()

  UseMethod("tbl_format_body")
}

#' @export
tbl_format_body.tbl <- function(x, setup, ...) {
  force(setup)
  format(setup$squeezed)
}

# FIXME NEXT:
# - Add method for setup object for testing
# - Move body tests to dedicated test file here
# - Move parts of the existing implementation here
# - Proceed with header and footer
