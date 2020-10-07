#' @export
tbl_format_footer.default <- function(x, setup, ...) {
  footer <- pre_dots(format_footer(x, setup))
  footer_comment <- split_lines(format_comment(footer, width = setup$width))
  style_subtle(footer_comment)
}

format_footer <- function(x, setup) {
  extra_rows <- format_footer_rows(x, setup)
  extra_cols <- format_footer_cols(x, setup)

  extra <- c(extra_rows, extra_cols)
  if (length(extra) >= 1) {
    extra[[1]] <- paste0("with ", extra[[1]])
    extra[-1] <- map_chr(extra[-1], function(ex) paste0("and ", ex))
    collapse(extra)
  } else {
    character()
  }
}

format_footer_rows <- function(x, setup) {
  if (length(setup$x) != 0) {
    if (is.na(setup$rows_missing)) {
      "more rows"
    } else if (setup$rows_missing > 0) {
      paste0(big_mark(setup$rows_missing), pluralise_n(" more row(s)", setup$rows_missing))
    }
  } else if (is.na(setup$rows_total) && setup$rows_min > 0) {
    paste0("at least ", big_mark(setup$rows_min), pluralise_n(" row(s) total", setup$rows_min))
  }
}

format_footer_cols <- function(x, setup) {
  extra_cols <- setup$extra_cols
  if (length(extra_cols) == 0) return(NULL)

  vars <- format_extra_vars(extra_cols)
  paste0(
    big_mark(length(extra_cols)), " ",
    if (!identical(setup$rows_total, 0L) && setup$rows_min > 0) "more ",
    pluralise("variable(s)", extra_cols), vars
  )
}

format_extra_vars <- function(extra_cols) {
  # Also covers empty extra_cols vector!
  if (is.na(extra_cols[1])) return("")

  if (anyNA(extra_cols)) {
    extra_cols <- c(extra_cols[!is.na(extra_cols)], cli::symbol$ellipsis)
  }

  paste0(": ", collapse(extra_cols))
}

pre_dots <- function(x) {
  if (length(x) > 0) {
    paste0(cli::symbol$ellipsis, " ", x)
  } else {
    character()
  }
}

collapse <- function(x) paste(x, collapse = ", ")

split_lines <- function(x) {
  # Avoid .ptype argument to vec_c()
  if (is_empty(x)) return(character())

  unlist(strsplit(x, "\n", fixed = TRUE))
}
