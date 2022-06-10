new_tbl <- function(x = list(), n = NULL, ..., class = NULL) {
  new_data_frame(x, n, class = c(class, "tbl"), ...)
}

as_tbl <- function(x, ...) {
  check_dots_empty()
  UseMethod("as_tbl")
}

#' @export
as_tbl.data.frame <- function(x, ...) {
  class(x) <- c("tbl", "data.frame")
  x
}
