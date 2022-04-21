#' Customize the appearance of compound pillars in your tibble subclass
#'
#' @description
#' `r lifecycle::badge("experimental")`
#'
#' Gain full control over the appearance of the pillars of your tibble subclass
#' in its body.
#' This method is intended for implementers of subclasses of the `"tbl"` class.
#' Users will rarely need them, and we also expect the default implementation
#' to be sufficient for the vast majority of cases.
#'
#' @details
#' `ctl_new_pillar_list()` is called to construct a list of pillars.
#' If `x` is a regular (one-dimensional) vector, the list contains one pillar
#' constructed by [ctl_new_pillar()].
#' This method also works for compound columns: columns that are data frames,
#' matrices or arrays, with the following behavior:
#'
#' - If `width` is `NULL`, the method always returns a list of length one
#'   containing one pillar object that represents the first sub-column in this
#'   compound column.
#' - Otherwise, the returned list contains one pillar object for all sub-columns
#'   that can be fit in the available horizontal space.
#'   These pillar objects are obtained by calling `ctl_new_pillar_list()`
#'   with `width = NULL` on each sub-column until the available width is
#'   exhausted.
#'
#' This method is called to initiate the construction of all pillars
#' in the tibble to be printed.
#' To ensure that all packed columns that fit the available space are printed,
#' `ctl_new_pillar_list()` may be called twice on the same input:
#' once with `width = NULL`, and
#' once with `width` corresponding to the then known available space
#' and with `first_pillar` set to the pillar object constructed in the
#' first call.
#'
#' @inheritParams ctl_new_pillar
#' @param x A vector, can also be a data frame, matrix, or array.
#' @param width The available width, can be a vector for multiple tiers.
#'   If `NULL`, only the first pillar is instantiated.
#' @param first_pillar Can be passed to this method if the first pillar
#'   for a compound pillar (or the pillar itself for a simple pillar)
#'   has been constructed already.
#' @export
#' @examplesIf rlang::is_installed("palmerpenguins") && requireNamespace("tibble")
#' # Simple column
#' ctl_new_pillar_list(
#'   tibble::tibble(),
#'   palmerpenguins::penguins$weight[1:3],
#'   width = 10
#' )
#'
#' # Packed data frame: unknown width
#' ctl_new_pillar_list(
#'   tibble::tibble(),
#'   palmerpenguins::penguins[1:3, ],
#'   width = NULL
#' )
#'
#' # Packed data frame: known width
#' ctl_new_pillar_list(
#'   tibble::tibble(),
#'   palmerpenguins::penguins,
#'   width = 60
#' )
#'
#' # Deeply packed data frame with known width:
#' # showing only the first sub-column even if the width is sufficient
#' ctl_new_pillar_list(
#'   tibble::tibble(),
#'   tibble::tibble(x = tibble::tibble(b = 1, c = 2), y = 3),
#'   width = 60
#' )
#'
#' # Packed matrix: unknown width
#' ctl_new_pillar_list(tibble::tibble(), matrix(1:6, ncol = 2), width = NULL)
#'
#' # Packed matrix: known width
#' ctl_new_pillar_list(tibble::tibble(), matrix(1:6, ncol = 2), width = 60)
#'
#' # Packed array
#' ctl_new_pillar_list(tibble::tibble(), Titanic, width = 60)
ctl_new_pillar_list <- function(controller, x, width, ..., title = NULL, first_pillar = NULL) {
  "!!!!DEBUG ctl_new_pillar_list(`v(width)`, `v(title)`)"

  check_dots_empty()

  UseMethod("ctl_new_pillar_list")
}

#' @export
ctl_new_pillar_list.tbl <- function(controller, x, width, ..., title = NULL, first_pillar = NULL) {
  "!!!!DEBUG ctl_new_pillar_list.tbl(`v(width)`, `v(title)`)"

  if (is.data.frame(x)) {
    new_data_frame_pillar_list(x, controller, width, title = title, first_pillar = first_pillar)
  } else if (is.matrix(x)) {
    new_matrix_pillar_list(x, controller, width, title = title, first_pillar = first_pillar)
  } else if (is.array(x) && length(dim(x)) > 1) {
    new_array_pillar_list(x, controller, width, title = title, first_pillar = first_pillar)
  } else {
    if (is.null(first_pillar)) {
      first_pillar <- ctl_new_pillar(controller, x, width, ..., title = prepare_title(title))
    }
    new_single_pillar_list(first_pillar, width)
  }
}

new_data_frame_pillar_list <- function(x, controller, width, title, first_pillar = NULL) {
  "!!!!!DEBUG new_data_frame_pillar_list(`v(width)`, `v(title)`)"

  if (ncol(x) == 0) {
    pillar <- pillar_from_shaft(
      new_pillar_title(prepare_title(title)),
      new_pillar_type(x),
      new_empty_shaft(nrow(x)),
      width
    )
    return(new_single_pillar_list(pillar, width))
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
    new_width <- deduct_width(width, pillar_get_min_width(pillar))
    if (is.null(new_width)) {
      # NULL return: current pillar doesn't fit
      break
    }

    pillars[[i]] <- pillar
    width <- new_width

    if (!is.null(title)) {
      title[] <- ""
    }
  }

  pillars <- compact(pillars)

  new_pillar_list(
    pillars,
    extra = names(x)[seq2(length(pillars) + 1, length(x))],
    remaining_width = width
  )
}

new_matrix_pillar_list <- function(x, controller, width, title, first_pillar = NULL) {
  if (ncol(x) == 0) {
    pillar <- pillar_from_shaft(
      new_pillar_title(prepare_title(title)),
      new_pillar_type(x),
      new_empty_shaft(nrow(x)),
      width
    )
    return(new_single_pillar_list(pillar, width))
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
    new_width <- deduct_width(width, pillar_get_min_width(pillar))
    if (is.null(new_width)) {
      # NULL return: current pillar doesn't fit
      break
    }

    pillars[[i]] <- pillar
    width <- new_width
  }

  pillars <- compact(pillars)
  new_pillar_list(
    pillars,
    extra = seq2(length(pillars) + 1, ncol(x)),
    remaining_width = width
  )
}

new_array_pillar_list <- function(x, controller, width, title, first_pillar = NULL) {
  if (!is.null(first_pillar)) {
    return(list(first_pillar))
  }

  first_slice <- head(as.vector(x), vec_size(x))

  body <- pillar_shaft(first_slice)

  pillar <- pillar_from_shaft(
    new_pillar_title(title),
    new_pillar_type(x),
    new_continuation_shaft(body),
    width
  )
  new_single_pillar_list(pillar, width)
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

new_single_pillar_list <- function(pillar, width) {
  pillar_width <- pillar_get_min_width(pillar)
  if (is.null(width)) {
    new_width <- NULL
  } else {
    new_width <- deduct_width(width, pillar_width)
    stopifnot(!is.null(new_width))
  }
  new_pillar_list(
    list(pillar),
    extra = NULL,
    remaining_width = new_width,
    simple = TRUE
  )
}

new_pillar_list <- function(pillar_list, extra, remaining_width, simple = FALSE) {
  structure(
    pillar_list,
    extra = extra,
    remaining_width = remaining_width,
    simple = simple
  )
}

prepare_title <- function(title) {
  n_title <- length(title)
  if (n_title == 0) {
    title
  } else if (grepl("^[[]", title[[n_title]])) {
    paste0(paste(title[-n_title], collapse = "$"), title[[n_title]])
  } else {
    paste(title, collapse = "$")
  }
}
