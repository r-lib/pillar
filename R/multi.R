#' Format multiple vectors in a tabular display
#'
#' The vectors are formatted to fit horizontally into a user-supplied number of
#' characters per row.
#'
#' @param x A list of vectors to format. Can contain matrices or data frames.
#'   If named, the names will be used as title for the pillars. Non-syntactic names
#'   will be escaped.
#' @param has_row_id Include a column indicating row IDs? Pass `"*"` to mark
#'   the row ID column with a star.
#' @param width Default width of the entire output, optional.
#' @param ... Ignored
#' @export
#' @examples
#' colonnade(list(a = 1:3, b = letters[1:3]))
#'
#' long_string <- list(paste(letters, collapse = " "))
#' colonnade(long_string, width = 20)
#' colonnade(long_string, has_row_id = FALSE, width = 20)
#'
#' # The width can also be overridden when calling format() or print():
#' print(colonnade(long_string), width = 20)
#'
#' # If width is larger than getOption("width"), multiple tiers are created:
#' colonnade(rep(long_string, 4), width = Inf)
colonnade <- function(x, has_row_id = TRUE, width = NULL, ...) {
  has_color(forget = TRUE)

  x <- flatten_colonnade(x)
  proxy <- structure(x, has_row_id = has_row_id)
  ret <- structure(proxy, class = "colonnade")
  ret <- set_width(ret, width)
  ret
}

flatten_colonnade <- function(x) {
  if (length(x) == 0) return(list())

  unlist(
    map2(
      unname(x),
      names(x) %||% rep_along(x, list(NULL)),
      flatten_column
    ),
    recursive = FALSE
  )
}

flatten_column <- function(x, name) {
  name <- tick_if_needed(name)

  if (is.data.frame(x)) {
    flatten_df_column(x, name)
  } else if (is.matrix(x)) {
    flatten_matrix_column(x, name)
  } else {
    # Length-one list, will be unlist()ed afterwards
    set_names(list(x), name)
  }
}

flatten_df_column <- function(x, name) {
  if (length(x) == 0) {
    set_names(new_empty_col_sentinel(), name)
  } else {
    x <- flatten_colonnade(unclass(x))
    names(x) <- paste0("$", names(x))
    names(x)[[1]] <- paste0(name, names(x)[[1]])
    x
  }
}

flatten_matrix_column <- function(x, name) {
  if (ncol(x) == 0) {
    set_names(new_empty_col_sentinel(), name)
  } else {
    x_list <- map(seq_len(ncol(x)), function(i) x[,i])

    idx <- colnames(x)
    if (is.null(idx)) {
      idx <- seq_along(x_list)
    } else {
      idx <- encodeString(idx, quote = '"')
    }
    names(x_list) <- paste0("[,", idx, "]")
    names(x_list)[[1]] <- paste0(name, names(x_list)[[1]])
    x_list
  }
}

new_empty_col_sentinel <- function() {
  list(NULL)
}

#' @description
#' The `squeeze()` function is called by [format()]  and [print()] and usually
#' doesn't need to be called manually.
#' It returns an object suitable for printing and formatting at a fixed width
#' with additional information about omitted columns.
#'
#' @rdname colonnade
#' @export
#' @examples
#' squeeze(colonnade(long_string), width = 20)
squeeze <- function(x, width = NULL, ...) {
  # Shortcut for zero-height corner case
  zero_height <- length(x) == 0L || length(x[[1]]) == 0L
  if (zero_height) {
    return(new_colonnade_sqeezed(list(), colonnade = x, extra_cols = seq_along(x)))
  }

  if (is.null(width)) {
    width <- get_width(x)
  }

  if (is.null(width)) {
    width <- getOption("width")
  }

  rowid <- get_rowid_from_colonnade(x)
  if (is.null(rowid)) {
    rowid_width <- 0
  } else {
    rowid_width <- max(get_widths(rowid)) + 1L
  }

  col_widths <- colonnade_get_width(x, width, rowid_width)
  col_widths_show <- split(col_widths, factor(col_widths$tier != 0, levels = c(FALSE, TRUE)))
  col_widths_shown <- col_widths_show[["TRUE"]]
  col_widths_tiers <- split(col_widths_shown, col_widths_shown$tier)

  out <- map(col_widths_tiers, function(tier) {
    map2(tier$pillar, tier$width, pillar_format_parts)
  })

  if (!is.null(rowid)) {
    rowid_formatted <- pillar_format_parts(rowid, rowid_width - 1L)
    out <- map(out, function(x) c(list(rowid_formatted), x))
  }

  extra_cols <- seq2(nrow(col_widths_shown) + 1L, length(x))
  new_colonnade_sqeezed(out, colonnade = x, extra_cols = extra_cols)
}

