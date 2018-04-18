format_title <- function(x, width) {
  needs_ticks <- !is_syntactic(x)
  x[needs_ticks] <- tick(x[needs_ticks])
  align(str_trunc(x, width))
}

is_syntactic <- function(x) {
  ret <- make.names(x) == x
  ret[is.na(x)] <- FALSE
  ret
}

is_ambiguous_string <- function(x) {
  grepl("^$|^ | $|\\\\|\"", x)
}

tick <- function(x) {
  x[is.na(x)] <- "NA"
  encodeString(x, quote = "`")
}
