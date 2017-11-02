#' Format numbers in scientific notation
#'
#' Uses colour, careful alignment, and superscripts to display numbers
#' in scientific notation.
#'
#' @inheritParams format_decimal
#' @param superscript If `TRUE`, will use superscript numbers in exponent.
format_scientific <- function(x, sigfig = 3, superscript = TRUE) {
  if (!is_utf8_output()) superscript <- FALSE
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
      neg_chr <- ifelse(neg, "\u207b", "\u207a")
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

  # super <- c("⁰", "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸", "⁹")
  super <- c(
    "\u2070", "\u00b9", "\u00b2", "\u00b3", "\u2074",
    "\u2075", "\u2076", "\u2077", "\u2078", "\u2079"
  )
  names(super) <- 0:9

  paste0(super[chars], collapse = "")
}
