#' Format numbers in decimal notation
#'
#' This formatting system is designed to make it as easy as possible to
#' compare columns of numbers. Significant digits are coloured black or red
#' (for positive and negative numbers) and non-significant digits are coloured
#' in paler gray.
#'
#' @return A list with at least the following elements:
#' * `neg`: negative sign or space, if needed
#' * `lhs`: whole number
#' * `dec`: decimal point, if needed
#' * `rhs`: remainder of number
#'
#' @param x A numeric vector
#' @param sigfig Number of signficiant figures to display.
#' @export
#' @examples
#' x <- 123456789 * (10 ^ c(1, -3, -5, NA, -8, -10, -15))
#' format_decimal(x, 3)
#'
#' x <- x * sample(c(-1, 1), length(x), rep = TRUE)
#' format_decimal(x, 3)
#'
#' format_decimal(c(Inf, -Inf, NA, NaN), 3)
#' format_decimal(c(1e10, 1e-10), 3)
format_decimal <- function(x, sigfig = 3) {
  s <- split_decimal(x, sigfig)

  structure(
    s,
    class = "decimal_format"
  )
}

split_decimal <- function(x, sigfig, scientific = FALSE, superscript = FALSE) {
  stopifnot(is.numeric(x))
  sigfig <- check_sigfig(sigfig)

  abs_x <- abs(x)

  num <- is.finite(x)

  # Do we need negative signs?
  neg <- !is.na(x) & x < 0

  # Compute exponent and mantissa
  exp <- compute_exp(abs_x)

  if (scientific) {
    mnt <- ifelse(num, abs_x * 10 ^ (-exp), abs_x)
    round_x <- signif(mnt, sigfig)
    rhs_digits <- ifelse(num, sigfig - 1, 0)
    exp_display <- exp
  } else {
    round_x <- signif(abs_x, pmax(sigfig, exp + 1, na.rm = TRUE))
    rhs_digits <- compute_rhs_digits(abs_x, sigfig)
    exp_display <- rep_along(x, NA_integer_)
  }

  lhs <- trunc(round_x)
  rhs <- round_x - lhs

  ret <- list(
    sigfig = sigfig,
    num = num,
    neg = neg,
    lhs = lhs,
    lhs_zero = (lhs == 0),
    rhs = rhs,
    rhs_digits = rhs_digits,
    dec = rhs_digits > 0,
    exp = exp_display,
    superscript = superscript
  )

  attr(ret, "width") <- max(crayon::col_nchar(assemble_decimal(ret)))
  ret
}

compute_rhs_digits <- function(x, sigfig) {
  # If already bigger than sigfig, can round to zero.
  # Otherwise ensure we have sigfig digits shown
  exp <- compute_exp(x)
  exp[is.na(exp)] <- Inf
  digits <- ifelse(exp > sigfig, 0, sigfig - exp - ifelse(exp <= 0, 1, 0))
  rhs_digits <- pmax(digits - pmax(exp, 0), 0)
  rhs_digits
}

compute_exp <- function(x) {
  ret <- rep_along(x, NA_integer_)
  nonzero <- which(x != 0 & is.finite(x))
  ret[nonzero] <- as.integer(floor(log10(x[nonzero])))
  ret
}

format_neg <- function(s) {
  neg <- s$neg
  if (any(neg)) {
    neg_col <- ifelse(neg, "-", " ")
  } else {
    neg_col <- rep_along(neg, "")
  }
  neg_col
}

format_lhs <- function(s) {
  neg <- s$neg
  num <- s$num
  lhs_zero <- s$lhs_zero

  lhs_str <- sprintf("%.0f", s$lhs)
  lhs_width <- max(nchar(lhs_str))
  lhs_sig <- substr(lhs_str, 1, s$sigfig)
  lhs_non <- substr(lhs_str, s$sigfig + 1, nchar(lhs_str))

  lhs_col <- ifelse(num,
    paste0(
      style_num(lhs_sig, neg, lhs_zero),
      style_subtle(lhs_non)
    ),
    style_na(lhs_str)
  )

  lhs_col <- crayon::col_align(lhs_col, width = lhs_width, align = "right")
  lhs_col
}

format_dec <- function(s) {
  neg <- s$neg
  dec <- s$dec
  lhs_zero <- s$lhs_zero

  # Decimal column
  if (any(dec)) {
    dec_col <- ifelse(dec, style_num(".", neg, lhs_zero), " ")
  } else {
    dec_col <- rep_along(neg, "")
  }
  dec_col
}

format_rhs <- function(s) {
  neg <- s$neg
  dec <- s$dec
  lhs_zero <- s$lhs_zero
  rhs_num <- s$rhs_num
  rhs_digits <- s$rhs_digits

  # Digits on RHS of .
  rhs_num <- as.character(abs(round(s$rhs * 10 ^ s$rhs_digits)))

  rhs_zero <- strrep("0", pmax(0, rhs_digits - nchar(rhs_num)))

  rhs_col <- ifelse(dec,
    paste0(
      style_num(rhs_zero, neg, lhs_zero),
      style_num(rhs_num, neg)
    ),
    ""
  )

  # ensure all same width
  rhs_col <- crayon::col_align(rhs_col, max(rhs_digits, na.rm = TRUE), "left")

  rhs_col
}

style_num <- function(x, negative, subtle = rep_along(x, FALSE)) {
  ifelse(subtle, style_subtle(x), ifelse(negative, style_neg(x), x))
}

assemble_decimal <- function(x) {
  neg <- format_neg(x)
  lhs <- format_lhs(x)
  dec <- format_dec(x)
  rhs <- format_rhs(x)
  exp <- format_exp(x)

  paste0(neg, lhs, dec, rhs, exp)
}

#' @export
format.decimal_format <- function(x, ...) {
  row <- assemble_decimal(x)
  width <- max(crayon::col_nchar(row))

  new_column(row, width = width, align = "right")
}

#' @export
print.decimal_format <- function(x, ...) {
  print(format(x, ...))
}
