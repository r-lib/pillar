#' @export
pillar_shaft.pillar_vctr <- function(x, ...) {
  # still seems necessary
  pillar_shaft(unclass(x))
}

#' @export
vec_ptype_full.pillar_vctr <- function(x, ...) {
  format(attr(x, "pillar", exact = TRUE))
}

#' @export
print.pillar_vctr <- function(x, ..., max = NULL) {
  if (is.null(max)) {
    max <- getOption("max.print")
  }

  xx <- vec_head(x, max)
  size <- vec_size(x)

  obj_print_header.pillar_vctr(xx, ..., .size = size)
  obj_print_data.pillar_vctr(xx, ..., .size = size)
  obj_print_footer.pillar_vctr(xx, ..., .size = size)
  invisible(x)
}

#' @export
obj_print_header.pillar_vctr <- function(x, ..., .size) {
  writeLines(paste0("<", vec_ptype_full(x), "[", .size, "]>"))
  invisible(x)
}

#' @export
obj_print_data.pillar_vctr <- function(x, ..., .size) {
  if (length(x) == 0) {
    return(invisible(x))
  }

  # FIXME: base::print.default() can't use color, roll own implementation?
  out <- stats::setNames(strip_sgr(format(x), warn = FALSE), names(x))
  print(out, quote = FALSE, max = vec_size(x))
  invisible(x)
}

#' @export
obj_print_footer.pillar_vctr <- function(x, ..., .size) {
  delta <- .size - vec_size(x)

  if (delta <= 0) {
    return(invisible(x))
  }

  writeLines(style_subtle(pre_dots(paste0("and ", delta, " more"))))
  invisible(x)
}

#' @export
print.pillar_vctr_attr <- function(x, ...) {
  writeLines(format(x))
  invisible(x)
}

#' @export
vec_proxy_compare.pillar_vctr <- function(x, ...) {
  vec_data(x)
}
#' @export
vec_proxy_order.pillar_vctr <- function(x, ...) {
  vec_data(x)
}
