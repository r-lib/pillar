# Adapted from squeeze_impl()
ctl_colonnade <- function(x, has_row_id = TRUE, width = NULL,
                          controller = new_tbl(), focus = NULL) {
  "!!!!DEBUG ctl_colonnade()"

  x <- new_data_frame(x, names = names2(x))
  width <- get_width_print(width)

  n <- nrow(x)
  nc <- ncol(x)

  if (n == 0 || nc == 0) {
    return(new_colonnade_body(list(), extra_cols = x))
  }

  # Move focus columns to front
  x_focus <- x
  if (!is.null(focus)) {
    focus <- match(focus, names(x))
    stopifnot(!anyNA(focus))
    idx <- seq_along(x)
    idx <- c(focus, setdiff(idx, focus))
    x_focus <- x[idx]
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
  split_after <- NULL

  on_tier <- function(formatted) {
    # writeLines(formatted)
    formatted_tiers <<- c(formatted_tiers, list(formatted))
  }

  on_hsep <- function(extent) {
    if (!is.null(focus)) {
      split_after <<- length(formatted_tiers)
    }
  }

  on_extra_cols <- function(my_extra_cols) {
    # print(extra_cols)

    # FIXME: Show for all levels
    is_top_level <- map_lgl(my_extra_cols$x, identical, x)
    if (any(is_top_level)) {
      extra_cols <<- as.list(x)[my_extra_cols$cols[is_top_level][[1]]]
      names(extra_cols) <<- tick_if_needed(names(extra_cols))
    }
  }

  cb <- new_emit_tiers_callbacks(
    controller, rowid, rowid_width, has_star,
    on_tier, on_hsep, on_extra_cols
  )
  do_emit_tiers(x_focus, tier_widths, length(focus), cb)

  if (length(extra_cols) == 0) {
    extra_cols <- list()
  }

  new_colonnade_body(formatted_tiers, split_after = split_after, extra_cols = extra_cols)
}

new_emit_tiers_callbacks <- function(controller, rowid, rowid_width, has_star,
                                     on_tier, on_hsep, on_extra_cols) {
  list(
    controller = controller,
    rowid = rowid,
    rowid_width = rowid_width,
    has_star = has_star,
    on_tier = on_tier,
    on_hsep = on_hsep,
    on_extra_cols = on_extra_cols
  )
}

do_emit_tiers <- function(x, tier_widths, n_focus, cb) {
  formatted_list <- NULL
  extra_cols <- data_frame(x = list(), title = list(), cols = list())
  n_top_level_pillars <- 0L
  n_top_level_pillars_at_start <- NULL
  n_top_level_pillars_at_end <- NULL
  vsep_pos <- NULL

  on_start_tier <- function() {
    # message("on_start_tier()")
    formatted_list <<- list()
    n_top_level_pillars_at_start <<- n_top_level_pillars
    vsep_pos <<- NULL
  }

  on_end_tier <- function() {
    # message("on_end_tier()")
    n_top_level_pillars_at_end <<- n_top_level_pillars

    if (length(formatted_list) > 0) {
      if (!is.null(cb$rowid)) {
        rowid_pillar <- rowidformat2(cb$rowid, formatted_list[[1]]$components, has_star = cb$has_star)
        formatted_list <- c(list(pillar_format_parts_2(rowid_pillar, cb$rowid_width)), formatted_list)
        if (!is.null(vsep_pos)) {
          vsep_pos <<- vsep_pos + 1L
        }
      }

      aligned <- map(formatted_list, `[[`, "aligned")

      if (!is.null(vsep_pos) && vsep_pos < length(aligned)) {
        vsep <- rep_along(aligned, " ")
        vsep[[length(aligned)]] <- ""
        vsep[[vsep_pos]] <- style_subtle(vbar())
      } else {
        vsep <- NULL
      }

      tier <- format_colonnade_tier_2(aligned, vsep = vsep, bidi = get_pillar_option_bidi())

      cb$on_tier(tier)

      if (!is.null(vsep_pos) && vsep_pos == length(aligned)) {
        cb$on_hsep(get_extent(tier[[1]]))
      }
    }
    formatted_list <<- NULL
  }

  on_pillar <- function(formatted) {
    # message("pillar()")
    # print(formatted)
    # print(pillar, width = width)
    formatted_list <<- c(formatted_list, list(formatted))
  }

  on_top_level_pillar <- function() {
    n_top_level_pillars <<- n_top_level_pillars + 1L
    if (!is.null(n_focus) && n_top_level_pillars == n_focus) {
      vsep_pos <<- length(formatted_list)
    }
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
    on_start_tier, on_end_tier, on_pillar, on_top_level_pillar, on_extra_cols
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
                                       on_top_level_pillar,
                                       on_extra_cols) {
  list(
    controller = controller,
    on_start_tier = on_start_tier,
    on_end_tier = on_end_tier,
    on_pillar = on_pillar,
    on_top_level_pillar = on_top_level_pillar,
    on_extra_cols = on_extra_cols
  )
}

do_emit_pillars <- function(x, tier_widths, cb, title = NULL, first_pillar = NULL) {
  top_level <- is.null(first_pillar)

  pillar_list <- ctl_new_pillar_list(cb$controller, x, width = tier_widths, title = title, first_pillar = first_pillar)

  # Extra columns are known early on, and remain fixed
  extra <- attr(pillar_list, "extra")

  if (length(extra) > 0) {
    cb$on_extra_cols(x, title, extra)
  }

  if (length(pillar_list) == 0) {
    # Doesn't fit
    return(NULL)
  }

  # Simple pillar: fit and proceed
  if (!is.null(first_pillar)) {
    # Harmonize for the case of a zero-column packed column
    attr(first_pillar, "width") <- attr(pillar_list[[1]], "width")
  }

  if (identical(list(first_pillar), pillar_list)) {
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
    used <- do_emit_pillars(
      x[[col]],
      sub_tier_widths,
      cb,
      c(sub_title, tick_if_needed(names(x)[[col]])),
      pillar_list[[col]]
    )
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

    if (top_level) {
      cb$on_top_level_pillar()
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

# hbar is cli::symbol$double_line
vbar <- function() {
  if (l10n_info()$`UTF-8`) {
    "\u2551"
  } else {
    "|"
  }
}

format_colonnade_tier_2 <- function(x, vsep = NULL, bidi = FALSE) {
  if (length(x) == 0) {
    return(character())
  }

  if (bidi) {
    x <- map(x, fsi)
  }

  if (is.null(vsep)) {
    out <- exec(paste, !!!x)
  } else {
    stopifnot(length(x) == length(vsep))
    args <- t(as.matrix(data.frame(I(x), I(vsep), stringsAsFactors = FALSE)))
    dim(args) <- NULL

    out <- exec(paste0, !!!args)
  }

  if (bidi) {
    out <- lro(out)
  }
  out
}

new_colonnade_body <- function(x, extra_cols, split_after = NULL) {
  "!!!!!DEBUG new_colonnade_body()"

  if (!is.null(split_after)) {
    width <- get_extent(c(x[[split_after]][[1]], x[[split_after + 1]][[1]]))
    hbar <- style_subtle(strrep(cli::symbol$double_line, max(width)))
    x <- c(x[seq_len(split_after)], hbar, x[seq2(split_after + 1, length(x))])
  }

  body <- as_glue(as.character(unlist(x)))
  extra_cols <- as.list(extra_cols)

  list(body = body, extra_cols = extra_cols)
}
