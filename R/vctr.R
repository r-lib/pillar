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
obj_print_data.pillar_vctr <- function(x, ..., max = NULL) {
  if (length(x) == 0) {
    return(invisible(x))
  }

  if (is.null(max)) {
    max <- getOption("max.print")
  }

  xx <- vec_head(x, max)

  # FIXME: base::print.default() can't use color, roll own implementation?
  out <- stats::setNames(strip_sgr(format(xx), warn = FALSE), names(xx))
  print(out, quote = FALSE, max = max)
  invisible(x)
}

#' @export
obj_print_footer.pillar_vctr <- function(x, ..., max = NULL) {
  if (is.null(max)) {
    max <- getOption("max.print")
  }

  if (max >= vec_size(x)) {
    return(invisible(x))
  }

  writeLines(style_subtle(pre_dots(paste0("and ", vec_size(x) - max, " more"))))
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
