style_rowid <- function(x) {
  style_hint(x)
}

rif_shaft <- function(n, ...) {
  new_pillar_shaft(list(row_ids = seq_len(n)),
    width = as.integer(floor(log10(max(n, 1))) + 1),
    class = c("tbl_rif_shaft", "pillar_rif_shaft")
  )
}

#' @export
format.tbl_rif_shaft <- function(x, width, ...) {
  x <- format(x$row_ids, width = width)
  NextMethod()
}

#' @export
format.pillar_rif_shaft <- function(x, width, ...) {
  new_ornament(
    style_rowid(x),
    width = width,
    align = "right"
  )
}
