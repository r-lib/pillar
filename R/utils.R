cat_line <- function(...) {
  cat(..., "\n", sep = "")
}

col_align <- function(x, width, align) {
  vapply(x, crayon::col_align, width = width, align = align,
    FUN.VALUE = character(1))
}

str_trunc <- function(x, width = 20) {
  str_width <- nchar(x, type = "width")

  too_wide <- !is.na(x) & str_width > width
  x[too_wide] <- paste0(substr(x[too_wide], 1, width - 1), "\u2026")

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

ruler <- function(width = getOption("width")) {
  x <- seq_len(width)
  y <- rep("-", length(x))

  y[x %% 10 == 0] <- as.character((x[x %% 10 == 0] %/% 10) %% 10)
  y[x %% 5 == 0] <- "+"

  cat(y, "\n", sep = "")
  cat(x %% 10, "\n", sep = "")
}
