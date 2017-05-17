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
#' format_scentific(x)
format_scentific <- function(x, sigfig = 3, superscript = TRUE) {
  stopifnot(is.numeric(x))
  sigfig <- check_sigfig(sigfig)

  n <- length(x)
  abs_x <- abs(x)
  round_x <- signif(abs_x, sigfig)
  num <- is.finite(x)
  abs_x[!num] <- NA # supress warning from log10

  # Compute exponent and mantissa
  exp <- as.integer(floor(log10(abs_x)))
  exp_chr <- ifelse(num, supernum(exp, superscript = superscript), "")

  mnt <- round_x * 10 ^ (-exp)
  mnt_chr <- ifelse(num,
    format(mnt, digits = sigfig),
    crayon::col_align(style_na(as.character(round_x)), sigfig + 1, "right")
  )

  new_colformat(paste0(mnt_chr, exp_chr))
}

supernum <- function(x, superscript = TRUE) {
  stopifnot(is.integer(x))

  if (any(x < 0, na.rm = TRUE)) {
    if (superscript) {
      neg <- ifelse(x < 0, "\u207b", "\u207a")
    } else {
      neg <- ifelse(x < 0, "-", "+")
    }

  } else {
    neg <- rep("", length(x))
  }

  if (superscript) {
    digits <- vapply(abs(x), supernum1, character(1))
  } else {
    digits <- as.character(abs(x))
  }
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
