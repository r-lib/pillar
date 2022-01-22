new_data_frame_pillar_list <- function(x, controller, width, title, first_pillar = NULL) {
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

    if (i == 1 && !is.null(first_pillar)) {
      pillar <- first_pillar
    } else {
      # Call ctl_new_pillar_list(), return only the first sub-pillar
      # thanks to width = NULL
      new_pillars <- ctl_new_pillar_list(
        controller, x[[i]],
        width = NULL,
        title = c(title, ticked_names[[i]])
      )

      # Safety check:
      if (length(new_pillars) == 0) {
        # NULL return: doesn't fit
        break
      }

      pillar <- new_pillars[[1]]
    }

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

    if (!is.null(title)) {
      title[] <- ""
    }
  }

  pillars <- compact(pillars)

  structure(pillars, extra = names(x)[seq2(length(pillars) + 1, length(x))])
}

new_matrix_pillar_list <- function(x, controller, width, title, first_pillar = NULL) {
  if (ncol(x) == 0) {
    return(list(pillar_from_shaft(
      new_pillar_title(prepare_title(title)),
      new_pillar_type(x),
      new_empty_shaft(nrow(x)),
      width
    )))
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
    if (i == 1 && !is.null(first_pillar)) {
      pillar <- first_pillar
    } else {
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
        controller, x[, i],
        width = NULL,
        title = prepare_title(sub_title)
      )
    }

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

  pillars <- compact(pillars)
  structure(pillars, extra = seq2(length(pillars) + 1, ncol(x)))
}

new_array_pillar_list <- function(x, controller, width, title, first_pillar = NULL) {
  if (!is.null(first_pillar)) {
    return(list(first_pillar))
  }

  first_slice <- head(as.vector(x), vec_size(x))

  body <- pillar_shaft(first_slice)

  list(pillar_from_shaft(
    new_pillar_title(title),
    new_pillar_type(x),
    new_continuation_shaft(body),
    width
  ))
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
