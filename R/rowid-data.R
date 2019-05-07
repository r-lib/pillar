style_rowid <- function(x) {
  style_hint(x)
}

rif_shaft <- function(n, ...) {
  new_pillar_shaft(list(n = n),
    width = as.integer(floor(log10(max(n, 1))) + 1),
    subclass = "pillar_rif_shaft"
  )
}

#' @export
format.pillar_rif_shaft <- function(x, width, ...) {
  new_ornament(
    style_rowid(format(seq_len(x$n), width = width)),
    width = width,
    align = "right"
  )
}
