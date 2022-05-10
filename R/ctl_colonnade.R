# Adapted from squeeze_impl()
ctl_colonnade <- function(x, has_row_id = TRUE, width = NULL,
                          controller = new_tbl(), focus = NULL) {
  "!!!!DEBUG ctl_colonnade()"

  x <- new_data_frame(x, names = names2(x))
  width <- get_width_print(width)

  stopifnot(all(focus %in% names(x)))

  n <- nrow(x)
  nc <- ncol(x)

  if (n == 0 || nc == 0) {
    return(new_colonnade_body(list(), extra_cols = x, abbrev_cols = character(), abbrev_col_idxs = numeric()))
  }

  if (is_false(has_row_id)) {
    rowid <- NULL
  } else {
    rowid <- ctl_new_rowid_pillar(controller, x, width, title = NULL,
      type = if (isTRUE(has_row_id)) NULL else has_row_id)
  }

  # Reserve space for rowid column in each tier
  if (is.null(rowid)) {
    rowid_width <- 0L
  } else {
    rowid_width <- get_width(rowid)
  }

  has_star <- identical(has_row_id, "*")

  # FIXME: Support for Inf?
  tier_widths <- get_tier_widths(width, nc, rowid_width + 1L)

  formatted_tiers <- list()
  extra_cols <- list(a = 1)[0]
  abbrev_cols <- character()
  abbrev_col_idxs <- numeric()

  on_tier <- function(formatted) {
    # writeLines(formatted)
    formatted_tiers <<- c(formatted_tiers, list(formatted))
  }

  on_extra_cols <- function(my_extra_cols) {
    # print(extra_cols)

    new_extra_cols <- pmap(my_extra_cols, function(x, title, cols) {
      out <- as.list(x)[cols]
      if (is.null(title)) {
        return(out)
      }

      if (length(out) > 1) {
        title_empty <- rep_along(title, "")
        new_names <- paste0(paste0(title_empty, "$", collapse = ""), names(out))
        new_names[[1]] <- paste0(paste0(title, "$", collapse = ""), names(out)[[1]])
        names(out) <- new_names
      } else {
        # Also account for the case of packed matrices here
        names(out) <- prepare_title(c(title, names(out)))
      }
      out
    })

    # Called at most once:
    stopifnot(length(extra_cols) == 0)
    extra_cols <<- unlist(new_extra_cols, recursive = FALSE)
  }

  on_abbrev_col <- function(title) {
    abbrev_cols <<- c(abbrev_cols, title)
  }

  on_get_n_abbrev_cols <- function() {
    length(abbrev_cols)
  }

  cb <- new_emit_tiers_callbacks(
    controller, rowid, rowid_width, has_star,
    on_tier, on_extra_cols, on_abbrev_col, on_get_n_abbrev_cols
  )

  # Side effect: populate formatted_tiers, extra_cols, and abbrev_cols
  do_emit_tiers(x, tier_widths, length(focus), cb, focus)

  new_colonnade_body(formatted_tiers, extra_cols, abbrev_cols, abbrev_col_idxs)
}

new_emit_tiers_callbacks <- function(controller, rowid, rowid_width, has_star,
                                     on_tier, on_extra_cols, on_abbrev_col, on_get_n_abbrev_cols) {
  list(
    controller = controller,
    rowid = rowid,
    rowid_width = rowid_width,
    has_star = has_star,
    on_tier = on_tier,
    on_extra_cols = on_extra_cols,
    on_abbrev_col = on_abbrev_col,
    on_get_n_abbrev_cols = on_get_n_abbrev_cols
  )
}

do_emit_tiers <- function(x, tier_widths, n_focus, cb, focus) {
  formatted_list <- NULL
  extra_cols <- data_frame(x = list(), title = list(), cols = list())

  on_start_tier <- function() {
    # message("on_start_tier()")
    formatted_list <<- list()
  }

  on_end_tier <- function() {
    # message("on_end_tier()")
    if (length(formatted_list) > 0) {
      if (!is.null(cb$rowid)) {
        formatted_list <- c(list(pillar_format_parts_2(cb$rowid, cb$rowid_width)), formatted_list)
      }

      aligned <- map(formatted_list, `[[`, "aligned")

      tier <- format_colonnade_tier_2(aligned, bidi = get_pillar_option_bidi())

      cb$on_tier(tier)
    }
    formatted_list <<- NULL
  }

  on_pillar <- function(formatted) {
    # message("pillar()")
    # print(formatted)
    # print(pillar, width = width)
    formatted_list <<- c(formatted_list, list(formatted))
  }

  on_extra_cols <- function(x, title, cols) {
    # message("extra_cols()")
    # print(title)
    # print(cols)
    new_extra_cols <- data_frame(
      x = list(x), title = list(title), cols = list(cols)
    )
    # Add to the back, extra columns are emitted in order:
    extra_cols <<- vec_rbind(extra_cols, new_extra_cols)
  }

  cb_pillars <- new_emit_pillars_callbacks(
    cb$controller,
    on_start_tier = on_start_tier,
    on_end_tier = on_end_tier,
    on_pillar = on_pillar,
    on_top_level_pillar = function(...) {},
    on_extra_cols = on_extra_cols,
    on_abbrev_col = cb$on_abbrev_col,
    on_get_n_abbrev_cols = cb$on_get_n_abbrev_cols
  )

  # Side effect: populate `extra_cols`,
  # aggregate and forward calls to higher-level callbacks in `cb`
  emit_pillars(x, tier_widths, cb_pillars, focus)

  cb$on_extra_cols(extra_cols)
}

