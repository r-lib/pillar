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
#' @param ... Ignored
format_decimal <- function(x, sigfig = 3, ...) {
  split_decimal(x, sigfig)
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
    round_x <- safe_signif(mnt, sigfig)
    rhs_digits <- ifelse(num, sigfig - 1, 0)
    exp_display <- exp
  } else {
    round_x <- safe_signif(abs_x, pmax(sigfig, exp + 1, na.rm = TRUE))
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

  set_width(ret, max(crayon::col_nchar(assemble_decimal(ret), type = "width"), 0L))
}

safe_signif <- function(x, digits) {
  if (length(x) == 0L) return(numeric())
  signif(x, digits)
}

compute_rhs_digits <- function(x, sigfig) {
  # If already bigger than sigfig, can round to zero.
  # Otherwise ensure we have sigfig digits shown
  exp <- compute_exp(x)
  exp[is.na(exp)] <- Inf
  if (is.integer(x)) {
    digits <- 0
  } else {
    digits <- ifelse(exp > sigfig, 0, sigfig - exp - ifelse(exp <= 0, 1, 0))
  }
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
  lhs_width <- max(nchar(lhs_str), 0L)
  lhs_sig <- crayon::col_substr(lhs_str, 1, s$sigfig)
  lhs_non <- crayon::col_substr(lhs_str, s$sigfig + 1, nchar(lhs_str))

  # as.character() to support corner case of length zero
  lhs_col <- as.character(ifelse(num,
    paste0(
      style_num(lhs_sig, neg, !lhs_zero),
      style_subtle(lhs_non)
    ),
    style_na(lhs_str)
  ))

  lhs_col <- crayon::col_align(lhs_col, width = lhs_width, align = "right")
  lhs_col
}

format_dec <- function(s) {
  neg <- s$neg
  dec <- s$dec
  lhs_zero <- s$lhs_zero

  # Decimal column
  if (any(dec)) {
    dec_col <- ifelse(dec, style_num(".", neg, !lhs_zero), " ")
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
      style_num(rhs_zero, neg, !lhs_zero),
      style_num(rhs_num, neg)
    ),
    ""
  )

  # ensure all same width
  rhs_col <- crayon::col_align(rhs_col, max(rhs_digits, na.rm = TRUE), "left")

  rhs_col
}

#' @export
#' @param negative,significant Logical vector the same length as `x` that
#'   indicate if the values are negative and significant, respectively
#' @rdname style_subtle
style_num <- function(x, negative, significant = rep_along(x, TRUE)) {
  ifelse(significant, ifelse(negative, style_neg(x), x), style_subtle(x))
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
format.cf_decimal <- function(x, width, ...) {
  if (length(x$dec$num) == 0L) return(character())

  if (width < get_min_width(x)) {
    stop(
      "Need at least width ", get_min_width(x), " requested ", width, ".",
      call = FALSE
    )
  }

  if (width >= get_width(x$dec)) {
    row <- assemble_decimal(x$dec)
  } else {
    row <- assemble_decimal(x$sci)
  }

  used_width <- max(crayon::col_nchar(row, type = "width"), 0L)
  row <- paste0(strrep(" ", width - used_width), row)
  new_column(row, width = width, align = "right")
}
