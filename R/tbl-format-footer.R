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
  style_subtle(footer_comment)
}

format_footer <- function(x, setup) {
  extra_rows <- format_footer_extra_rows(x, setup)
  abbrev_cols <- format_footer_abbrev_cols(x, setup)
  extra_cols <- format_footer_extra_cols(x, setup)

  footer <- compact(list(extra_rows, abbrev_cols, extra_cols))
  if (length(footer) == 0) {
    return(character())
  }

  if (length(footer) > 1) {
    footer_len <- length(footer)
    idx_all_but_last <- seq2(1, footer_len - 1)
    footer[idx_all_but_last] <- map(footer[idx_all_but_last], function(x) {
      x[[length(x)]] <- paste0(x[[length(x)]], ",")
      x
    })
    footer <- c(footer[idx_all_but_last], "and", footer[footer_len])
  }

  extra <- unlist(footer, recursive = FALSE)

  c("with", extra)
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

format_footer_abbrev_cols <- function(x, setup) {
  abbrev_cols <- setup$abbrev_cols
  abbrev_cols_total <- length(abbrev_cols)
  if (abbrev_cols_total == 0) {
    return(NULL)
  }

  idx_all_but_last <- seq2(1, abbrev_cols_total - 1)
  abbrev_cols[idx_all_but_last] <- paste0(abbrev_cols[idx_all_but_last], ",")

  c(
    "abbreviated", "variable",
    pluralise("name(s)", abbrev_cols),
    abbrev_cols
  )
}

format_footer_extra_cols <- function(x, setup) {
  extra_cols <- setup$extra_cols
  if (length(extra_cols) == 0) {
    return(NULL)
  }

  extra_cols_total <- setup$extra_cols_total

  vars <- format_extra_vars(extra_cols, extra_cols_total)
  c(
    big_mark(extra_cols_total),
    if (!identical(setup$rows_total, 0L) && nrow(setup$df) > 0) "more",
    pluralise("variable(s):", extra_cols),
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

  # When asking for width = 80, use at most 79 characters
  max_extent <- setup$width - 1L

  tier_widths <- get_footer_tier_widths(
    footer, max_extent,
    setup$max_footer_lines
  )

  # show optuput even if too wide
  widths <- pmin(get_extent(footer), max_extent - 4L)
  wrap <- colonnade_compute_tiered_col_widths_df(widths, widths, tier_widths)

  # truncate output that doesn't fit
  truncated <- anyNA(wrap$tier)
  split <- split(footer[wrap$id], wrap$tier)
  if (truncated && length(split) > 0) {
    split[[length(split)]] <- c(split[[length(split)]], cli::symbol$ellipsis)
  }
  split <- imap(split, function(x, y) c("#", if (y == 1) cli::symbol$ellipsis else " ", x))

  map_chr(split, paste, collapse = " ")
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