new_emit_pillars_callbacks <- function(controller,
                                       on_start_tier,
                                       on_end_tier,
                                       on_pillar,
                                       on_top_level_pillar,
                                       on_extra_cols,
                                       on_abbrev_col,
                                       on_get_n_abbrev_cols) {
  list(
    controller = controller,
    on_start_tier = on_start_tier,
    on_end_tier = on_end_tier,
    on_pillar = on_pillar,
    on_top_level_pillar = on_top_level_pillar,
    on_extra_cols = on_extra_cols,
    on_abbrev_col = on_abbrev_col,
    on_get_n_abbrev_cols = on_get_n_abbrev_cols
  )
}

emit_pillars <- function(x, tier_widths, cb, focus) {
  cb$on_start_tier()
  do_emit_focus_pillars(x, tier_widths, cb, focus)
  cb$on_end_tier()
}

do_emit_focus_pillars <- function(x, tier_widths, cb, focus) {
  stopifnot(is.data.frame(x))

  focus <- sort(match(focus, names(x)))
  # Shortcut
  if (length(focus) == 0) {
    do_emit_pillars(x, tier_widths, cb)
    return()
  }

  focus_formatted_list <- list()
  focus_top_level_end_idx <- integer()
  focus_extra_cols <- list()

  on_focus_pillar <- function(formatted) {
    # message("pillar()")
    # print(formatted)
    # print(pillar, width = width)
    focus_formatted_list <<- c(focus_formatted_list, list(formatted))
  }

  on_focus_top_level_pillar <- function() {
    focus_top_level_end_idx <<- c(focus_top_level_end_idx, length(focus_formatted_list))
  }

  on_focus_extra_cols <- function(x, title, cols) {
    # message("extra_cols()")
    # print(title)
    # print(cols)
    new_extra_cols <- data_frame(x = list(x), title = list(title), cols = list(cols))
    n_focus_formatted_list <- length(focus_formatted_list)

    if (n_focus_formatted_list <= length(focus_extra_cols)) {
      focus_extra_cols[[n_focus_formatted_list]] <<- vec_rbind(focus_extra_cols[[n_focus_formatted_list]], new_extra_cols)
    } else {
      focus_extra_cols[[n_focus_formatted_list]] <<- new_extra_cols
    }
  }

  cb_focus <- new_emit_pillars_callbacks(
    controller = cb$controller,
    on_start_tier = function(...) {},
    on_end_tier = function(...) {},
    on_pillar = on_focus_pillar,
    on_top_level_pillar = on_focus_top_level_pillar,
    on_extra_cols = on_focus_extra_cols,
    on_abbrev_col = cb$on_abbrev_col,
    on_get_n_abbrev_cols = cb$on_get_n_abbrev_cols
  )

  # Side effect: populates focus_formatted_list and focus_extra_cols
  do_emit_pillars(x[focus], tier_widths, cb_focus, is_focus = TRUE)

  # Can't show focus pillars that don't fit, but need to iterate
  # to emit extra columns in the correct order
  length(focus_extra_cols) <- length(focus)
  n_focus_shown <- length(focus_top_level_end_idx)

  before_start_idx <- vec_lag(focus + 1L, default = 1L)
  before_end_idx <- focus - 1L

  focus_top_level_start_idx <- vec_lag(focus_top_level_end_idx + 1L, default = 1L)

  # Apply similar strategy as in do_emit_pillars(), but ensure that
  # focus pillars are shown
  widths_focus <- map_int(focus_formatted_list, `[[`, "max_extent")
  rev <- distribute_pillars_rev(widths_focus, tier_widths)
  stopifnot(!anyNA(rev$tier))

  # This indicates the limit until which we expand non-focus column
  # before the current focus column:
  rev$offset_before <- pmax(rev$offset_after - rev$width - 1L, 0L)
  rev_before <- rev[focus_top_level_start_idx, ]
  stopifnot(nrow(rev_before) == n_focus_shown)

  # This indicates how far the current focus column (with all sub-pillars)
  # can extend. We use it for convenience to use the same logic as
  # do_emit_pillars().
  rev_after <- rev[focus_top_level_end_idx, ]
  stopifnot(nrow(rev_after) == n_focus_shown)

  x_pos <- 0L
  tier_pos <- 1L

  for (col in seq_along(focus)) {
    # Emit extra columns for focus pillars before processing non-focus pillars,
    # to keep extra columns in order between focus and non-focus pillars:
    my_extra_cols <- focus_extra_cols[[col]]
    for (extra_cols_row in seq_len(NROW(my_extra_cols))) {
      cb$on_extra_cols(
        my_extra_cols$x[[extra_cols_row]],
        my_extra_cols$title[[extra_cols_row]],
        my_extra_cols$cols[[extra_cols_row]]
      )
    }

    start <- before_start_idx[[col]]
    end <- before_end_idx[[col]]

    # Emit non-focus pillars that fit: use offset_before
    if (start <= end) {
      sub_tier_widths <- compute_sub_tier_widths(
        tier_widths, x_pos, tier_pos,
        rev_before$offset_before[[col]], rev_before$tier[[col]]
      )

      adv <- advance_emit_pillars(x_pos, tier_pos, x[seq2(start, end)], sub_tier_widths, cb)
      x_pos <- adv$x_pos
      tier_pos <- adv$tier_pos
    }

    # Emit already formatted focus pillar(s):
    if (col <= length(focus_top_level_start_idx)) {
      focus_pillars <- seq2(focus_top_level_start_idx[[col]], focus_top_level_end_idx[[col]])
    } else {
      focus_pillars <- integer()
    }

    for (focus_pillar in focus_pillars) {
      # Deduct widths: use offset_after
      sub_tier_widths <- compute_sub_tier_widths(
        tier_widths, x_pos, tier_pos,
        rev_after$offset_after[[col]], rev_after$tier[[col]]
      )

      used <- compute_used_width(sub_tier_widths, widths_focus[[focus_pillar]])

      if (used$tiers > 0) {
        cb$on_end_tier()
        cb$on_start_tier()
      }

      cb$on_pillar(focus_formatted_list[[focus_pillar]])

      adv <- advance_pos(x_pos, tier_pos, used)
      x_pos <- adv$x_pos
      tier_pos <- adv$tier_pos
    }
  }

  # Emit pillars after focus pillar
  if (length(focus) > 0) {
    start <- focus[[length(focus)]] + 1L
  } else {
    start <- 1L
  }
  end <- length(x)

  # Emit non-focus pillars that fit: use offset_before
  if (start <= end) {
    sub_tier_widths <- compute_sub_tier_widths(
      tier_widths, x_pos, tier_pos,
      tier_widths[[length(tier_widths)]], length(tier_widths)
    )

    adv <- advance_emit_pillars(x_pos, tier_pos, x[seq2(start, end)], sub_tier_widths, cb)
    x_pos <- adv$x_pos
    tier_pos <- adv$tier_pos
  }
}

