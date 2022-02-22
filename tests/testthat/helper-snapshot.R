snapshot_variant <- function(...) {
  matrix <- c(...)

  bad_variants <- setdiff(matrix, c("os", "output-enc"))
  if (length(bad_variants) > 0) {
    abort(paste0("Unknown variant selector: ", bad_variants[[1]]))
  }

  variant <- NULL

  if ("os" %in% matrix) {
    variant <- c(variant, testthat_os())
  }

  if ("output-enc" %in% matrix) {
    if (cli::is_utf8_output()) {
      variant <- c(variant, "unicode")
    } else {
      variant <- c(variant, "ansi")
    }
  }

  if (is.null(variant)) {
    return(NULL)
  }
  paste(variant, collapse = "-")
}

testthat_os <- function() {
  os <- tolower(Sys.info()[["sysname"]])
  switch(os,
    darwin = "mac",
    sunos = "solaris",
    os
  )
}
