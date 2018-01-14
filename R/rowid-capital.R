rif_capital <- function(has_title_row, has_star, ...) {
  title <- rif_title(has_title_row, ...)
  type <- rif_type(has_star, ...)
  new_pillar_capital(title, type)
}
