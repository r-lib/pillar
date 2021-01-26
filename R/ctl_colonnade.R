# Adapted from squeeze_impl()
ctl_colonnade <- function(x, has_row_id = TRUE, width = NULL, controller = new_tbl()) {
  x <- vctrs::new_data_frame(x, names = names2(x))
  width <- get_width_print(width)

  # FIXME: width is a vector, see get_tier_width
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

  col_widths_show <- split(col_widths, factor(col_widths$tier != 0, levels = c(FALSE, TRUE)))
  col_widths_shown <- col_widths_show[["TRUE"]]
  col_widths_tiers <- split(col_widths_shown, col_widths_shown$tier)

  col_widths_tiers <- map(col_widths_tiers, function(tier) {
    tier$tier <- NULL
    tier
  })

  if (!is.null(rowid)) {
    rowid_pillar <- rowidformat2(rowid, names(pillars[[1]]), has_star = identical(has_row_id, "*"))

    col_widths_tiers <- map(col_widths_tiers, function(tier) {
      tier <- vctrs::vec_rbind(
        as_tbl(vctrs::data_frame(id = 0L, width = rowid_width, pillar = list(rowid_pillar))),
        tier
      )
      tier
    })
  }

  out <- map(col_widths_tiers, function(tier) {
    map2(tier$pillar, tier$width, pillar_format_parts_2)
  })

  extra_cols <- x[seq2(nrow(col_widths_shown) + 1L, nc)]
  new_colonnade_body(out, extra_cols = extra_cols)
}

new_colonnade_body <- function(x, extra_cols) {
  formatted_tiers <- map(x, format_colonnade_tier)
  formatted <- new_vertical(as.character(unlist(formatted_tiers)))

  structure(
    new_vertical(formatted),
    extra_cols = extra_cols
  )
}

#' @noRd
colonnade_get_width_2 <- function(compound_pillar, tier_widths) {
  #' @details
  #' Pillars may be distributed over multiple tiers if
  #' `width > getOption("width")`. In this case each tier is at most
  #' `getOption("width")` characters wide. The very first step of formatting
  #' is to determine how many tiers are shown at most, and the width of each
  #' tier.
  tier_widths

  col_widths_df <- colonnade_compute_tiered_col_widths_2(compound_pillar, tier_widths)

  #' Remaining space is then distributed proportionally to pillars that do not
  #' use their desired width.
  colonnade_distribute_space_df(col_widths_df, tier_widths)
}

colonnade_compute_tiered_col_widths_2 <- function(compound_pillar, tier_widths) {
  max_tier_width <- max(tier_widths)

  max_widths <- exec(pmax, !!!unname(map(compound_pillar, get_cell_widths)))
  max_widths <- pmin(max_widths, max_tier_width)

  min_widths <- exec(pmax, !!!unname(map(compound_pillar, get_cell_min_widths)))
  min_widths <- pmin(min_widths, max_tier_width)

  id <- seq_along(max_widths)

  col_df <- data.frame(id, max_widths, min_widths, row.names = NULL)

  ret <- colonnade_compute_tiered_col_widths_df(col_df, tier_widths, data.frame(tier = integer()))

  pillars <- map(ret$id, get_sub_pillar, x = compound_pillar)
  ret$pillar <- pillars
  new_tbl(ret)
}
