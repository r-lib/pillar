# Adapted from squeeze_impl()
ctl_colonnade <- function(x, controller, has_row_id, width) {
  # FIXME: width is a vector, see get_tier_width
  n <- nrow(x)

  if (n == 0 || ncol(x) == 0) {
    return(new_colonnade_sqeezed(list(), colonnade = x, extra_cols = seq_along(x)))
  }

  # Reserve space for rowid column in each tier
  if (!is_false(has_row_id)) {
    n <- nrow(x)
    rowid <- rowidformat2(n, has_star = identical(has_row_id, "*"))
    rowid_width <- get_cell_widths(rowid$data)
    width <- width - rowid_width - 1
    width <- width[width > 0]
  } else {
    rowid <- NULL
  }

  pillars <- new_pillars(x, controller, width, title = NULL)

  compound_pillar <- combine_pillars(pillars)
  col_widths <- colonnade_get_width_2(compound_pillar, width)

  col_widths_show <- split(col_widths, factor(col_widths$tier != 0, levels = c(FALSE, TRUE)))
  col_widths_shown <- col_widths_show[["TRUE"]]
  col_widths_tiers <- split(col_widths_shown, col_widths_shown$tier)

  col_widths_tiers <- map(col_widths_tiers, function(tier) {
    tier$tier <- NULL
    tier
  })

  # FIXME: rowid

  out <- map(col_widths_tiers, function(tier) {
    map2(tier$pillar, tier$width, pillar_format_parts_2)
  })

  extra_cols <- seq2(nrow(col_widths_shown) + 1L, length(pillars))
  new_colonnade_sqeezed(out, colonnade = x, extra_cols = extra_cols)
}

new_data_frame_pillar <- function(x, controller, width, title) {
  pillars <- new_pillars(x, controller, width, title)
  combine_pillars(pillars)
}

new_pillars <- function(x, controller, width, title) {
  max_n_pillars <- sum(width %/% 2)
  pillars <- vector("list", max_n_pillars)

  ticked_names <- tick_if_needed(names(x))

  for (i in seq_along(x)) {
    # FIXME
    # sub_title <- c(title, ticked_names[[i]])
    sub_title <- ticked_names[[i]]
    if (!is.null(title)) {
      if (i == 1) {
        sub_title <- paste0(tick_if_needed(title), "$", sub_title)
      } else {
        sub_title <- paste0("$", sub_title)
      }
    }

    # Call ctl_new_compound_pillar() only for objects that can fit
    pillar <- ctl_new_compound_pillar(
      controller, x[[i]], width,
      title = sub_title
    )
    if (is.null(pillar)) {
      # NULL return: doesn't fit
      break
    }

    # Compute remaining width
    width <- deduct_width(width, pillar_get_min_widths(pillar))
    if (is.null(width)) {
      # NULL return: current pillar doesn't fit
      break
    }

    pillars[[i]] <- pillar
  }

  compact(pillars)
}

combine_pillars <- function(pillars) {
  if (length(pillars) == 0) {
    return(NULL)
  }

  components <- names(pillars[[1]])

  t_pillars <- map(set_names(components), function(.x) {
    out <- map(pillars, function(.y) .y[[.x]])
    widths <- unlist(map(out, get_cell_widths))
    min_widths <- unlist(map(out, get_cell_min_widths))

    new_pillar_box(
      unlist(out, recursive = FALSE),
      widths,
      min_widths
    )
  })

  new_pillar(t_pillars)
}

# Can be rewritten with a repeat loop
deduct_width <- function(width, consumed_widths) {
  if (length(consumed_widths) == 0) {
    # All sub-pillars distributed
    width
  } else if (length(width) == 0) {
    # Doesn't fit
    NULL
  } else if (width[[1]] >= consumed_widths[[1]]) {
    # Fits first tier
    deduct_width(
      c(width[[1]] - consumed_widths[[1]], width[-1]),
      consumed_widths[-1]
    )
  } else {
    # Doesn't fit first tier: try next tier
    deduct_width(width[-1], consumed_widths)
  }
}


#' @rdname colonnade2
#' @usage NULL
#' @aliases NULL
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
  min_widths <- exec(pmax, !!!unname(map(compound_pillar, get_cell_min_widths)))
  id <- seq_along(max_widths)

  col_df <- data.frame(id, max_widths, min_widths, row.names = NULL)

  ret <- colonnade_compute_tiered_col_widths_df(col_df, tier_widths, data.frame(tier = integer()))

  pillars <- map(ret$id, get_sub_pillar, x = compound_pillar)
  ret$pillar <- pillars
  new_tbl(ret)
}
