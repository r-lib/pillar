# Adapted from squeeze_impl()
ctl_colonnade <- function(x, has_row_id = TRUE, width = NULL, controller = new_tbl()) {
  "!!!!DEBUG ctl_colonnade()"

  x <- new_data_frame(x, names = names2(x))
  width <- get_width_print(width)

  n <- nrow(x)
  nc <- ncol(x)

  if (n == 0 || nc == 0) {
    return(new_colonnade_body(list(), extra_cols = x))
  }

  # Reserve space for rowid column in each tier
  if (!is_false(has_row_id)) {
    rowid <- rif_shaft(n)
    rowid_width <- get_cell_widths(rowid)
  } else {
    rowid <- NULL
    rowid_width <- 0L
  }

  tier_widths <- get_tier_widths(width, nc, rowid_width + 1L)
  pillars <- new_packed_pillars(x, controller, tier_widths, title = NULL)

  if (length(pillars) == 0) {
    return(new_colonnade_body(list(), extra_cols = x))
  }

  compound_pillar <- combine_pillars(pillars)
  col_widths <- colonnade_get_width_2(compound_pillar, tier_widths)

  if (!is.null(rowid)) {
    rowid_pillar <- rowidformat2(rowid, names(pillars[[1]]), has_star = identical(has_row_id, "*"))

    col_widths_rowid <- as_tbl(data_frame(
      tier = unique(col_widths$tier),
      id = 0L,
      width = rowid_width,
      pillar = list(rowid_pillar)
    ))

    col_widths <- vec_rbind(col_widths_rowid, col_widths)
  }

  col_widths$formatted <- map2(
    col_widths$pillar, col_widths$width,
    pillar_format_parts_2
  )

  tiers <- split(seq_len(nrow(col_widths)), col_widths$tier)

  flat_tiers <- map(tiers, function(tier) {
    formatted <- col_widths$formatted[tier]
    map(formatted, function(.x) .x$aligned[[1]])
  })

  out <- map(flat_tiers, format_colonnade_tier_2)

  extra_cols <- as.list(x)[seq2(length(pillars) + 1L, nc)]
  new_colonnade_body(out, extra_cols = extra_cols)
}

format_colonnade_tier_2 <- function(x) {
  "!!!!!DEBUG format_colonnade_tier_2(`v(x)`)"

  if (length(x) == 0) {
    return(character())
  }

  exec(paste, !!!x)
}

new_colonnade_body <- function(x, extra_cols) {
  "!!!!!DEBUG new_colonnade_body()"

  body <- new_vertical(as.character(unlist(x)))
  extra_cols <- as.list(extra_cols)

  list(body = body, extra_cols = extra_cols)
}

#' @noRd
colonnade_get_width_2 <- function(compound_pillar, tier_widths) {
  "!!!!!DEBUG colonnade_get_width_2(`v(tier_widths)`)"

  #' @details
  #' Each pillar indiacates its maximum and minimum width.
  min_max_widths <- colonnade_get_min_max_widths(compound_pillar)
  #'
  #' Pillars may be distributed over multiple tiers according to their width
  #' if `width > getOption("width")`.
  #' In this case each tier is at most `getOption("width")` characters wide.
  #' The very first step of formatting is to determine
  #' how many tiers are shown at most,
  #' and the width of each tier.
  col_widths_df <- colonnade_compute_tiered_col_widths_2(compound_pillar, min_max_widths, tier_widths)

  #' Remaining space is then distributed proportionally to pillars that do not
  #' use their desired width.
  colonnade_distribute_space_df(col_widths_df, tier_widths)
}

colonnade_get_min_max_widths <- function(compound_pillar) {
  max_width <- exec(pmax, !!!unname(map(compound_pillar, get_cell_widths)))
  min_width <- exec(pmax, !!!unname(map(compound_pillar, get_cell_min_widths)))

  new_tbl(list(min_width = min_width, max_width = max_width))
}

colonnade_compute_tiered_col_widths_2 <- function(compound_pillar, min_max_widths, tier_widths) {
  "!!!!!DEBUG colonnade_compute_tiered_col_widths_2(`v(tier_widths)`)"

  max_tier_width <- max(tier_widths)

  # Safety:
  max_widths <- pmin(min_max_widths$max_width, max_tier_width)
  min_widths <- pmin(min_max_widths$min_width, max_tier_width)

  ret <- colonnade_compute_tiered_col_widths_df(max_widths, min_widths, tier_widths)

  pillars <- map(ret$id, get_sub_pillar, x = compound_pillar)
  ret$pillar <- pillars
  new_tbl(ret)
}
