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

  tiers <- split(seq_len(nrow(col_widths)), col_widths$tier)

  flat_tiers <- map(tiers, function(tier) {
    pillars <- col_widths$pillar[tier]
    widths <- col_widths$width[tier]
    max_widths <- col_widths$max_widths[tier]
    pillar_format_tier(pillars, widths, max_widths)
  })

  if (!is.null(rowid)) {
    rowid_pillar <- rowidformat2(rowid, names(pillars[[1]]), has_star = identical(has_row_id, "*"))
    rowid_formatted <- list(pillar_format_parts_2(rowid_pillar, rowid_width)$aligned[[1]])
    flat_tiers <- map(flat_tiers, function(.x) c(rowid_formatted, .x))
  }

  out <- map(flat_tiers, format_colonnade_tier_2)

  extra_cols <- as.list(x)[seq2(length(pillars) + 1L, nc)]
  new_colonnade_body(out, extra_cols = extra_cols)
}

pillar_format_tier <- function(pillars, widths, max_widths) {
  # First pass: formatting with the allocated width
  formatted <- map2(pillars, widths, pillar_format_parts_2)

  extents <- map_int(formatted, `[[`, "max_extent")
  extra <- sum(widths - extents)

  # Second pass: trying to use the remaining width, starting at the left
  if (extra > 0) {
    for (col_idx in which(widths < max_widths)) {
      new_formatted <- pillar_format_parts_2(pillars[[col_idx]], min(widths[[col_idx]] + extra, max_widths[[col_idx]]))
      delta <- new_formatted$max_extent - formatted[[col_idx]]$max_extent
      if (delta > 0) {
        formatted[[col_idx]] <- new_formatted
        extra <- extra - delta
        if (extra <= 0) {
          break
        }
      }
      col_idx <- col_idx + 1L
    }
  }

  map(formatted, function(.x) {
    .x$aligned[[1]]
  })
}

# Reference: https://www.w3.org/International/questions/qa-bidi-unicode-controls
fsi <- function(...) paste0("\u2068", ..., "\u2069")
lro <- function(...) paste0("\u202d", ..., "\u202c")

format_colonnade_tier_2 <- function(x) {
  "!!!!!DEBUG format_colonnade_tier_2(`v(x)`)"

  if (length(x) == 0) {
    return(character())
  }

  x <- map(x, fsi)
  out <- exec(paste, !!!x)
  lro(out)
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
  col_widths_df <- colonnade_compute_tiered_col_widths_df(min_max_widths$max_width, min_max_widths$min_width, tier_widths)
  # col_widths_df <- data.frame(id = numeric(), widths = numeric(), tier = numeric())

  #' Remaining space is then distributed proportionally to pillars that do not
  #' use their desired width.
  out <- colonnade_distribute_space_df(col_widths_df, tier_widths)
  # out <- data.frame(id = numeric(), widths = numeric(), tier = numeric())

  # FIXME: Defer split of compound pillars
  out$pillar <- map(out$id, get_sub_pillar, x = compound_pillar)

  new_tbl(out)
}

colonnade_get_min_max_widths <- function(compound_pillar) {
  max_width <- exec(pmax, !!!unname(map(compound_pillar, get_cell_widths)))
  min_width <- exec(pmax, !!!unname(map(compound_pillar, get_cell_min_widths)))

  new_tbl(list(min_width = min_width, max_width = max_width))
}
