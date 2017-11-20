# Format numbers in scientific notation
#
# Uses colour, careful alignment, and superscripts to display numbers
# in scientific notation.
#
# @seealso [format_decimal()]
# @inheritParams format_decimal
# @param superscript If `TRUE`, will use superscript numbers in exponent.
# @examples
# format_scientific(1.5:3.5)
# format_scientific(1e9)
format_scientific <- function(x, sigfig = 3, superscript = TRUE) {
  split_decimal(x, sigfig, scientific = TRUE, superscript = superscript)
}

format_exp <- function(x) {
  supernum(x$exp, superscript = x$superscript)
}

supernum <- function(x, superscript = TRUE) {
  stopifnot(is.integer(x))

  num <- !is.na(x)
  if (!any(num)) return(rep_along(x, ""))

  neg <- num & x < 0
  if (any(neg)) {
    if (superscript) {
      neg_chr <- ifelse(neg, cli::symbol$sup_minus, cli::symbol$sup_plus)
    } else {
      neg_chr <- ifelse(neg, "-", "+")
    }
    neg_chr[!num] <- " "
  } else {
    neg_chr <- rep("", length(x))
  }

  if (superscript) {
    digits <- vapply(abs(x), supernum1, character(1))
  } else {
    digits <- as.character(abs(x))
  }
  digits[!num] <- ""

  exp <- paste0(neg_chr, format(digits, justify = "right"))

  paste0(style_subtle(ifelse(num, "e", " ")), style_num(exp, neg))
}

supernum1 <- function(x) {
  chars <- strsplit(as.character(x), "")[[1]]
  paste0(cli::symbol[paste0("sup_", chars)], collapse = "")
}
