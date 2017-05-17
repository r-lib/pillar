cat_line <- function(...) {
  cat(..., "\n", sep = "")
}

col_align <- function(x, width, align) {
  vapply(x, crayon::col_align, width = width, align = align,
    FUN.VALUE = character(1))
}

str_trunc <- function(x, width = 20) {
  str_width <- nchar(x, type = "width")

  too_long <- !is.na(x) & str_width > width
  x[too_long] <- paste0(substr(x[too_long], 1, width - 1), "\u2026")

  x
}

check_sigfig <- function(x) {
  stopifnot(is.numeric(x), length(x) == 1)
  x <- as.integer(x)
  if (x < 1L) {
    stop("Must show at least one significant figure", call. = FALSE)
  }

  x
}