map_named <- function(.x, .f) {
  names <- names(.x)
  if (!is.null(names)) {
    map2(.x, names, .f)
  } else {
    map(.x, .f)
  }
}

map_chr_named <- function(.x, .f) {
  names <- names(.x)
  if (!is.null(names)) {
    map2_chr(.x, names, .f)
  } else {
    map_chr(.x, .f)
  }
}

get_rowid_from_colonnade <- function(x) {
  has_title <- is_named(x)

  has_row_id <- attr(x, "has_row_id")
  if (!is_false(has_row_id) && length(x) > 0) {
    rowid <- rowidformat(
      length(x[[1]]),
      has_star = identical(has_row_id, "*"),
      has_title_row = has_title
    )
  } else {
    rowid <- NULL
  }

  rowid
}

new_colonnade_sqeezed <- function(x, colonnade, extra_cols) {
  structure(
    x,
    extra_cols = colonnade[extra_cols],
    class = "squeezed_colonnade"
  )
}

#' @export
format.squeezed_colonnade <- function(x, ...) {
  formatted <- map(x, format_colonnade_tier)
  new_vertical(as.character(unlist(formatted)))
}

format_colonnade_tier <- function(x) {
  xt <- list(
    capital = map(x, `[[`, "capital_format"),
    shaft = map(x, `[[`, "shaft_format")
  )

  c(
    eval_tidy(quo(paste(!!!unname(xt$capital)))),
    eval_tidy(quo(paste(!!!unname(xt$shaft))))
  )
}

#' @export
print.squeezed_colonnade <- function(x, ...) {
  print(format(x, ...), ...)
  invisible(x)
}

# Method registration happens in .onLoad()
knit_print.squeezed_colonnade <- function(x, ...) {
  unlist(map(x, knit_print_squeezed_colonnade_tier))
}

knit_print_squeezed_colonnade_tier <- function(x) {
  # Hack
  header <- map_chr(map(x, `[[`, "capital_format"), `[[`, "title_format")
  col <- map(x, function(xx) c(xx[["capital_format"]][["type_format"]], xx[["shaft_format"]]))

  knitr::kable(as.data.frame(col), row.names = NA, col.names = header)
}

#' Retrieve information about columns that didn't fit the available width
#'
#' Formatting a [colonnade] object may lead to some columns being omitted
#' due to width restrictions. This method returns a character vector that
#' describes each of the omitted columns.
#' @param x The result of [squeeze()] on a [colonnade] object
#' @param ... Unused
#' @export
#' @examples
#' extra_cols(squeeze(colonnade(list(a = 1:3, b = 4:6), width = 8)))
extra_cols <- function(x, ...) {
  UseMethod("extra_cols")
}

#' @rdname extra_cols
#' @param n The number of extra columns to return; the returned vector will
#'   always contain as many elements as there are extra columns, but elements
#'   beyond `n` will be `NA`.
#' @export
extra_cols.squeezed_colonnade <- function(x, ..., n = Inf) {
  extra_cols <- attr(x, "extra_cols")
  ret <- rep(NA_character_, length(extra_cols))

  idx <- seq_len(min(length(extra_cols), n))
  ret[idx] <- map_chr_named(extra_cols[idx], format_abbrev)
  ret
}

#' @export
format.colonnade <- function(x, ...) {
  format(squeeze(x, ...))
}

