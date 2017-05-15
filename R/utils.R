cat_line <- function(...) {
  cat(..., "\n", sep = "")
}

col_na <- function() {
  crayon::red("?")
}

col_align <- function(x, width, align) {
  vapply(x, crayon::col_align, width = width, align = align,
    FUN.VALUE = character(1))
}
