if (getRversion() < "3.3.0") {
  strrep <- function(x, times) {
    map_chr(
      times,
      function(n) {
        if (is.na(n)) NA_character_
        else paste(rep(x, n), collapse = "")
      }
    )
  }
}
