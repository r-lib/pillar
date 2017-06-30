#' Format numbers in scientific notation
#'
#' Uses colour, careful alignment, and superscripts to display numbers
#' in scientific notation.
#'
#' @inheritParams format_decimal
#' @param superscript If `TRUE`, will use superscript numbers in exponent.
#' @export
#' @examples
#' x <- c(runif(10) * 10 ^ (sample(-100:100, 5)), NA, Inf, NaN)
#' format_scientific(x)
format_scientific <- function(x, sigfig = 3, superscript = TRUE) {
  s <- split_scientific(x, sigfig, superscript)

  structure(
    s,
    class = "decimal_format"
  )
}

split_scientific <- function(x, sigfig, superscript) {
  stopifnot(is.numeric(x))
  sigfig <- check_sigfig(sigfig)

  abs_x <- abs(x)

  # Do we need negative signs?
  neg <- !is.na(x) & x < 0

  # Compute exponent and mantissa
  exp <- compute_exp(abs_x)
  mnt <- abs_x * 10 ^ (-exp)

  round_x <- signif(mnt, sigfig)
  lhs <- trunc(round_x)
  rhs <- round_x - lhs

  rhs_digits <- rep_along(x, sigfig - 1L)

  list(
    sigfig = sigfig,
    num = is.finite(x),
    neg = neg,
    lhs = lhs,
    lhs_zero = (lhs == 0),
    rhs = rhs,
    rhs_digits = rhs_digits,
    dec = rhs_digits > 0,
    exp = exp,
    superscript = superscript
  )
}

format_exp <- function(x) {
  ifelse(
    is.na(x$exp),
    "",
    supernum(x$exp, superscript = x$superscript)
  )
}

supernum <- function(x, superscript = TRUE) {
  stopifnot(is.integer(x))

  neg <- !is.na(x) & x < 0
  if (any(x < 0, na.rm = TRUE)) {
    if (superscript) {
      neg <- ifelse(x < 0, "\u207b", "\u207a")
    } else {
      neg <- ifelse(x < 0, "-", "+")
    }
    neg[is.na(x)] <- " "
  } else {
    neg <- rep("", length(x))
  }

  if (superscript) {
    digits <- vapply(abs(x), supernum1, character(1))
  } else {
    digits <- as.character(abs(x))
  }
  digits <- ifelse(is.na(x), "", digits)

  exp <- paste0(neg, format(digits, justify = "right"))

  paste0(style_subtle("e"), style_num(exp, x < 0))
}

supernum1 <- function(x) {
  chars <- strsplit(as.character(x), "")[[1]]

  # super <- c("⁰", "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸", "⁹")
  super <- c(
    "\u2070", "\u00b9", "\u00b2", "\u00b3", "\u2074",
    "\u2075", "\u2076", "\u2077", "\u2078", "\u2079"
  )
  names(super) <- 0:9

  paste0(super[chars], collapse = "")
}
