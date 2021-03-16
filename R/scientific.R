# Format numbers in scientific notation
#
# Uses colour and careful alignment.
#
# @seealso [format_decimal()]
# @inheritParams format_decimal
# @examples
# format_scientific(1.5:3.5)
# format_scientific(1e9)
format_scientific <- function(x, sigfig, digits = NULL, engineering = FALSE) {
  split_decimal(x, sigfig, digits, sci_mod = if (engineering) 3 else 1)
}

format_exp <- function(x) {
  supernum(x$exp)
}

supernum <- function(x) {
  stopifnot(is.integer(x))

  num <- !is.na(x)
  if (!any(num)) {
    return(rep_along(x, ""))
  }

  neg <- num & x < 0
  if (any(neg)) {
    neg_chr <- ifelse(neg, "-", "+")
    neg_chr[!num] <- " "
  } else {
    neg_chr <- rep("", length(x))
  }

  digits <- as.character(abs(x))
  digits[!num] <- ""

  exp <- paste0(neg_chr, format(digits, justify = "right"))

  paste0(style_subtle(ifelse(num, "e", " ")), style_num(exp, neg))
}