advance_emit_pillars <- function(x_pos, tier_pos, ...) {
  used <- do_emit_pillars(...)
  advance_pos(x_pos, tier_pos, used)
}

do_emit_pillars <- function(x, tier_widths, cb, title = NULL, first_pillar = NULL, parent_col_idx = NULL, is_focus = FALSE) {
  top_level <- is.null(first_pillar)

  # Only tweaking sub-title, because full title is needed for extra-cols
  sub_title <- title
  if (!is.null(sub_title)) {
    sub_title[-length(sub_title)][parent_col_idx[-1] != 1] <- ""
  }

  pillar_list <- ctl_new_pillar_list(cb$controller, x, width = tier_widths, title = sub_title, first_pillar = first_pillar)

  # Extra columns are known early on, and remain fixed
  extra <- attr(pillar_list, "extra")

  if (length(pillar_list) == 0) {
    emit_extra_cols(extra, x, title, cb)
    # Doesn't fit
    return(NULL)
  }

  # Simple pillar: fit and proceed
  if (isTRUE(attr(pillar_list, "simple"))) {
    pillar <- pillar_list[[1]]

    pillar_title <- pillar[["title"]]
    title_width <- get_width(pillar_title) %||% 0L

    formatted <- pillar_format_parts_2(
      pillar,
      max(tier_widths),
      is_focus,
      cb$on_get_n_abbrev_cols() + 1L
    )
    true_width <- formatted$max_extent
    stopifnot(true_width <= max(tier_widths))

    used <- compute_used_width(tier_widths, true_width)

    if (used$tiers > 0) {
      cb$on_end_tier()
      cb$on_start_tier()
    }

    cb$on_pillar(formatted)

    if (true_width < title_width) {
      cb$on_abbrev_col(format(pillar_title))
    }

    return(used)
  }

  # We can proceed cautiously to the next level if space permits.
  # For each sub-pillar we allow at most as much space so that
  # we can print all first components of all remaining pillars
  # with the minimum width
  min_widths <- map_int(pillar_list, pillar_get_min_width)
  rev <- distribute_pillars_rev(min_widths, tier_widths)
  stopifnot(!anyNA(rev$tier))

  x_pos <- 0L
  tier_pos <- 1L

  # Advance column by column
  for (col in seq_along(pillar_list)) {
    sub_tier_widths <- compute_sub_tier_widths(
      tier_widths, x_pos, tier_pos,
      rev$offset_after[[col]], rev$tier[[col]]
    )
    "!!!!!DEBUG sub_tier_widths"

    # Recurse
    used <- do_emit_pillars(
      x[[col]],
      sub_tier_widths,
      cb,
      c(title, tick_if_needed(names(x)[[col]])),
      pillar_list[[col]],
      c(parent_col_idx, if (!is.null(names(x))) col),
      is_focus
    )
    "!!!!!DEBUG used"

    adv <- advance_pos(x_pos, tier_pos, used)
    x_pos <- adv$x_pos
    tier_pos <- adv$tier_pos

    if (top_level) {
      cb$on_top_level_pillar()
    }
  }

  # We emit late to ensure that extra columns of compound pillars
  # appear before top-level extra columns.
  emit_extra_cols(extra, x, title, cb)

  list(tiers = tier_pos - 1L, width = x_pos)
}

