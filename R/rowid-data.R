style_rowid <- function(x) {
  style_subtle(x)
}

rif_data <- function(n, ...) {
  ret <- structure(
    list(n = n),
    align = "right",
    class = "rif_data"
  )
  ret <- set_width(ret, as.integer(floor(log10(n)) + 1))
  ret
}

#' @export
format.rif_data <- function(x, width, ...) {
  new_vertical(
    style_rowid(format(seq_len(x$n), width = width))
  )
}

#' @export
print.rif_data <- function(x, ...) {
  print(format(x, ...))
}
