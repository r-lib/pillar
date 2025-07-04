# Format numbers in decimal notation
#
# This formatting system is designed to make it as easy as possible to
# compare columns of numbers. Significant digits are coloured black or red
# (for positive and negative numbers) and non-significant digits are coloured
# in paler gray.
#
# @return A list with at least the following elements:
# * `neg`: negative sign or space, `TRUE` if needed
# * `lhs`: whole number
# * `dec`: decimal point, `TRUE` if needed
# * `rhs`: remainder of number
#
# @param x A numeric vector
# @param sigfig Number of significant figures to display.
# @param digits Number of digits after the decimal point, incompatible with
#   `sigfig`. A negative number means the maximum number of digits to display.
# @param sci_mod Set to 1 for scientific or to 3 for engineering display.
# @param si Set to `TRUE` for SI notation, requires `sci_mod = 3`
# @param fixed Set to `TRUE` to use the same exponent everywhere.
# @seealso [split_decimal()]
# @examples
# split_decimal(1.5:3.5)
# split_decimal(1.5:3.5, sci_mod = 1)
# split_decimal(1e9)
# split_decimal(1e9, sci_mod = 1)
split_decimal <- function(x, sigfig, digits = NULL, sci_mod = NULL, si = FALSE,
                          fixed_exponent = NULL) {
  "!!!!!!DEBUG split_decimal(`v(x)`, `v(sigfig)`, `v(digits)`, `v(sci_mod)`, `v(si)`, `v(fixed_exponent)`"

  stopifnot(is.numeric(x))
  sigfig <- check_sigfig(sigfig)

  num <- is.finite(x)
  "!!!!!!DEBUG `v(num)`"
  dec <- num

  # Do we need negative signs?
  neg <- !is.na(x) & x < 0
  "!!!!!!DEBUG `v(neg)`"

  abs_x <- abs(x)
  mnt <- abs_x
  "!!!!!!DEBUG `v(mnt)`"

  if (!is.null(sci_mod)) {
    exp <- compute_exp_display(mnt, sigfig, digits)
    exp <- fix_exp(num, exp, fixed_exponent, sci_mod, si)
    "!!!!!!DEBUG `v(exp)`"
    unit <- attr(exp, "unit")

    # Must divide by 10^exp, because 10^-exp may not be representable
    # for very large values of exp
    mnt_idx <- which(num & mnt != 0)
    mnt[mnt_idx] <- safe_divide_10_to(mnt[mnt_idx], exp[mnt_idx])
    "!!!!!!DEBUG `v(mnt)`"
  } else {
    exp <- 0
    "!!!!!!DEBUG `v(exp)`"
    unit <- NULL
  }

  if (is.null(sci_mod) || !is.null(fixed_exponent)) {
    exp_display <- rep_along(x, NA_integer_)
  } else {
    exp_display <- exp
  }

  if (is.null(digits)) {
    "!!!!!!DEBUG `v(sigfig)`"
    min_sigfig <- compute_min_sigfig(mnt)
    "!!!!!!DEBUG `v(min_sigfig)`"
    round_mnt <- safe_signif(mnt, pmax(sigfig, min_sigfig, na.rm = TRUE))
    "!!!!!!DEBUG `v(round_mnt)`"
    rhs_digits <- compute_rhs_digits(mnt, sigfig)
  } else if (digits >= 0) {
    "!!!!!!DEBUG `v(digits)`"
    round_mnt <- round(mnt, digits)
    rhs_digits <- digits
  } else {
    "!!!!!!DEBUG `v(-digits)`"
    round_mnt <- round(mnt, -digits)
    trunc_mnt <- trunc(mnt)
    rhs_digits <- compute_rhs_digits(mnt - trunc_mnt, -digits, trunc_mnt)
  }

  "!!!!!!DEBUG `v(round_mnt)`"
  "!!!!!!DEBUG `v(rhs_digits)`"

  lhs <- trunc(round_mnt)
  "!!!!!!DEBUG `v(lhs)`"

  rhs <- round_mnt - lhs
  "!!!!!!DEBUG `v(rhs)`"

  if (is.null(digits) || digits < 0) {
    "!!!!!!DEBUG `v(lhs * 10^exp - abs_x)`"
    reset_dec <- (mnt == 0 | (rhs == 0 & within_tolerance(lhs * 10^exp, abs_x)))
    "!!!!!!DEBUG `v(reset_dec)`"

    dec[reset_dec] <- FALSE
    "!!!!!!DEBUG `v(dec)`"
  }

  ret <- list(
    sigfig = sigfig,
    num = num,
    neg = neg,
    # integer64 doesn't support format(trim = FALSE)
    # trimws() is unnecessarily slow
    lhs = sub("^ +", "", format(lhs, scientific = FALSE)),
    lhs_zero = (lhs == 0),
    rhs = rhs,
    rhs_digits = rhs_digits,
    dec = dec,
    exp = exp_display,
    unit = unit,
    si = si
  )

  set_width(ret, get_decimal_width(ret))
}

