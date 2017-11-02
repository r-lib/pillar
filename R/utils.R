cat_line <- function(...) {
  cat(..., "\n", sep = "")
}

pillar_align <- function(x, width, align) {
  vapply(x, crayon::col_align, width = width, align = align,
    FUN.VALUE = character(1))
}

str_trunc <- function(x, width) {
  if (width == Inf) return(x)

  str_width <- crayon::col_nchar(x, type = "width")

  too_wide <- which(!is.na(x) & str_width > width)
  x[too_wide] <- paste0(crayon::col_substr(x[too_wide], 1, width - 1), get_ellipsis())

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

slice <- function(df, index) {
  df[index, , drop = FALSE]
}

get_ellipsis <- function() {
  if (is_utf8_output()) "\u2026" else "~"
}

is_utf8_output <- function() {
  l10n_info()$`UTF-8` && !is_latex_output()
}

is_latex_output <- function() {
  if (!("knitr" %in% loadedNamespaces())) return(FALSE)
  get("is_latex_output", asNamespace("knitr"))()
}
