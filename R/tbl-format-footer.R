#' Format the footer of a tibble
#'
#' @description
#' For easier customization, the formatting of a tibble is split
#' into three components: header, body, and footer.
#' The `tbl_format_footer()` method is responsible for formatting the footer
#' of a tibble.
#'
#' Override or extend this method if you need to change the appearance
#' of the footer.
#' The default implementation adds information about rows and columns
#' that are not shown in the body.
#'
#' @inheritParams tbl_format_body
#' @inherit tbl_format_body return
#'
#' @export
tbl_format_footer <- function(x, setup, ...) {
  check_dots_empty()

  UseMethod("tbl_format_footer")
}

#' @export
tbl_format_footer.pillar_tbl_format_setup <- function(x, ...) {
  new_vertical(c(
    cli::style_bold("<tbl_format_footer(setup)>"),
    tbl_format_footer(x$x, setup = x)
  ))
}

#' @export
tbl_format_footer.tbl <- function(x, setup, ...) {
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
  if (ncol(setup$x) != 0) {
    if (is.na(setup$rows_missing)) {
      "more rows"
    } else if (setup$rows_missing > 0) {
      paste0(big_mark(setup$rows_missing), pluralise_n(" more row(s)", setup$rows_missing))
    }
  } else {
    rows_body <- nrow(setup$df)
    if (is.na(setup$rows_total) && rows_body > 0) {
      paste0("at least ", big_mark(rows_body), pluralise_n(" row(s) total", rows_body))
    }
  }
}

format_footer_cols <- function(x, setup) {
  extra_cols <- setup$extra_cols
  if (length(extra_cols) == 0) return(NULL)

  extra_cols_total <- setup$extra_cols_total

  vars <- format_extra_vars(extra_cols, extra_cols_total)
  paste0(
    big_mark(extra_cols_total), " ",
    if (!identical(setup$rows_total, 0L) && nrow(setup$df) > 0) "more ",
    pluralise("variable(s)", extra_cols), vars
  )
}

format_extra_vars <- function(extra_cols, extra_cols_total) {
  out <- imap(extra_cols, format_abbrev)

  if (extra_cols_total > length(extra_cols)) {
    out <- c(out, cli::symbol$ellipsis)
  }

  out <- gsub(NBSP, "\\\\U00a0", out)
  out <- gsub(" ", NBSP, out)

  paste0(": ", collapse(out))
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