fix_exp <- function(num, exp, fixed_exponent, sci_mod, si) {
  "!!!!!!DEBUG fix_exp(`v(num)`, `v(exp)`, `v(fixed_exponent)`, `v(sci_mod)`, `v(si)`"
  if (!is.null(fixed_exponent)) {
    if (is.finite(fixed_exponent)) {
      exp <- fixed_exponent
    } else if (all(is.na(exp))) {
      exp <- NA_real_
    } else if (fixed_exponent < 0) {
      exp <- min(exp, na.rm = TRUE)
    } else {
      exp <- max(exp, na.rm = TRUE)
    }
    "!!!!!!DEBUG `v(exp)`"
    exp <- as.integer(round(exp))
    exp <- structure(rep_along(num, exp), unit = exp %|% 0L)
    exp[!num] <- NA_integer_
    "!!!!!!DEBUG `v(exp)`"
  }

  if (sci_mod != 1) {
    exp[] <- as.integer(round(floor(exp / sci_mod) * sci_mod))
    "!!!!!!DEBUG `v(exp)`"
  }
  if (si) {
    # Truncate very small and very large exponents
    exp[] <- pmin(pmax(exp, -24L), 24L)
    "!!!!!!DEBUG `v(exp)`"
  }

  exp
}

get_decimal_width <- function(x) {
  exp <- x$exp[!is.na(x$exp)]

  if (x$si) {
    exp_digits <- any(exp != 0)
  } else {
    exp_digits <- any(exp < 0) + max(2 + trunc(log10(abs(exp) + 0.5)), 0)
  }

  max(x$neg + nchar(x$lhs), 0) +
    any(x$dec, na.rm = TRUE) +
    max(x$rhs_digits, 0) +
    exp_digits
}

safe_signif <- function(x, digits) {
  if (length(x) == 0L) {
    return(numeric())
  }
  signif(x, digits)
}

safe_divide_10_to <- function(x, y) {
  # Computes x / 10^y in a robust way

  10^(log10(x) - y)
}

eps_2 <- 2 * .Machine$double.eps

within_tolerance <- function(x, y) {
  "!!!!!!DEBUG within_tolerance(`v(x)`, `v(y)`)"
  l2x <- round(log2(x))
  "!!!!!!DEBUG `v(l2x)`"
  l2y <- round(log2(y))
  "!!!!!!DEBUG `v(l2y)`"

  equal <- (l2x == l2y)
  equal[is.na(equal)] <- FALSE
  out <- equal

  # Work around integer64 problem
  equal[x == y] <- FALSE
  "!!!!!!DEBUG `v(abs((x[equal] - y[equal]) * 2 ^ -l2x[equal]))`"
  out[equal] <- abs((x[equal] - y[equal]) * 2^-l2x[equal]) <= eps_2
  out
}

