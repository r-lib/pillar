#' Squeeze a colonnade to a fixed width
#'
#' Defunct.
#'
#' @keywords internal
#' @export
squeeze <- function(x, width = NULL, ...) {
  deprecate_stop("1.6.4", "pillar::squeeze()")
}

#' Retrieve information about columns that didn't fit the available width
#'
#' Defunct.
#'
#' @keywords internal
#' @export
extra_cols <- function(x, ...) {
  deprecate_stop("1.6.4", "pillar::extra_cols()")
}

get_tier_widths <- function(width, ncol, rowid_width, tier_width = getOption("width")) {
  if (!is.finite(width)) {
    pos <- seq(0, length.out = ncol + 1L, by = tier_width)
  } else if (width < tier_width) {
    pos <- c(0L, width)
  } else {
    pos <- seq(0, width + tier_width - 1, by = tier_width)
  }

  widths <- diff(pos) - rowid_width
  widths[widths >= 1L]
}

#' Distributing pillars over multiple tiers
#'
#' Documentation generated from inline code comments.
#'
#' @name colonnade
#' @keywords internal
#' @usage NULL
#' @aliases NULL
colonnade_compute_tiered_col_widths_df <- function(max_widths, min_widths, tier_widths) {
  "!!!!!DEBUG colonnade_compute_tiered_col_widths_df(`v(tier_widths)`)"

  max_tier_width <- max(tier_widths)

  # Safety:
  max_widths <- pmin(max_widths, max_tier_width)
  min_widths <- pmin(min_widths, max_tier_width)

  id <- seq_along(max_widths)
  col_df <- data.frame(id, max_widths, min_widths, row.names = NULL)

  #' @details
  #' For fitting pillars in one or more tiers, first a check is made
  #' if all pillars fit with their maximum width (e.g.,
  #' `option(tibble.width = Inf)` or narrow colonnade).
  max_fit <- distribute_pillars(col_df$max_widths, tier_widths)
  #' If yes, this is the resulting fit, no more work needs to be done.
  if (all_pillars_fit(max_fit)) {
    return(max_fit)
  }

  #' Otherwise, if the maximum width is too wide, the same test
  #' is carried out with the minimum width.
  #' If this is still too wide, this is the resulting fit.
  min_fit <- distribute_pillars(col_df$min_widths, tier_widths)
  if (!all_pillars_fit(min_fit)) {
    return(min_fit)
  }

  #' Otherwise, some tiers from the start
  #' will contain pillars with their maximum width,
  #' one tier will contain some pillars with maximum and some with minimum width,
  #' and the remaining tiers contain pillars with their minimum width only.
  #'
  #' For this, we compute a "reverse minimum assignment".
  min_fit_rev <- distribute_pillars_rev(col_df$min_widths, tier_widths)

  combined_fit <- combine_pillar_distributions(max_fit, min_fit_rev, tier_widths)

  combined_fit$max_widths <- col_df$max_widths
  combined_fit
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
combine_pillar_distributions <- function(max_fit, min_fit_rev, tier_widths) {
  #' @details
  #' We determine the cut point where minimum and maximum assignment
  #' agree.
  #' The following strategy is applied:
  #'
  #' 1. First, we determine the tier in which the cut point lies.
  #'    This is the first instance of a column that ends up in the same tier
  #'    for both minimum and maximum assignment.
  cut_point_tier <- max_fit$tier[min(which(max_fit$tier == min_fit_rev$tier))]
  #' 2. A set of candidate cut points is derived.
  cut_point_candidates <- which(max_fit$tier == cut_point_tier)
  #' 3. We consult the column offsets. The last column where the minimum assignment
  #'    has a greater or equal offset than the maximum assignment is our latest
  #'    cut point.
  cut_point_candidate_idx <- which(max_fit$offset_after[cut_point_candidates] <= min_fit_rev$offset_after[cut_point_candidates])
  if (length(cut_point_candidate_idx) > 0) {
    cut_point <- cut_point_candidates[max(cut_point_candidate_idx)]
  } else {
    #'    If no such column exists, the cut point is the column just before our
    #'    first candidate.
    cut_point <- cut_point_candidates[[1]] - 1L
  }

  #' 4. Finally, we combine maximum and minimum reverse fits at the cut point.
  #'    We don't need to redistribute anything here.
  max_fit_cut <- max_fit[seq_len(cut_point), ]
  min_fit_cut <- min_fit_rev[seq2(cut_point + 1L, nrow(min_fit_rev)), ]
  rbind(max_fit_cut, min_fit_cut)
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
distribute_pillars <- function(widths, tier_widths) {
  tier <- rep(NA_integer_, length(widths))
  offset_after <- rep(NA_integer_, length(widths))
  current_tier <- 1L
  current_x <- 0L

  #' @details
  #' Fitting pillars into tiers is very similar to a word-wrapping algorithm.
  for (i in seq_along(widths)) {
    #' In a loop, new tiers are opened if the current tier overflows.
    if (current_x + widths[[i]] > tier_widths[[current_tier]]) {
      #' If a column is too wide to fit a single tier, it will never be
      #' displayed, and the colonnade will be truncated there.
      #' This case should never occur with reasonable display widths larger than
      #' 30 characters.
      if (widths[[i]] > tier_widths[[current_tier]]) break

      current_tier <- current_tier + 1L
      current_x <- 0L
      #' Truncation also happens if all available tiers are filled.
      if (current_tier > length(tier_widths)) break
    }

    tier[[i]] <- current_tier
    current_x <- current_x + widths[[i]]
    offset_after[[i]] <- current_x
    current_x <- current_x + 1L
  }

  data_frame(id = seq_along(widths), tier = tier, width = widths, offset_after = offset_after)
}

distribute_pillars_rev <- function(widths, tier_widths) {
  ret <- distribute_pillars(rev(widths), rev(tier_widths))
  ret[2:4] <- ret[rev(seq_along(widths)), 2:4]
  tier <- length(tier_widths) + 1L - ret$tier
  ret$tier <- tier

  splits <- unname(split(seq_along(tier), tier))
  tier_widths <- tier_widths[seq_along(splits)]

  new_offset_after <- unlist(map2(splits, tier_widths, function(.x, .y) {
    new_offset_after <- cumsum(ret$width[.x] + 1)
    new_offset_after - max(new_offset_after) + .y
  }))

  ret$offset_after <- c(new_offset_after, rep(NA_integer_, sum(is.na(tier))))

  ret
}

all_pillars_fit <- function(tier_df) {
  rows <- nrow(tier_df)
  rows == 0 || !safe_any_na(tier_df$tier[[nrow(tier_df)]])
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
colonnade_distribute_space_df <- function(col_widths_df, tier_widths) {
  "!!!!!DEBUG colonnade_distribute_space_df(`v(tier_widths)`)"

  col_widths_split <- split(col_widths_df, col_widths_df$tier)
  tier_widths <- tier_widths[seq_along(col_widths_split)]
  col_widths_apply <- map2(col_widths_split, tier_widths, function(x, width) {
    x$width <- x$width + colonnade_distribute_space(x$width, x$max_widths, width)
    x
  })

  bind_rows(unname(col_widths_apply))
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
colonnade_distribute_space <- function(col_widths, max_widths, width) {
  if (any(is.na(col_widths))) {
    return(col_widths)
  }

  missing_space <- max_widths - col_widths
  # Shortcut to avoid division by zero
  if (all(missing_space == 0L)) {
    return(rep_along(col_widths, 0L))
  }

  #' @details
  #' The remaining space is distributed from left to right.
  #' Each column gains space proportional to the fraction of missing and
  #' remaining space,
  occupied_width <- sum(col_widths + 1L) - 1L
  remaining_width <- max(min(width - occupied_width, sum(missing_space)), 0L)
  added_space_prop <- missing_space / sum(missing_space) * remaining_width

  #' rounded down.
  added_space_ceil <- ceiling(added_space_prop)
  added_space_floor <- floor(added_space_prop)
  added_space_diff <- added_space_ceil - added_space_floor
  added_space <- ifelse(
    #' Any space remaining after rounding is distributed from left to right,
    #' one space per column.
    sum(added_space_floor) + cumsum(added_space_diff) <= remaining_width,
    added_space_ceil,
    added_space_floor
  )

  added_space
}
