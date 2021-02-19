## user-facing docs kept in `formatting` topic; see utils-format.R
## Exception: tibble.view_max, in `tibble-package`
op.tibble <- list(
  tibble.print_max = 20L,
  tibble.print_min = 10L,
  tibble.width = NULL,
  tibble.max_extra_cols = 100L
)

tibble_opt <- function(x, dplyr = TRUE) {
  x_tibble <- paste0("tibble.", x)
  res <- getOption(x_tibble)
  if (!is.null(res)) {
    return(res)
  }

  if (dplyr) {
    x_dplyr <- paste0("dplyr.", x)
    res <- getOption(x_dplyr)
    if (!is.null(res)) {
      return(res)
    }
  }

  op.tibble[[x_tibble]]
}

get_width_print <- function(width) {
  if (!is.null(width)) {
    return(width)
  }

  width <- tibble_opt("width")
  if (!is.null(width)) {
    return(width)
  }

  getOption("width")
}

get_width_glimpse <- function(width) {
  if (!is.null(width)) {
    return(width)
  }

  width <- tibble_opt("width")
  if (!is.null(width) && is.finite(width)) {
    return(width)
  }

  getOption("width")
}

get_n_print <- function(n, rows) {
  if (!is.null(n) && n >= 0) {
    return(n)
  }

  if (is.na(rows) || rows > tibble_opt("print_max")) {
    tibble_opt("print_min")
  } else {
    rows
  }
}

get_max_extra_cols <- function(max_extra_cols) {
  if (!is.null(max_extra_cols) && max_extra_cols >= 0) {
    return(max_extra_cols)
  }

  tibble_opt("max_extra_cols")
}
