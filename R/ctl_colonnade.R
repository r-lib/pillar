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
    rowid_width <- get_width(rowid)
  } else {
    rowid <- NULL
    rowid_width <- 0L
  }

  has_star <- identical(has_row_id, "*")

  # FIXME: Support for Inf?
  tier_widths <- get_tier_widths(width, nc, rowid_width + 1L)

  formatted_tiers <- list()
  extra_cols <- list(a = 1)[0]

  on_tier <- function(formatted) {
    # writeLines(formatted)
    formatted_tiers <<- c(formatted_tiers, list(formatted))
  }
  on_extra_cols <- function(extra_cols) {
    # print(extra_cols)

    # FIXME: Show for abbreviated
    # FIXME: Show for all levels
    is_top_level <- map_lgl(extra_cols$x, identical, x)
    if (any(is_top_level)) {
      extra_cols <<- as.list(x)[extra_cols$cols[is_top_level][[1]]]
    }
  }

  cb <- new_emit_tiers_callbacks(
    controller, rowid, rowid_width, has_star,
    on_tier, on_extra_cols
  )
  do_emit_tiers(x, tier_widths, cb)

  new_colonnade_body(formatted_tiers, extra_cols = extra_cols)
}

new_emit_tiers_callbacks <- function(controller, rowid, rowid_width, has_star,
                                     on_tier, on_extra_cols) {
  list(
    controller = controller,
    rowid = rowid,
    rowid_width = rowid_width,
    has_star = has_star,
    on_tier = on_tier,
    on_extra_cols = on_extra_cols
  )
}

do_emit_tiers <- function(x, tier_widths, cb) {
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
        rowid_pillar <- rowidformat2(cb$rowid, formatted_list[[1]]$components, has_star = cb$has_star)
        formatted_list <- c(list(pillar_format_parts_2(rowid_pillar, cb$rowid_width)), formatted_list)
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
    extra_cols <<- vec_rbind(extra_cols, data_frame(
      x = list(x), title = list(title), cols = list(cols)
    ))
  }

  cb_pillars <- new_emit_pillars_callbacks(
    cb$controller,
    on_start_tier, on_end_tier, on_pillar, on_extra_cols
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

  # Extra columns are known early on, and remain fixed
  extra <- attr(pillar_list, "extra")

  if (length(extra) > 0) {
    cb$extra_cols(x, title, extra)
  }

  if (length(pillar_list) == 0) {
    # Doesn't fit
    return(NULL)
  }

  # Simple pillar: fit and proceed
  if (length(pillar_list) == 1 && length(extra) == 0) {
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

    formatted <- pillar_format_parts_2(pillar, width)
    cb$on_pillar(formatted)

    # Use true width
    true_width <- formatted$max_extent
    stopifnot(true_width <= width)

    return(list(tiers = used_tier - 1L, width = true_width))
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
    stopifnot(tier_pos <= target_tier)
    if (tier_pos == target_tier) {
      sub_tier_widths <- rev$offset_after[[col]] - x_pos
    } else {
      sub_tier_widths <- c(
        tier_widths[[tier_pos]] - x_pos,
        tier_widths[seq2(tier_pos + 1L, target_tier - 1L)],
        rev$offset_after[[col]]
      )
    }
    if (x_pos > 0) {
      sub_tier_widths[[1]] <- max(sub_tier_widths[[1]] - 1L, 0L)
    }
    stopifnot(sub_tier_widths >= 0)
    "!!!!!DEBUG sub_tier_widths"

    # FIXME: Replace with title vector
    if (col == 2 && !is.null(sub_title)) {
      sub_title[[length(sub_title)]] <- "$"
    }

    # Recurse
    used <- do_emit_pillars(x[[col]], sub_tier_widths, cb, c(sub_title, names(x)[[col]]), pillar_list[[col]])
    "!!!!!DEBUG used"

    stopifnot(!is.null(used))

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

  list(tiers = tier_pos - 1L, width = x_pos)
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
