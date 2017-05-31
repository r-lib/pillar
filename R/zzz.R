#' @import rlang
NULL

.onAttach <- function(...) {
  crayon::num_colors(TRUE)
}
