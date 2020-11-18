ctl_colonnade <- function(x, controller, has_row_id, width) {
  if (nrow(x) == 0) {
    return(NULL)
  }

  # Reserve space for rowid column in each tier
  if (!is_false(has_row_id)) {
    rowid_width <- trunc(log10(nrow(x)) + 1)
    width <- width - rowid_width - 1
    width <- width[width > 0]
  }

  pillars <- new_pillars(x, controller, width, title = NULL)
  pillars
}


new_data_frame_pillar <- function(x, controller, width, title) {
  pillars <- new_pillars(x, controller, width, title)
  combine_pillars(pillars)
}

new_pillars <- function(x, controller, width, title) {
  max_n_pillars <- sum(width %/% 2)
  pillars <- vector("list", max_n_pillars)

  for (i in seq_along(x)) {
    # Call ctl_new_compound_pillar() only for objects that can fit
    pillar <- ctl_new_compound_pillar(
      controller, x[[i]], width,
      title = c(title, names(x)[[i]])
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
    widths <- map_int(out, get_cell_widths)
    min_widths <- map_int(out, get_cell_min_widths)

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