#' @export
print.colonnade <- function(x, ...) {
  print(format(x, ...))
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
colonnade_get_width <- function(x, width, rowid_width) {
  #' @details
  #' Pillars may be distributed over multiple tiers if
  #' `width > getOption("width")`. In this case each tier is at most
  #' `getOption("width")` characters wide. The very first step of formatting
  #' is to determine how many tiers are shown at most, and the width of each
  #' tier.
  tier_widths <- get_tier_widths(width, length(x), rowid_width)

  #'
  #' To avoid unnecessary computation for showing very wide colonnades, a first
  #' pass tries to fit all capitals into the tiers.
  init_cols <- min(length(x), sum(floor((tier_widths + 1L) / (MIN_PILLAR_WIDTH + 1L))))
  capitals <- map_named(x[seq_len(init_cols)], pillar_capital)
  init_col_widths_df <- colonnade_compute_tiered_col_widths(capitals, tier_widths)
  pillar_shown <- init_col_widths_df$id[init_col_widths_df$tier != 0L]
  if (length(pillar_shown) < init_cols) {
    # (Include one more pillar to indicate that the data is too wide.)
    pillar_shown <- c(pillar_shown, pillar_shown[length(pillar_shown)] + 1L)
  }

  #' For each pillar whose capital fits, it is then decided in which tier it is
  #' shown, if at all, and how much horizontal space it may use (either its
  #' minimum or its maximum width).
  shafts <- map(x[pillar_shown], pillar_shaft)
  pillars <- map2(capitals[pillar_shown], shafts, new_pillar)
  col_widths_df <- colonnade_compute_tiered_col_widths(pillars, tier_widths)

  #' Remaining space is then distributed proportionally to pillars that do not
  #' use their desired width.
  colonnade_distribute_space_df(col_widths_df, tier_widths)
}

get_tier_widths <- function(width, ncol, rowid_width, tier_width = getOption("width")) {
  if (!is.finite(width)) {
    pos <- seq(0, length.out = ncol + 1L, by = tier_width)
  } else if (width < tier_width) {
    pos <- c(0L, width)
  } else {
    pos <- seq(0, width + tier_width - 1, by = tier_width)
  }

  widths <- diff(pos) - rowid_width
  widths[widths >= 1L]
}

colonnade_compute_tiered_col_widths <- function(pillars, tier_widths) {
  max_tier_width <- max(tier_widths)

  col_df <- data.frame(
    id = seq_along(pillars),
    max_widths = pmin(map_int(map(pillars, get_widths), max), max_tier_width),
    min_widths = map_int(map(pillars, get_min_widths), max),
    row.names = NULL
  )

  ret <- colonnade_compute_tiered_col_widths_df(col_df, tier_widths, data.frame(tier = integer()))
  ret$pillar <- pillars
  ret
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
colonnade_compute_tiered_col_widths_df <- function(col_df, tier_widths, fixed_tier_df) {
  #' @details
  #' For fitting pillars in one or more tiers, first a check is made
  #' if all pillars fit with their maximum width (e.g.,
  #' `option(tibble.width = Inf)` or narrow colonnade).
  max_fit <- distribute_pillars(col_df$max_widths, tier_widths)
  #' If yes, this is the resulting fit, no more work needs to be done.
  if (all_pillars_fit(max_fit)) return(max_fit)

  #' Otherwise, if the maximum width is too wide, the same test
  #' is carried out with the minimum width.
  #' If this is still too wide, this is the resulting fit.
  min_fit <- distribute_pillars(col_df$min_widths, tier_widths)
  if (!all_pillars_fit(min_fit)) return(min_fit)

  #' Otherwise, some tiers from the start
  #' will contain pillars with their maximum width, and the remaining tiers
  #' contain pillars with their minimum width.
  #' We determine the cut point where minimum and maximum assignment
  #' agree.
  min_fit_rev <- distribute_pillars_rev(col_df$min_widths, tier_widths)

  cut_point <- max(min(which(c(max_fit$tier == min_fit_rev$tier))), 1L)
  cut_point_tier <- max_fit$tier[[cut_point]]

  min_fit_cut <- distribute_pillars_offset(
    col_df$min_widths,
    tier_widths,
    cut_point,
    cut_point_tier
  )

  combined_fit <- rbind(
    max_fit[seq_len(cut_point - 1L), ],
    min_fit_cut
  )

  combined_fit$max_widths <- col_df$max_widths
  combined_fit
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
distribute_pillars <- function(widths, tier_widths) {
  tier <- integer(length(widths))
  current_tier <- 1L
  current_x <- 0L

  #' @details
  #' Fitting pillars into tiers is very similar to a word-wrapping algorithm.
  for (i in seq_along(widths)) {
    #' In a loop, new tiers are opened if the current tier overflows.
    if (current_x + widths[[i]] > tier_widths[[current_tier]]) {
      #' If a column is too wide to fit a single tier, it will never be
      #' displayed, and the colonnade will be truncated there.
      #' This case should never occur with reasonable display widths larger than
      #' 30 characters.
      if (widths[[i]] > tier_widths[[current_tier]]) break

      current_tier <- current_tier + 1L
      current_x <- 0L
      #' Truncation also happens if all available tiers are filled.
      if (current_tier > length(tier_widths)) break
    }

    tier[[i]] <- current_tier
    current_x <- current_x + widths[[i]] + 1L
  }

  data.frame(id = seq_along(widths), width = widths, tier = tier)
}

distribute_pillars_rev <- function(widths, tier_widths) {
  ret <- distribute_pillars(rev(widths), rev(tier_widths))
  ret[2:3] <- ret[rev(seq_along(widths)), 2:3]
  ret$tier <- length(tier_widths) + 1L - ret$tier
  ret
}

distribute_pillars_offset <- function(widths, tier_widths,
                                      widths_offset, tier_widths_offset) {
  fit_cut <- distribute_pillars(
    widths[seq2(widths_offset, length(widths))],
    tier_widths[seq2(tier_widths_offset, length(tier_widths))]
  )
  fit_cut$id <- fit_cut$id + (widths_offset - 1L)
  fit_cut$tier <- fit_cut$tier + (tier_widths_offset - 1L)
  fit_cut
}

all_pillars_fit <- function(tier_df) {
  rows <- nrow(tier_df)
  rows == 0 || tier_df$tier[[nrow(tier_df)]] != 0
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
colonnade_distribute_space_df <- function(col_widths_df, tier_widths) {
  col_widths_split <- split(col_widths_df, col_widths_df$tier)
  if (any(col_widths_df$tier == 0)) tier_widths <- c(NA, tier_widths)
  tier_widths <- tier_widths[seq_along(col_widths_split)]
  col_widths_apply <- map2(col_widths_split, tier_widths, function(x, width) {
    x$width <- x$width + colonnade_distribute_space(x$width, x$max_widths, width)
    x
  })

  bind_rows(unname(col_widths_apply))
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
colonnade_distribute_space <- function(col_widths, max_widths, width) {
  if (any(is.na(col_widths))) return(col_widths)

  missing_space <- max_widths - col_widths
  # Shortcut to avoid division by zero
  if (all(missing_space == 0L)) return(rep_along(col_widths, 0L))

  #' @details
  #' The remaining space is distributed from left to right.
  #' Each column gains space proportional to the fraction of missing and
  #' remaining space,
  occupied_width <- sum(col_widths + 1L) - 1L
  remaining_width <- max(min(width - occupied_width, sum(missing_space)), 0L)
  added_space_prop <- missing_space / sum(missing_space) * remaining_width

  #' rounded down.
  added_space_ceil <- ceiling(added_space_prop)
  added_space_floor <- floor(added_space_prop)
  added_space_diff <- added_space_ceil - added_space_floor
  added_space <- ifelse(
    #' Any space remaining after rounding is distributed from left to right,
    #' one space per column.
    sum(added_space_floor) + cumsum(added_space_diff) <= remaining_width,
    added_space_ceil,
    added_space_floor
  )

  added_space
}
