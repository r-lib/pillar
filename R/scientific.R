format_exp <- function(x) {
  if (x$si) {
    si(x$exp)
  } else {
    supernum(x$exp)
  }
}

si <- function(x) {
  num <- !is.na(x)
  if (!any(num)) {
    return(rep_along(x, ""))
  }

  if (all(x[num] == 0L)) {
    return(rep_along(x, ""))
  }

  si_prefixes <- c(
    "y", "z", "a", "f", "p", "n", "\\u00b5", "m", " ", "k", "M", "G", "T", "P", "E", "Z", "Y"
  )

  idx <- (x / 3) + 9
  style_bold(si_prefixes[idx])
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
