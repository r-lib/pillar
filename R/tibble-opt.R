tibble_opt <- function(x, default = op.tibble[[x]]) {
  x_tibble <- paste0("tibble.", x)
  res <- getOption(x_tibble)
  if (!is.null(res)) {
    return(res)
  }

  x_dplyr <- paste0("dplyr.", x)
  res <- getOption(x_dplyr)
  if (!is.null(res)) {
    return(res)
  }

  default
}

get_width_print <- function(width) {
  if (!is.null(width)) {
    return(width)
  }

  get_pillar_option_width()
}

get_width_glimpse <- function(width) {
  width <- get_width_print(width)

  if (is.finite(width)) {
    width
  } else {
    getOption("width")
  }
}

get_n_print <- function(n, rows) {
  if (!is.null(n) && n >= 0) {
    return(n)
  }

  if (is.na(rows) || rows > get_pillar_option_print_max()) {
    get_pillar_option_print_min()
  } else {
    rows
  }
}

get_max_extra_cols <- function(max_extra_cols) {
  # FIXME: Deprecate
  if (!is.null(max_extra_cols) && max_extra_cols >= 0) {
    return(max_extra_cols)
  }

  tibble_opt("max_extra_cols", 100L)
}
