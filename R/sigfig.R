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
#' x <- sample(x) * sample(c(-1, 1), length(x), rep = TRUE)
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

  # If already bigger than sigfig, can round to zero.
  # Otherwise ensure we have sigfig digits shown
  exp <- floor(log10(abs_x))
  digits <- ifelse(exp > sigfig, 0, sigfig - exp - ifelse(exp <= 0, 1, 0))

  # Compute column components in natural type then as fixed width strings

  neg <- !is.na(x) & x < 0
  if (any(neg)) {
    neg_col <- ifelse(neg, style_neg("-"), " ")
  } else {
    neg_col <- rep("", n)
  }

  num <- is.finite(x)

  lhs <- trunc(abs_x)
  lhs_str <- sprintf("%.0f", lhs)
  lhs_width <- max(nchar(lhs_str))
  lhs_sig <- substr(lhs_str, 1, sigfig)
  lhs_non <- substr(lhs_str, sigfig + 1, nchar(lhs_str))

  lhs_col <- ifelse(num,
    paste0(ifelse(neg & lhs != 0, style_neg(lhs_sig), lhs_sig), style_subtle(lhs_non)),
    style_na(lhs_str)
  )
  lhs_col <- crayon::col_align(lhs_col, width = lhs_width, align = "right")

  dec <- !is.na(digits) & digits > 0
  if (any(dec)) {
    dec_col <- ifelse(dec, ".", " ")
  } else {
    dec_col <- rep("", n)
  }

  rhs_num <- as.character(abs(round((abs_x - lhs) * 10 ^ digits)))
  rhs_zero <- strrep("0", pmax(0, digits - sigfig))

  rhs_col <- ifelse(dec,
    paste0(style_subtle(rhs_zero), ifelse(neg, style_neg(rhs_num), rhs_num)),
    ""
  )

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


#' @export
format.decimal_format <- function(x, title = "title", ...) {

  row <- paste0(x$neg, x$lhs, x$dec, x$rhs)
  width <- max(nchar(title), crayon::col_nchar(row))

  structure(
    row,
    title = col_align(title, width = width, align = "right"),
    width = width
  )
}

#' @export
print.decimal_format <- function(x, title = "title", ...) {
  align <- attr(x, "align")
  width <- max(nchar(title), attr(x, "width"))

  x <- format(x, title = title, ...)

  cat_line(crayon::bold(attr(x, "title")))
  cat_line(paste(x, collapse = "\n"))
}
