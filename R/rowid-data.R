style_rowid <- function(x) {
  style_hint(x)
}

rif_shaft <- function(n, ...) {
  ret <- structure(
    list(n = n),
    class = "rif_shaft"
  )
  ret <- set_width(ret, as.integer(floor(log10(max(n, 1))) + 1))
  ret
}

#' @export
format.rif_shaft <- function(x, width, ...) {
  new_ornament(
    style_rowid(format(seq_len(x$n), width = width)),
    width = width,
    align = "right"
  )
}

#' @export
print.rif_shaft <- function(x, ...) {
  print(format(x, ...))
}
