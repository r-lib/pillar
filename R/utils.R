cat_line <- function(...) {
  cat(..., "\n", sep = "")
}

#' @importFrom utf8 utf8_width
#' @importFrom fansi strip_sgr substr_ctl
str_trunc <- function(x, width) {
  if (all(is.infinite(width))) return(x)

  str_width <- utf8_width(strip_sgr(x), encode = FALSE)

  too_wide <- which(!is.na(x) & str_width > width)
  x[too_wide] <- paste0(substr_ctl(x[too_wide], 1, width - 1), get_ellipsis())

  x
}

paste_with_space_if_needed <- function(x, y) {
  if (y == "") {
    x
  } else {
    paste(x, y)
  }
}

check_sigfig <- function(x) {
  stopifnot(is.numeric(x), length(x) == 1)
  x <- as.integer(x)
  if (x < 1L) {
    stop("Must show at least one significant figure", call. = FALSE)
  }

  x
}

slice <- function(df, index) {
  df[index, , drop = FALSE]
}

bind_rows <- function(x) {
  if (length(x) == 0) return(data.frame())
  eval_tidy(quo(rbind(!!!x)))
}

get_ellipsis <- function() {
  cli::symbol$continue
}

is_latex_output <- function() {
  if (!("knitr" %in% loadedNamespaces())) return(FALSE)
  get("is_latex_output", asNamespace("knitr"))()
}

remove_as_is_class <- function(x) {
  if (all(class(x) == "AsIs")) return(unclass(x))
  class(x) <- setdiff(class(x), "AsIs")
  x
}

diff_to_trunc <- function(x) {
  x - trunc(x)
}

v <- function(x) {
  expr <- rlang::expr_deparse(substitute(x), width = Inf)
  paste0(expr, " = ", rlang::expr_deparse(x, width = 80)[[1]])
}
