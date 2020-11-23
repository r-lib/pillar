new_data_frame_pillar <- function(x, controller, width, title) {
  pillars <- new_packed_pillars(x, controller, width, title)
  combine_pillars(pillars)
}

new_packed_pillars <- function(x, controller, width, title) {
  if (length(x) == 0) {
    return(compact(list(pillar_from_shaft(
      new_pillar_title(prepare_title(title)),
      new_pillar_type(x),
      new_empty_shaft(),
      width
    ))))
  }

  max_n_pillars <- sum(width %/% 2)
  pillars <- vector("list", max_n_pillars)

  ticked_names <- tick_if_needed(names(x))

  for (i in seq_along(x)) {
    # FIXME
    # sub_title <- c(title, ticked_names[[i]])
    sub_title <- ticked_names[[i]]
    if (!is.null(title)) {
      if (i == 1) {
        title[[length(title)]] <- paste0(title[[length(title)]], "$")
      } else {
        title[[length(title)]] <- "$"
      }
      sub_title <- c(title, sub_title)
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

new_matrix_pillar <- function(x, controller, width, title) {
  if (ncol(x) == 0) {
    return(pillar_from_shaft(
      new_pillar_title(prepare_title(title)),
      new_pillar_type(x),
      new_empty_shaft(),
      width
    ))
  }

  max_n_pillars <- sum(width %/% 2)
  pillars <- vector("list", max_n_pillars)

  idx <- colnames(x)
  if (is.null(idx)) {
    idx <- seq_len(ncol(x))
  } else {
    idx <- encodeString(idx, quote = '"')
  }

  ticked_names <- paste0("[,", idx, "]")

  for (i in seq_along(ticked_names)) {
    # FIXME
    # sub_title <- c(title, ticked_names[[i]])
    sub_title <- ticked_names[[i]]
    if (!is.null(title)) {
      if (i > 1) {
        title[[length(title)]] <- ""
      }
      sub_title <- c(title, sub_title)
    }

    # Call ctl_new_pillar() only for objects that can fit
    pillar <- ctl_new_pillar(
      controller, x[, i], width,
      title = prepare_title(sub_title)
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

  combine_pillars(compact(pillars))
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
      width = widths,
      min_width = min_widths
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
