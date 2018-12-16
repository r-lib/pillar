strrep <- NULL
strrep_compat <- function(x, times) {
  map_chr(
    times,
    function(n) {
      if (is.na(n)) {
        NA_character_
      } else {
        paste(rep(x, n), collapse = "")
      }
    }
  )
}
