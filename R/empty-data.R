style_empty <- function(n) {
  ""
}

new_empty_shaft <- function() {
  new_pillar_shaft(list(), subclass = "pillar_empty_shaft", width = 0)
}

#' @export
format.pillar_empty_shaft <- function(x, width, ...) {
  new_ornament(
    style_empty(),
    width = width
  )
}
