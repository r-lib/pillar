style_rowid <- function(x) {
  style_subtle(x)
}

rif_data <- function(n, ...) {
  structure(
    list(n = n),
    width = as.integer(floor(log10(n)) + 1),
    class = "rif_data"
  )
}

#' @export
format.rif_data <- function(x, width, ...) {
  new_vertical(
    style_rowid(format(seq_len(x$n), width = width))
  )
}

#' @export
print.cf_data <- function(x, ...) {
  print(format(x, ...))
}
