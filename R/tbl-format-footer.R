#' Format the footer of a tibble
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
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
#' @examplesIf rlang::is_installed("palmerpenguins")
#' setup <- tbl_format_setup(palmerpenguins::penguins)
#' tbl_format_footer(palmerpenguins::penguins, setup)
#'
#' # Shortcut for debugging
#' tbl_format_footer(setup)
tbl_format_footer <- function(x, setup, ...) {
  check_dots_empty()

  UseMethod("tbl_format_footer")
}

#' @export
tbl_format_footer.pillar_tbl_format_setup <- function(x, ...) {
  as_glue(c(
    cli::style_bold("<tbl_format_footer(setup)>"),
    tbl_format_footer(x$x, setup = x)
  ))
}

#' @export
tbl_format_footer.tbl <- function(x, setup, ...) {
  footer <- format_footer(x, setup)
  footer_comment <- wrap_footer(footer, setup)

  # style_subtle() has no effect at this point
  footer_comment
}

format_footer <- function(x, setup) {
  extra_rows <- format_footer_extra_rows(x, setup)
  extra_cols <- format_footer_extra_cols(x, setup)
  abbrev_colnames <- format_footer_abbrev_colnames(x, setup)
  extra_colnames <- format_footer_extra_colnames(x, setup)

  bullets <- c(
    "*" = glue_collapse(extra_rows, sep = " "),
    "*" = glue_collapse(extra_cols, sep = " "),
    "*" = glue_collapse(abbrev_colnames, sep = " "),
    "*" = glue_collapse(extra_colnames, sep = " ")
  )

  if (is.null(bullets)) {
    return(character())
  }

  local_options(cli.width = setup$width)

  tryCatch(
    cli::cli(cli::cli_bullets(bullets)),
    message = function(e) {
      out <- conditionMessage(e)
      if (identical(out, "")) {
        NULL
      } else {
        sub("\n$", "", out)
      }
    }
  )
}

format_footer_extra_rows <- function(x, setup) {
  if (ncol(setup$x) != 0) {
    if (is.na(setup$rows_missing)) {
      c("more", "rows")
    } else if (setup$rows_missing > 0) {
      c(big_mark(setup$rows_missing), "more", pluralise_n("row(s)", setup$rows_missing))
    }
  } else {
    rows_body <- nrow(setup$df)
    if (is.na(setup$rows_total) && rows_body > 0) {
      c("at", "least", big_mark(rows_body), pluralise_n("row(s)", rows_body), "total")
    }
  }
}

format_footer_extra_cols <- function(x, setup) {
  extra_cols_total <- setup$extra_cols_total

  if (extra_cols_total > 0) {
    c(
      big_mark(extra_cols_total),
      if (!identical(setup$rows_total, 0L) && nrow(setup$df) > 0) "more",
      pluralise_n("variable(s)", extra_cols_total)
    )
  }
}

format_footer_abbrev_colnames <- function(x, setup) {
  abbrev_cols <- setup$abbrev_cols
  abbrev_cols_total <- length(abbrev_cols)
  if (abbrev_cols_total == 0) {
    return(NULL)
  }

  abbrev_cols <- paste0(map_chr(seq_along(abbrev_cols), superdigit_pre), abbrev_cols)
  idx_all_but_last <- seq_len(abbrev_cols_total - 1)
  abbrev_cols[idx_all_but_last] <- paste0(abbrev_cols[idx_all_but_last], ",")

  c(
    "abbreviated", "variable",
    pluralise("name(s)", abbrev_cols),
    abbrev_cols
  )
}

format_footer_extra_colnames <- function(x, setup) {
  extra_cols <- setup$extra_cols
  if (length(extra_cols) == 0) {
    return(NULL)
  }

  extra_cols_total <- setup$extra_cols_total

  vars <- format_extra_vars(extra_cols, extra_cols_total)
  c(
    pluralise_n("variable name(s):", extra_cols_total),
    vars
  )
}

format_extra_vars <- function(extra_cols, extra_cols_total) {
  out <- imap(extra_cols, format_abbrev)

  if (extra_cols_total > length(extra_cols)) {
    out <- c(out, cli::symbol$ellipsis)
  }

  out[-length(out)] <- paste0(out[-length(out)], ",")
  out
}

wrap_footer <- function(footer, setup) {
  if (length(footer) == 0) {
    return(character())
  }

  lines <- split_lines(footer)

  if (length(lines) <= setup$max_footer_lines) {
    return(footer)
  }

  length(lines) <- setup$max_footer_lines
  last_line <- lines[[setup$max_footer_lines]]
  ellipsis_width <- get_extent(cli::symbol$ellipsis)
  if (get_extent(last_line) + ellipsis_width + 1L > setup$width) {
    last_line <- substr2_ctl(last_line, 1, setup$width - 1L - ellipsis_width)
  }
  last_line <- paste0(last_line, " ", cli::symbol$ellipsis)

  lines[[setup$max_footer_lines]] <- last_line

  glue_collapse(lines, "\n")
}

get_footer_tier_widths <- function(footer, max_extent, n_tiers) {
  extra_width <- get_extent(cli::symbol$ellipsis) + 1L # space, ellipsis

  n_tiers <- min(length(footer), n_tiers)

  if (n_tiers == 1) {
    max_extent - 2 - 2 * extra_width
  } else {
    c(
      max_extent - 2 - extra_width,
      rep(max_extent - 4, n_tiers - 2),
      max_extent - 4 - extra_width
    )
  }
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
  if (is_empty(x)) {
    return(character())
  }

  unlist(strsplit(x, "\n", fixed = TRUE))
}
