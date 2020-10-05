pluralise <- function(message, objects) {
  pluralise_n(message, length(objects))
}

pluralise_n <- function(message, n) {
  stopifnot(n >= 0)


  # Don't strip parens if they have a space in between
  # (but not if the space comes before the closing paren)

  if (n == 1) {
    # strip [
    message <- gsub("\\[([^\\] ]* *)\\]", "\\1", message, perl = TRUE)
    # remove ( and its content
    message <- gsub("\\([^\\) ]* *\\)", "", message, perl = TRUE)
  } else {
    # strip (
    message <- gsub("\\(([^\\) ]* *)\\)", "\\1", message, perl = TRUE)
    # remove [ and its content
    message <- gsub("\\[[^\\] ]* *\\]", "", message, perl = TRUE)
  }

  message
}

commas <- function(problems) {
  MAX_BULLETS <- 6L

  n <- length(problems)
  if (n <= 1) {
    return(problems)
  } else if (n == 2) {
    return(paste(problems, collapse = " and "))
  }

  if (n >= MAX_BULLETS) {
    n_more <- length(problems) - MAX_BULLETS + 1L
    problems[[MAX_BULLETS]] <- paste0(n_more, " more")
    length(problems) <- MAX_BULLETS
    n <- MAX_BULLETS
  }

  problems[[n]] <- paste0("and ", problems[[n]])

  paste(problems, collapse = ", ")
}
