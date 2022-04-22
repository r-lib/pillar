format_title <- function(x, width, footnote = FALSE) {
  align(str_trunc(x, width, if (footnote) "untick_footnote" else "untick"))
}

tick_names_if_needed <- function(x) {
  names(x) <- tick_if_needed(names(x))
  x
}

tick_if_needed <- function(x) {
  # Compatibility with R 3.4
  if (is.null(x)) {
    return(NULL)
  }
  needs_ticks <- !is_syntactic(x)
  x[needs_ticks] <- tick(x[needs_ticks])
  x
}

is_syntactic <- function(x) {
  # Compatibility with R 3.4
  if (is.null(x)) {
    return(logical())
  }
  ret <- make.names(x) == x
  ret[is.na(x)] <- FALSE
  ret
}

is_ambiguous_string <- function(x) {
  !is.na(x) & grepl("^$|^ | $|\\\\|\"", x)
}

tick <- function(x) {
  ifelse(is.na(x), "NA", encodeString(x, quote = "`"))
}