compute_rhs_digits <- function(x, sigfig, offset = rep_along(x, 0)) {
  "!!!!!!DEBUG compute_rhs_digits(`v(x)`, `v(sigfig)`)"
  # If already bigger than sigfig, can round to zero.
  # Otherwise ensure we have sigfig digits shown
  exp <- compute_exp(x, sigfig)
  exp[is.na(exp)] <- Inf
  "!!!!!!DEBUG `v(exp)"
  rhs_digits <- rep_along(x, 0)
  "!!!!!!DEBUG `v(rhs_digits)"

  if (!is.integer(x) && !all(x == trunc(x), na.rm = TRUE)) {
    has_rhs <- (exp <= sigfig)
    "!!!!!!DEBUG `v(has_rhs)`"
    rhs_digits[has_rhs] <- sigfig - 1 - exp[has_rhs]

    to_check <- rhs_digits > 0
    while (any(to_check, na.rm = TRUE)) {
      "!!!!!!DEBUG `v(to_check)"
      "!!!!!!DEBUG `v(rhs_digits)"

      which_to_check <- which(to_check)
      val <- (x[which_to_check] + offset[which_to_check]) * 10^(rhs_digits[which_to_check] - 1)
      "!!!!!!DEBUG `v(val)"
      "!!!!!!DEBUG `v(val - round(val))"

      resid_zero <- within_tolerance(val, round(val))
      "!!!!!!DEBUG `v(resid_zero)`"
      resid_zero[is.na(resid_zero)] <- FALSE

      rhs_digits[which_to_check][resid_zero] <-
        rhs_digits[which_to_check][resid_zero] - 1

      to_check[which_to_check][!resid_zero] <- FALSE
      to_check[rhs_digits == 0] <- FALSE
    }

    "!!!!!!DEBUG `v(to_check)"
    "!!!!!!DEBUG `v(rhs_digits)"
  }

  "!!!!!!DEBUG `v(rhs_digits)"
  rhs_digits
}

compute_min_sigfig <- function(x) {
  ret <- rep_along(x, NA_integer_)
  nonzero <- which(x != 0 & is.finite(x))
  ret[nonzero] <- as.integer(floor(log10(x[nonzero]))) + 1L
  ret
}

compute_extra_sigfig <- function(x) {
  x <- sort(abs(x))
  delta <- diff(x)
  x <- x[-1]

  keep <- which((delta != 0) & is.finite(delta))
  if (length(keep) == 0) {
    return(0)
  }

  ceiling(log10(max(x[keep] / delta[keep]))) - 1
}

LOG_10 <- log(10)

compute_exp_display <- function(x, sigfig, digits = NULL) {
  "!!!!!!DEBUG compute_exp_display(`v(x)`, `v(sigfig)`, `v(digits)`)"
  if (is.null(sigfig)) {
    sigfig <- abs(digits)
  }

  # With 3 significant digits:
  # 0.9994 -> 0.999 -> exp == -1
  # 0.9995 -> 1.00 -> exp == 0
  # This means that x is divided by 0.9995 in this example
  # before computing log10().
  # Division before log is the same as subtraction after log.
  # Using log1p for numerical stability.
  offset <- log1p(-5 * 10^(-sigfig - 1)) / LOG_10
  "!!!!!!DEBUG `v(offset)`"

  ret <- rep_along(x, NA_integer_)
  nonzero <- which(x != 0 & is.finite(x))
  ret[nonzero] <- as.integer(floor(log10(x[nonzero]) - offset))
  "!!!!!!DEBUG `v(ret)`"
  ret
}

compute_exp <- function(x, sigfig) {
  "!!!!!!DEBUG compute_exp(`v(x)`, `v(sigfig)`)"
  ret <- rep_along(x, NA_integer_)
  nonzero <- which(x != 0 & is.finite(x))
  ret[nonzero] <- as.integer(floor(log10(x[nonzero])))
  "!!!!!!DEBUG `v(ret)`"
  ret
}

format_mantissa <- function(x) {
  lhs <- format_lhs(x)
  dec <- format_dec(x)
  rhs <- format_rhs(x)
  paste0(lhs, dec, rhs)
}

format_neg <- function(s) {
  neg <- s$neg
  neg_col <- ifelse(neg, "-", "")
  neg_col
}

format_lhs <- function(s) {
  neg <- s$neg
  num <- s$num
  lhs_zero <- s$lhs_zero

  lhs_str <- s$lhs
  lhs_split <- strsplit(lhs_str, "", fixed = TRUE)
  lhs_width <- lengths(lhs_split)

  lhs_split_underlined <- map(lhs_split, underline_3_back)

  lhs_sig <- map(pmin(lhs_width, s$sigfig), seq_len)
  lhs_insig <- map(lhs_sig, `-`)

  lhs_split_sig <- map2(lhs_split_underlined, lhs_sig, `[`)
  lhs_split_non <- map2(lhs_split_underlined, lhs_insig, `[`)

  lhs_sig <- map_chr(lhs_split_sig, paste, collapse = "")
  lhs_non <- map_chr(lhs_split_non, paste, collapse = "")

  # as.character() to support corner case of length zero
  lhs_col <- as.character(ifelse(num,
    paste0(
      style_num(lhs_sig, neg, !lhs_zero),
      style_subtle_num(lhs_non, neg)
    ),
    style_na(lhs_str)
  ))

  lhs_col <- paste0(format_neg(s), lhs_col)
  # No alignment here, result needs to be right-aligned
  lhs_col
}

