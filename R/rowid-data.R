style_rowid <- function(x) {
  style_hint(x)
}

rif_data <- function(n, ...) {
  ret <- structure(
    list(n = n),
    class = "rif_data"
  )
  ret <- set_width(ret, as.integer(floor(log10(max(n, 1))) + 1))
  ret
}

#' @export
format.rif_data <- function(x, width, ...) {
  new_ornament(
    style_rowid(format(seq_len(x$n), width = width)),
    width = width,
    align = "right"
  )
}

#' @export
print.rif_data <- function(x, ...) {
  print(format(x, ...))
}
