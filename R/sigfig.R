#' Create a decimal table
#'
#' This is a key building block of number formatting. It carefully uses
#' colour and alignment to make it as easy as possible to compare numbers.
#'
#' @return A tibble with four columns:
#' * `neg`: negative sign or space, if needed
#' * `lhs`: whole number
#' * `dec`: decimal point, if needed
#' * `rhs`: remainder of number
#'
#' @keywords internal
#' @export
#' @examples
#' x <- 123456789 * (10 ^ c(1, -3, -5, NA, -8, -10, -15))
#' decimal_format(x, 3)
#'
#' x <- x * sample(c(-1, 1), length(x), rep = TRUE)
#' decimal_format(x, 3)
#'
#' decimal_format(c(Inf, -Inf, NA, NaN), 3)
#' decimal_format(c(1e10, 1e-10), 3)
decimal_format <- function(x, sigfig = 3) {
  stopifnot(is.numeric(sigfig), length(sigfig) == 1)
  sigfig <- as.integer(sigfig)
  if (sigfig < 1L) {
    stop("Must show at least one significant figure", call. = FALSE)
  }

  n <- length(x)
  abs_x <- abs(x)
  round_x <- signif(abs_x, sigfig)

  # If already bigger than sigfig, can round to zero.
  # Otherwise ensure we have sigfig digits shown
  exp <- floor(log10(abs_x))
  digits <- ifelse(exp > sigfig, 0, sigfig - exp - ifelse(exp <= 0, 1, 0))

  rhs_digits <- pmax(digits - pmax(exp, 0), 0)
  dec <- !is.na(digits) & rhs_digits > 0

  # Do we need negative signs?
  neg <- !is.na(x) & x < 0
  if (any(neg)) {
    neg_col <- ifelse(neg, "-", " ")
  } else {
    neg_col <- rep("", n)
  }

  # Digits on LHS of .
  num <- is.finite(x)

  lhs <- trunc(round_x)
  lhs_zero <- lhs == 0
  lhs_str <- sprintf("%.0f", lhs)
  lhs_width <- max(nchar(lhs_str))
  lhs_sig <- substr(lhs_str, 1, sigfig)
  lhs_non <- substr(lhs_str, sigfig + 1, nchar(lhs_str))

  lhs_col <- ifelse(num,
    paste0(
      ifelse(neg & lhs_zero, style_subtle(lhs_sig), style_num(lhs_sig, neg)),
      style_subtle(lhs_non)
    ),
    style_na(lhs_str)
  )

  lhs_col <- crayon::col_align(lhs_col, width = lhs_width, align = "right")

  # Decimal column
  if (any(dec)) {
    dec_col <- ifelse(dec, style_num(".", neg & !lhs_zero), " ")
  } else {
    dec_col <- rep("", n)
  }

  # Digits on RHS of .
  rhs <- round_x - lhs

  rhs_num <- as.character(abs(round(rhs * 10 ^ rhs_digits)))
  rhs_zero <- strrep("0", pmax(0, rhs_digits - nchar(rhs_num)))

  rhs_col <- ifelse(dec,
    paste0(
      ifelse(lhs_zero, style_subtle(rhs_zero), style_num(rhs_zero, neg)),
      style_num(rhs_num, neg)
    ),
    ""
  )
  # ensure all same width
  rhs_col <- crayon::col_align(rhs_col, max(rhs_digits, na.rm = TRUE), "left")

  structure(
    list(
      neg = neg_col,
      lhs = lhs_col,
      dec = dec_col,
      rhs = rhs_col
    ),
    class = "decimal_format"
  )
}

style_num <- function(x, negative) {
  ifelse(negative, style_neg(x), x)
}

#' @export
format.decimal_format <- function(x, title = "title", ...) {
  row <- paste0(x$neg, x$lhs, x$dec, x$rhs)
  width <- max(nchar(title), crayon::col_nchar(row))

  new_column(row, title = title, width = width, align = "right")
}

#' @export
print.decimal_format <- function(x, title = "title", ...) {
  print(format(x, title = title, ...))
}
