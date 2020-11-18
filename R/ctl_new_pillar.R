#' @export
ctl_new_compound_pillar <- function(controller, x, width, ..., title = NULL) {
  check_dots_empty()

  if (length(width) == 0) {
    return(NULL)
  }

  UseMethod("ctl_new_compound_pillar")
}

#' @export
ctl_new_compound_pillar.tbl <- function(controller, x, width, ..., title = NULL) {
  if (is.data.frame(x)) {
    new_data_frame_pillar(x, controller, width, title = title)
  } else if (is.matrix(x)) {
    new_matrix_pillar(x, controller, width, title = title)
  } else if (is.array(x)) {
    abort("NYI")
  } else {
    ctl_new_pillar(controller, x, width, ..., title = title)
  }
}

#' @export
ctl_new_pillar <- function(controller, x, width, ..., title = NULL) {
  check_dots_empty()

  if (length(width) == 0) {
    return(NULL)
  }

  UseMethod("ctl_new_pillar")
}

#' @export
ctl_new_pillar.tbl <- function(controller, x, width, ..., title = NULL) {
  pillar2(x, title, if (!is.null(width)) max0(width))
}

max0 <- function(x) {
  if (length(x) > 0) {
    max(x)
  } else {
    0L
  }
}
