new_data_frame_pillar <- function(x, controller, width, title) {
  pillars <- new_data_frame_pillar_list(x, controller, width, title)
  combine_pillars(pillars, extra = names(x)[-seq_along(pillars)])
}

new_data_frame_pillar_list <- function(x, controller, width, title) {
  "!!!!!DEBUG new_data_frame_pillar_list(`v(width)`, `v(title)`)"

  if (ncol(x) == 0) {
    return(compact(list(pillar_from_shaft(
      new_pillar_title(prepare_title(title)),
      new_pillar_type(x),
      new_empty_shaft(nrow(x)),
      width
    ))))
  }

  max_n_pillars <- sum(width %/% 2)
  pillars <- vector("list", max_n_pillars)

  ticked_names <- tick_if_needed(names(x))

  for (i in seq_along(x)) {
    "!!!!!DEBUG i = `i`, width = `width`"

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

    if (is.null(width)) {
      return(list(pillar))
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
      new_empty_shaft(nrow(x)),
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

    if (is.null(width)) {
      return(pillar)
    }

    # Compute remaining width
    width <- deduct_width(width, pillar_get_min_widths(pillar))
    if (is.null(width)) {
      # NULL return: current pillar doesn't fit
      break
    }

    pillars[[i]] <- pillar
  }

  compact_pillars <- compact(pillars)
  if (length(compact_pillars) < ncol(x)) {
    extra <- seq2(length(compact_pillars) + 1, ncol(x))
  } else {
    extra <- NULL
  }
  combine_pillars(compact_pillars, extra = extra)
}

new_array_pillar <- function(x, controller, width, title) {
  first_slice <- head(as.vector(x), vec_size(x))

  body <- pillar_shaft(first_slice)

  pillar_from_shaft(
    new_pillar_title(title),
    new_pillar_type(x),
    new_continuation_shaft(body),
    width
  )
}

combine_pillars <- function(pillars, extra = NULL) {
  "!!!!!DEBUG combine_pillars(`v(length(pillars))`)"

  if (length(pillars) == 0) {
    return(NULL)
  }

  components <- names(pillars[[1]])

  t_pillars <- map(set_names(components), function(.x) {
    out <- map(pillars, function(.y) .y[[.x]])
    widths <- map(out, get_cell_widths)
    min_widths <- map(out, get_cell_min_widths)

    new_pillar_component(
      unlist(out, recursive = FALSE),
      width = unlist(widths),
      min_width = unlist(min_widths)
    )
  })

  new_pillar(t_pillars, class = "compound_pillar", extra = extra)
}

# Can be rewritten with a repeat loop
deduct_width <- function(width, consumed_widths) {
  "!!!!!DEBUG deduct_width(`v(width)`, `v(consumed_widths)`)"

  if (length(consumed_widths) == 0) {
    # All sub-pillars distributed
    width
  } else if (length(width) == 0) {
    # Doesn't fit
    NULL
  } else if (width[[1]] >= consumed_widths[[1]]) {
    # Fits first tier
    deduct_width(
      c(max(width[[1]] - consumed_widths[[1]] - 1L, 0), width[-1]),
      consumed_widths[-1]
    )
  } else {
    # Doesn't fit first tier: try next tier
    deduct_width(width[-1], consumed_widths)
  }
}