compute_used_width <- function(tier_widths, width) {
  if (width <= max(tier_widths)) {
    # Handle tier break
    used_tier <- which(width <= tier_widths)[[1]]
  } else {
    used_tier <- which.max(tier_widths)
    width <- tier_widths[[used_tier]]
  }
  list(tiers = used_tier - 1L, width = width)
}

compute_sub_tier_widths <- function(tier_widths, x_pos, tier_pos, x_target, tier_target) {
  stopifnot(tier_pos <= tier_target)

  if (tier_pos == tier_target) {
    sub_tier_widths <- x_target - x_pos
  } else {
    sub_tier_widths <- c(
      tier_widths[[tier_pos]] - x_pos,
      tier_widths[seq2(tier_pos + 1L, tier_target - 1L)],
      x_target
    )
  }
  if (x_pos > 0) {
    sub_tier_widths[[1]] <- max(sub_tier_widths[[1]] - 1L, 0L)
  }
  stopifnot(sub_tier_widths >= 0)
  sub_tier_widths
}

advance_pos <- function(x_pos, tier_pos, used) {
  if (!is.null(used)) {
    if (used$tiers > 0) {
      x_pos <- used$width
      tier_pos <- tier_pos + used$tiers
    } else {
      if (x_pos > 0) {
        x_pos <- x_pos + 1L
      }
      x_pos <- x_pos + used$width
    }
  }
  list(x_pos = x_pos, tier_pos = tier_pos)
}

emit_extra_cols <- function(extra, x, title, cb) {
  if (length(extra) == 0) {
    return()
  }

  if (is.numeric(extra)) {
    if (length(extra) == 1) {
      extra <- paste0("[", extra, "]")
    } else {
      extra <- paste0("[", min(extra), ":", max(extra), "]")
    }
    x_extra <- set_names(list(x[1, ]), extra)
  } else {
    extra <- tick_if_needed(extra)
    x_extra <- tick_names_if_needed(x)
  }

  cb$on_extra_cols(x_extra, title, extra)
}

# Reference: https://www.w3.org/International/questions/qa-bidi-unicode-controls
fsi <- function(x) {
  paste0("\u2068", x, "\u2069")
}

lro <- function(x) {
  paste0("\u202d", x, "\u202c")
}

format_colonnade_tier_2 <- function(x, bidi = FALSE) {
  if (length(x) == 0) {
    return(character())
  }

  if (bidi) {
    x <- map(x, fsi)
  }

  out <- exec(paste, !!!x)

  if (bidi) {
    out <- lro(out)
  }

  out
}

new_colonnade_body <- function(x, extra_cols, abbrev_cols, abbrev_col_idxs = numeric()) {
  "!!!!!DEBUG new_colonnade_body()"

  body <- as_glue(as.character(unlist(x)))
  extra_cols <- as.list(extra_cols)

  list(
    body = body,
    extra_cols = extra_cols,
    abbrev_cols = abbrev_cols,
    abbrev_col_idxs = abbrev_col_idxs
  )
}