underline_3_back <- function(x) {
  idx <- which(trunc((seq_along(x) - length(x)) / 3) %% 2 == 1)
  x[idx] <- crayon_underline(x[idx])
  x
}

format_dec <- function(s) {
  neg <- s$neg
  dec <- s$dec
  lhs_zero <- s$lhs_zero

  # Decimal column
  if (any(dec)) {
    dec_col <- ifelse(dec, style_num(getOption("OutDec", "."), neg, !lhs_zero), " ")
  } else {
    dec_col <- rep_along(neg, "")
  }
  dec_col
}

format_rhs <- function(s) {
  neg <- s$neg
  dec <- s$dec
  lhs_zero <- s$lhs_zero
  rhs_digits <- s$rhs_digits

  # Digits on RHS of .

  # s$rhs * 10^(rhs_digits) should be almost an integer
  rhs_val <- s$rhs * 10^rhs_digits

  rhs_num <- sprintf("%.0f", abs(round(rhs_val)))
  rhs_num[rhs_num == "0"] <- ""

  # Special treatment for leading zeros for some formatting,
  # hand-rolling
  n_zeros <- pmax(0, rhs_digits - get_extent(rhs_num))
  rhs_zero <- strrep("0", n_zeros)

  rhs_split <- strsplit(paste0(rhs_zero, rhs_num), "", fixed = TRUE)
  rhs_split_underlined <- map(rhs_split, underline_3)

  rhs_is_zero <- map(n_zeros, seq_len)
  rhs_is_nonzero <- map2(n_zeros + 1L, rhs_digits, seq2)

  rhs_split_underlined_zero <- map2(rhs_split_underlined, rhs_is_zero, `[`)
  rhs_split_underlined_num <- map2(rhs_split_underlined, rhs_is_nonzero, `[`)

  rhs_underlined_zero <- map_chr(rhs_split_underlined_zero, paste, collapse = "")
  rhs_underlined_num <- map_chr(rhs_split_underlined_num, paste, collapse = "")

  rhs_col <- ifelse(dec,
    paste0(
      style_num(rhs_underlined_zero, neg, significant = !lhs_zero),
      style_num(rhs_underlined_num, neg)
    ),
    ""
  )

  # ensure all same width
  rhs_col <- align(rhs_col, max(rhs_digits, 0L, na.rm = TRUE), "left")

  rhs_col
}

underline_3 <- function(x) {
  idx <- which(trunc((seq_along(x) - 1) / 3) %% 2 == 1)
  x[idx] <- crayon_underline(x[idx])
  x
}

#' @export
#' @param negative,significant Logical vector the same length as `x` that
#'   indicate if the values are negative and significant, respectively
#' @rdname style_subtle
#' @examples
#' style_num(
#'   c("123", "456"),
#'   negative = c(TRUE, FALSE)
#' )
#' style_num(
#'   c("123", "456"),
#'   negative = c(TRUE, FALSE),
#'   significant = c(FALSE, FALSE)
#' )
style_num <- function(x, negative, significant = rep_along(x, TRUE)) {
  ifelse(significant, ifelse(negative, style_neg(x), x), style_subtle_num(x, negative))
}

assemble_decimal <- function(x) {
  mantissa <- format_mantissa(x)
  exp <- format_exp(x$exp, x$si)

  paste0(mantissa, exp)
}

#' @export
format.pillar_shaft_decimal <- function(x, width, ...) {
  if (is.null(x$dec) || width < get_width(x$dec)) {
    fmt <- x$sci
  } else {
    fmt <- x$dec
  }

  if (length(fmt$num) == 0L) {
    return(character())
  }

  if (width < get_min_width(fmt)) {
    stop(
      "Need at least width ", get_min_width(x), ", requested ", width, ".",
      call. = FALSE
    )
  }

  row <- assemble_decimal(fmt)

  used_width <- get_max_extent(row)
  row <- paste0(strrep(" ", width - used_width), row)
  new_ornament(row, width = width, align = "right")
}
