#' @export
pillar_shaft.pillar_vctr <- function(x, ...) {
  # still seems necessary
  pillar_shaft(unclass(x))
}

#' @export
vec_ptype_full.pillar_vctr <- function(x, ...) {
  format(attr(x, "pillar"))
}

#' @export
obj_print_data.pillar_vctr <- function(x, ...) {
  if (length(x) == 0) {
    return(invisible(x))
  }

  # FIXME: base::print.default() can't use color, roll own implementation?
  out <- stats::setNames(strip_sgr(format(x), warn = FALSE), names(x))
  print(out, quote = FALSE)
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
