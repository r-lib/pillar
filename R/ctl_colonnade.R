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

  emit_tiers(x, tier_widths, controller, rowid, rowid_width, has_star = identical(has_row_id, "*"))

  pillars <- new_data_frame_pillar_list(x, controller, tier_widths, title = NULL)

  if (length(pillars) == 0) {
    return(new_colonnade_body(list(), extra_cols = x))
  }

  col_widths <- colonnade_get_width_2(pillars, tier_widths)

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

  out <- map(flat_tiers, format_colonnade_tier_2, bidi = get_pillar_option_bidi())

  extra_cols <- as.list(x)[seq2(length(pillars) + 1L, nc)]
  new_colonnade_body(out, extra_cols = extra_cols)
}

emit_tiers <- function(x, tier_widths, controller, rowid, rowid_width, has_star) {
  cb <- new_emit_tiers_callbacks(controller, rowid, rowid_width, has_star)
  do_emit_tiers(x, tier_widths, cb)
}

new_emit_tiers_callbacks <- function(controller, rowid, rowid_width, has_star) {
  list(
    controller = controller,
    rowid = rowid,
    rowid_width = rowid_width,
    has_star = has_star,
    on_tier = function(formatted) {
      # writeLines(formatted)
    },
    on_extra_cols = function(extra_cols) {
      # print(extra_cols)
    }
  )
}

do_emit_tiers <- function(x, tier_widths, cb) {
  current_tier <- NULL
  extra_cols <- data_frame(x = list(), title = list(), cols = list())

  on_start_tier <- function() {
    # message("on_start_tier()")
    current_tier <<- data_frame(pillar = list(), width = integer())
  }

  on_end_tier <- function() {
    # message("on_end_tier()")

    if (nrow(current_tier) > 0) {
      pillars <- current_tier$pillar
      widths <- current_tier$width
      if (!is.null(cb$rowid)) {
        rowid_pillar <- rowidformat2(cb$rowid, names(pillars[[1]]), has_star = cb$has_star)
        pillars <- c(list(rowid_pillar), pillars)
        widths <- c(cb$rowid_width, widths)
      }

      # FIXME: Simplify
      current_tier <- pillar_format_tier(pillars, widths, widths)
      formatted <- format_colonnade_tier_2(current_tier, bidi = get_pillar_option_bidi())
      cb$on_tier(formatted)
    }
    current_tier <<- NULL
  }

  on_pillar <- function(pillar, width) {
    # message("pillar()")
    # print(width)
    # print(pillar, width = width)
    row <- data_frame(pillar = list(pillar), width = width)
    current_tier <<- vec_rbind(current_tier, row)
  }

  on_extra_cols <- function(x, title, cols) {
    # message("extra_cols()")
    # print(title)
    # print(cols)
    extra_cols <<- vec_rbind(extra_cols, data_frame(
      x = list(x), title = list(title), cols = list(cols)
    ))
  }

  cb_pillars <- new_emit_pillars_callbacks(
    cb$controller,
    on_start_tier,
    on_end_tier,
    on_pillar,
    on_extra_cols
  )

  emit_pillars(x, tier_widths, cb_pillars)
  cb$on_extra_cols(extra_cols)
}

emit_pillars <- function(x, tier_widths, cb) {
  cb$on_start_tier()
  do_emit_pillars(x, tier_widths, cb)
  cb$on_end_tier()
}

new_emit_pillars_callbacks <- function(controller,
                                       on_start_tier,
                                       on_end_tier,
                                       on_pillar,
                                       extra_cols) {
  list(
    controller = controller,
    on_start_tier = on_start_tier,
    on_end_tier = on_end_tier,
    on_pillar = on_pillar,
    extra_cols = extra_cols
  )
}

do_emit_pillars <- function(x, tier_widths, cb, title = NULL, first_pillar = NULL) {
  # New-style code

  pillar_list <- ctl_new_pillar_list(cb$controller, x, width = tier_widths, title = title, first_pillar = first_pillar)

  if (length(pillar_list) == 0) {
    # Doesn't fit
    return(NULL)
  }

  # Simple pillar: fit and proceed
  if (length(pillar_list) == 1) {
    pillar <- pillar_list[[1]]
    width <- pillar_get_widths(pillar)
    if (width <= max(tier_widths)) {
      # Handle tier break
      used_tier <- which(width <= tier_widths)[[1]]
    } else {
      used_tier <- which.max(tier_widths)
      width <- tier_widths[[used_tier]]
    }

    if (used_tier > 1) {
      cb$on_end_tier()
      cb$on_start_tier()
    }

    cb$on_pillar(pillar, width)

    if (used_tier > 1) {
      return(list(tiers = used_tier - 1L, x = width))
    } else {
      return(list(tiers = 0L, x = width + 1L))
    }
  }

  # We can proceed cautiously to the next level if space permits.
  # For each sub-pillar we allow at most as much space so that
  # we can print all first components of all remaining pillars
  # with the minimum width
  min_widths <- map_int(pillar_list, pillar_get_min_widths)
  rev <- distribute_pillars_rev(min_widths, tier_widths)
  stopifnot(!anyNA(rev$tier))

  x_pos <- 0L
  tier_pos <- 1L

  # FIXME: Replace with title vector
  sub_title <- title
  if (!is.null(sub_title)) {
    sub_title[[length(sub_title)]] <- paste0(sub_title[[length(sub_title)]], "$")
  }

  # Advance column by column
  for (col in seq_along(pillar_list)) {
    target_tier <- rev$tier[[col]]
    if (tier_pos == target_tier) {
      sub_tier_widths <- rev$offset_after[[col]] - x_pos
    } else {
      sub_tier_widths <- c(tier_widths[[tier_pos]] - x_pos, tier_widths[seq2(tier_pos + 1L, target_tier)])
    }

    # FIXME: Replace with title vector
    if (col == 2 && !is.null(sub_title)) {
      sub_title[[length(sub_title)]] <- "$"
    }

    # Recurse
    new_pos <- do_emit_pillars(x[[col]], sub_tier_widths, cb, c(sub_title, names(x)[[col]]), pillar_list[[col]])
    if (is.null(new_pos)) {
      # FIXME: Invalid condition
      break
    }

    if (new_pos$tiers > 0) {
      x_pos <- new_pos$x
      tier_pos <- tier_pos + new_pos$tiers
    } else {
      x_pos <- x_pos + new_pos$x
    }
  }

  extra <- attr(pillar_list, "extra")
  if (length(extra) > 0) {
    cb$extra_cols(x, title, extra)
  }

  list(tiers = tier_pos - 1L, x = x_pos)
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
    out <- exec(paste, !!!x)
    lro(out)
  } else {
    exec(paste, !!!x)
  }
}

new_colonnade_body <- function(x, extra_cols) {
  "!!!!!DEBUG new_colonnade_body()"

  body <- as_glue(as.character(unlist(x)))
  extra_cols <- as.list(extra_cols)

  list(body = body, extra_cols = extra_cols)
}

#' @noRd
colonnade_get_width_2 <- function(pillars, tier_widths) {
  "!!!!!DEBUG colonnade_get_width_2(`v(tier_widths)`)"

  #' @details
  #' Each pillar indicates its maximum and minimum width.
  min_max_widths <- colonnade_get_min_max_widths(pillars)
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

  out$pillar <- pillars

  new_tbl(out)
}

colonnade_get_min_max_widths <- function(pillars) {
  max_width <- map_int(pillars, pillar_get_total_widths)
  min_width <- map_int(pillars, pillar_get_total_min_widths)

  new_tbl(list(min_width = min_width, max_width = max_width))
}
