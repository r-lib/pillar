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
# @param ... Ignored
# @seealso [format_scientific()]
# @examples
# format_decimal(1.5:3.5)
# format_decimal(1e9)
format_decimal <- function(x, sigfig, ...) {
  split_decimal(x, sigfig)
}

split_decimal <- function(x, sigfig, scientific = FALSE) {
  stopifnot(is.numeric(x))
  sigfig <- check_sigfig(sigfig)

  abs_x <- abs(x)

  num <- is.finite(x)

  # Do we need negative signs?
  neg <- !is.na(x) & x < 0

  # Compute exponent and mantissa
  exp <- compute_exp(abs_x)

  if (scientific) {
    # Must divide by 10^exp, because 10^-exp may not be representable
    # for very large values of exp
    mnt <- ifelse(num & abs_x != 0, abs_x / (10^exp), abs_x)
    round_x <- safe_signif(mnt, sigfig)
    rhs_digits <- ifelse(num & abs_x != 0, sigfig - 1, 0)
    exp_display <- exp
  } else {
    round_x <- safe_signif(abs_x, pmax(sigfig, exp + 1, na.rm = TRUE))
    rhs_digits <- compute_rhs_digits(abs_x, sigfig)
    exp_display <- rep_along(x, NA_integer_)
  }

  lhs <- trunc(round_x)
  rhs <- round_x - lhs
  dec <- is.finite(x)
  if (!scientific) {
    dec[diff_to_trunc(x) == 0] <- FALSE
  }

  ret <- list(
    sigfig = sigfig,
    num = num,
    neg = neg,
    lhs = lhs,
    lhs_zero = (lhs == 0),
    rhs = rhs,
    rhs_digits = rhs_digits,
    dec = dec,
    exp = exp_display
  )

  set_width(ret, get_decimal_width(ret))
}

safe_signif <- function(x, digits) {
  if (length(x) == 0L) return(numeric())
  signif(x, digits)
}

sqrt_eps <- sqrt(.Machine$double.eps)

compute_rhs_digits <- function(x, sigfig) {
  # If already bigger than sigfig, can round to zero.
  # Otherwise ensure we have sigfig digits shown
  exp <- compute_exp(x)
  exp[is.na(exp)] <- Inf
  rhs_digits <- rep_along(x, 0)
  if (!is.integer(x) && !all(x == trunc(x), na.rm = TRUE)) {
    has_rhs <- (exp <= sigfig)
    rhs_digits[has_rhs] <- sigfig - 1 - exp[has_rhs]

    to_check <- rhs_digits > 0
    while (any(to_check, na.rm = TRUE)) {
      which_to_check <- which(to_check)
      val <- x[which_to_check] * 10^(rhs_digits[which_to_check] - 1)
      resid <- diff_to_trunc(val)
      resid_zero <- abs(resid) < sqrt_eps
      resid_zero[is.na(resid_zero)] <- FALSE

      rhs_digits[which_to_check][resid_zero] <-
        rhs_digits[which_to_check][resid_zero] - 1

      to_check[which_to_check][!resid_zero] <- FALSE
      to_check[rhs_digits == 0] <- FALSE
    }
  }
  rhs_digits
}

compute_exp <- function(x) {
  ret <- rep_along(x, NA_integer_)
  nonzero <- which(x != 0 & is.finite(x))
  ret[nonzero] <- as.integer(floor(log10(x[nonzero])))
  ret
}

get_decimal_width <- function(x) {
  get_max_extent(assemble_decimal(x))
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

  lhs_str <- sprintf("%.0f", s$lhs)
  lhs_split <- strsplit(lhs_str, "", fixed = TRUE)
  lhs_width <- max(0L, map_int(lhs_split, length))

  lhs_split_underlined <- map(lhs_split, underline_3_back)

  lhs_split_sig <- map(lhs_split_underlined, utils::head, s$sigfig)
  lhs_split_non <- map(lhs_split_underlined, neg_tail, s$sigfig)

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

neg_tail <- function(x, n) {
  if (n == 0) {
    x
  } else {
    utils::tail(x, -n)
  }
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
  rhs_num <- sprintf("%.0f", abs(round(s$rhs * 10^(s$rhs_digits))))
  rhs_num[rhs_num == "0"] <- ""

  n_zeros <- pmax(0, rhs_digits - get_extent(rhs_num))
  rhs_zero <- strrep("0", n_zeros)

  rhs_split <- strsplit(paste0(rhs_zero, rhs_num), "", fixed = TRUE)
  rhs_split_underlined <- map(rhs_split, underline_3)

  rhs_split_underlined_zero <- map2(rhs_split_underlined, n_zeros, utils::head)
  rhs_split_underlined_num <- map2(rhs_split_underlined, n_zeros, neg_tail)

  rhs_underlined_zero <- map_chr(rhs_split_underlined_zero, paste, collapse = "")
  rhs_underlined_num <- map_chr(rhs_split_underlined_num, paste, collapse = "")

  rhs_col <- ifelse(dec,
    paste0(
      style_num(rhs_underlined_zero, neg, !lhs_zero),
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
  exp <- format_exp(x)

  paste0(mantissa, exp)
}

#' @export
format.pillar_shaft_decimal <- function(x, width, ...) {
  if (length(x$dec$num) == 0L) return(character())

  if (width < get_min_width(x)) {
    stop(
      "Need at least width ", get_min_width(x), ", requested ", width, ".",
      call. = FALSE
    )
  }

  if (width >= get_width(x$dec)) {
    row <- assemble_decimal(x$dec)
  } else {
    row <- assemble_decimal(x$sci)
  }

  used_width <- get_max_extent(row)
  row <- paste0(strrep(" ", width - used_width), row)
  new_ornament(row, width = width, align = "right")
}
