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

  # Reserve space for rowid column in each tier
  if (!is_false(has_row_id)) {
    rowid <- rif_shaft(n)
    rowid_width <- get_cell_widths(rowid)
  } else {
    rowid <- NULL
    rowid_width <- 0L
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

  tier_widths <- get_tier_widths(width, nc, rowid_width + 1L)
  pillars <- new_packed_pillars(x_focus, controller, tier_widths, title = NULL)

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

  vseps <- map(tiers, function(tier) {
    ids <- col_widths$id[tier]
    if (min(ids) <= length(focus) && max(ids) > length(focus)) {
      seps <- rep_along(ids, " ")
      seps[[length(seps)]] <- ""
      seps[ids == length(focus)] <- style_subtle(vbar())
      seps
    } else {
      NULL
    }
  })

  if (!is.null(rowid)) {
    rowid_pillar <- rowidformat2(rowid, names(pillars[[1]]), has_star = identical(has_row_id, "*"))
    rowid_formatted <- list(pillar_format_parts_2(rowid_pillar, rowid_width)$aligned[[1]])
    flat_tiers <- map(flat_tiers, function(.x) c(rowid_formatted, .x))
    vseps <- map(vseps, function(.x) if (!is.null(.x)) c(" ", .x))
  }

  out <- map2(flat_tiers, vseps, format_colonnade_tier_2, bidi = get_pillar_option_bidi())

  if (!is.null(focus) && nrow(col_widths) > length(focus) && col_widths$tier[[length(focus)]] < col_widths$tier[[length(focus) + 1]]) {
    split_after <- col_widths$tier[[length(focus)]]
  } else {
    split_after <- NULL
  }

  extra_cols <- as.list(x)[seq2(length(pillars) + 1L, nc)]
  new_colonnade_body(out, extra_cols = extra_cols, split_after = split_after)
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
