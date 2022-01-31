#' Format multiple vectors in a tabular display
#'
#' @description
#' `r lifecycle::badge("soft-deprecated")`
#'
#' The vectors are formatted to fit horizontally into a user-supplied number of
#' characters per row.
#'
#' The `colonnade()` function doesn't process the input but returns an object
#' with a [format()] and a [print()] method.
#' The implementations call [squeeze()] to create [pillar] objects and fit them to a given width.
#'
#' @param x A list, which can contain matrices or data frames.
#'   If named, the names will be used as title for the pillars. Non-syntactic names
#'   will be escaped.
#' @param has_row_id Include a column indicating row IDs? Pass `"*"` to mark
#'   the row ID column with a star.
#' @param width Default width of the entire output, optional.
#' @inheritParams rlang::args_dots_empty
#' @keywords internal
#' @export
colonnade <- function(x, has_row_id = TRUE, width = NULL, ...) {
  deprecate_soft("1.7.0", "pillar::colonnade()", "pillar::tbl_format_setup()")

  if (!missing(...)) {
    check_dots_empty(action = warn)
  }

  # Reset local cache for each new colonnade
  num_colors(forget = TRUE)

  x <- flatten_colonnade(x)
  ret <- new_data_frame(x, has_row_id = has_row_id, class = "pillar_colonnade")
  ret <- set_width(ret, width)
  ret
}

flatten_colonnade <- function(x) {
  out <- map2(
    unname(x),
    names2(x),
    flatten_column
  )

  vec_rbind(
    !!!out,
    # .ptype = data_frame(names = list(), data = list())
    .ptype = data_frame(names = character(), data = list())
  )
}

flatten_column <- function(x, name) {
  if (name != "") {
    name <- tick_if_needed(name)
  }

  if (is.data.frame(x)) {
    flatten_df_column(x, name)
  } else if (is.matrix(x) && !inherits(x, c("Surv", "Surv2"))) {
    flatten_matrix_column(x, name)
  } else {
    # Length-one list, will be unlist()ed afterwards
    # data_frame(names = list(name), data = list(x))
    data_frame(names = name, data = list(x))
  }
}

flatten_df_column <- function(x, name) {
  if (length(x) == 0) {
    # data_frame(names = list(name), data = list(new_empty_col_sentinel(x)))
    data_frame(names = name, data = list(new_empty_col_sentinel(x)))
  } else {
    x <- flatten_colonnade(unclass(x))
    # x$names <- map(x$names, function(.x) c(name, .x))
    x$names <- paste0("$", x$names)
    x$names[[1]] <- paste0(name, x$names[[1]])
    x
  }
}

flatten_matrix_column <- function(x, name) {
  if (ncol(x) == 0) {
    data_frame(
      # names = list(c(name, "[,0]")),
      names = name,
      data = list(new_empty_col_sentinel(x))
    )
  } else {
    x_list <- map(seq_len(ncol(x)), function(i) x[, i])

    idx <- colnames(x)
    if (is.null(idx)) {
      idx <- seq_along(x_list)
    } else {
      idx <- encodeString(idx, quote = '"')
    }

    # names <- map(idx, function(.x) c(name, .x))
    names <- paste0("[,", idx, "]")
    names[[1]] <- paste0(name, names[[1]])

    data_frame(names = names, data = x_list)
  }
}

new_empty_col_sentinel <- function(type) {
  structure(list(type), class = c("pillar_empty_col"))
}

#' Squeeze a colonnade to a fixed width
#'
#' @description
#' `r lifecycle::badge("soft-deprecated")`
#'
#' The `squeeze()` function usually doesn't need to be called manually.
#' It returns an object suitable for printing and formatting at a fixed width
#' with additional information about omitted columns, which can be retrieved
#' via [extra_cols()].
#'
#' @keywords internal
#' @export
squeeze <- function(x, width = NULL, ...) {
  deprecate_soft("1.5.0", "pillar::squeeze()")

  squeeze_impl(x, width, ...)
}

squeeze_impl <- function(x, width = NULL, ...) {
  # Shortcut for zero-height corner case
  zero_height <- length(x$data) == 0L || length(x$data[[1]]) == 0L
  if (zero_height) {
    return(new_colonnade_squeezed(list(), colonnade = x, extra_cols = seq_along(x$data)))
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
  col_widths_shown <- col_widths[!safe_is_na(col_widths$tier), ]
  indexes <- split(seq_along(col_widths_shown$tier), col_widths_shown$tier)

  out <- map(indexes, function(i) {
    inner <- map2(col_widths_shown$pillar[i], col_widths_shown$width[i], pillar_format_parts)
    if (!is.null(rowid)) {
      inner <- c(list(pillar_format_parts(rowid, rowid_width - 1L)), inner)
    }
    inner
  })

  n_cols_shown <- nrow(col_widths_shown)
  extra_cols <- seq2(n_cols_shown + 1L, length(x$data))
  new_colonnade_squeezed(out, colonnade = x, extra_cols = extra_cols)
}

get_rowid_from_colonnade <- function(x) {
  has_title <- any(x$names != "")

  has_row_id <- attr(x, "has_row_id", exact = TRUE)
  if (!is_false(has_row_id) && length(x$data) > 0) {
    rowid <- rowidformat(
      length(x$data[[1]]),
      has_star = identical(has_row_id, "*"),
      has_title_row = has_title
    )
  } else {
    rowid <- NULL
  }

  rowid
}

new_colonnade_squeezed <- function(x, colonnade, extra_cols) {
  formatted_tiers <- map(x, format_colonnade_tier)
  formatted <- as_glue(as.character(unlist(formatted_tiers)))

  structure(
    list(formatted),
    extra_cols = colonnade[extra_cols, ],
    class = "pillar_squeezed_colonnade"
  )
}

format_colonnade_tier <- function(x) {
  "!!!!!DEBUG format_colonnade_tier(`v(x)`)"

  if (length(x) == 0) {
    return(character())
  }

  unlist(pmap(unname(x), paste))
}

#' @export
format.pillar_squeezed_colonnade <- function(x, ...) {
  x[[1]]
}

#' @export
print.pillar_squeezed_colonnade <- function(x, ...) {
  print(format(x, ...), ...)
  invisible(x)
}

# Method registration happens in .onLoad()
knit_print.pillar_squeezed_colonnade <- function(x, ...) {
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
#' @description
#' `r lifecycle::badge("soft-deprecated")`
#'
#' Formatting a [colonnade] object may lead to some columns being omitted
#' due to width restrictions. This method returns a character vector that
#' describes each of the omitted columns.
#'
#' @param x The result of [squeeze()] on a [colonnade] object
#' @inheritParams rlang::args_dots_used
#' @keywords internal
#' @export
extra_cols <- function(x, ...) {
  deprecate_soft("1.5.0", "pillar::extra_cols()")

  if (!missing(...)) {
    check_dots_used(action = warn)
  }

  UseMethod("extra_cols")
}

#' @rdname extra_cols
#' @param n The number of extra columns to return; the returned vector will
#'   always contain as many elements as there are extra columns, but elements
#'   beyond `n` will be `NA`.
#' @export
extra_cols.pillar_squeezed_colonnade <- function(x, ..., n = Inf) {
  extra_cols_impl(x, n)
}

extra_cols_impl <- function(x, n = NULL) {
  extra_cols <- attr(x, "extra_cols", exact = TRUE)
  ret <- rep(NA_character_, length(extra_cols$data))

  if (is.null(n)) {
    n <- Inf
  }

  idx <- seq_len(min(length(extra_cols$data), n))
  ret[idx] <- map2_chr(extra_cols$data[idx], extra_cols$names[idx], format_abbrev, space = NBSP)
  ret
}

#' @export
format.pillar_colonnade <- function(x, ...) {
  format(squeeze_impl(x, ...))
}

#' @export
print.pillar_colonnade <- function(x, ...) {
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
  tier_widths <- get_tier_widths(width, length(x$data), rowid_width)

  #'
  #' To avoid unnecessary computation for showing very wide colonnades, a first
  #' pass tries to fit all capitals into the tiers.
  init_cols <- min(length(x$data), sum(floor((tier_widths + 1L) / (MIN_PILLAR_WIDTH + 1L))))
  capitals <- map2(x$data[seq_len(init_cols)], x$names[seq_len(init_cols)], pillar_capital)
  init_col_widths_df <- colonnade_compute_tiered_col_widths(capitals, tier_widths)
  pillar_shown <- init_col_widths_df$id[!safe_is_na(init_col_widths_df$tier)]
  if (length(pillar_shown) < init_cols) {
    # (Include one more pillar to indicate that the data is too wide.)
    pillar_shown <- c(pillar_shown, pillar_shown[length(pillar_shown)] + 1L)
  }

  #' For each pillar whose capital fits, it is then decided in which tier it is
  #' shown, if at all, and how much horizontal space it may use (either its
  #' minimum or its maximum width).
  shafts <- map(x$data[pillar_shown], pillar_shaft)
  pillars <- map2(capitals[pillar_shown], shafts, new_pillar_1e)
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

  max_widths <- pmin(map_int(map(pillars, get_widths), max), max_tier_width)
  min_widths <- pmin(map_int(map(pillars, get_min_widths), max), max_widths)

  ret <- colonnade_compute_tiered_col_widths_df(max_widths, min_widths, tier_widths)
  ret$pillar <- pillars
  ret
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
colonnade_compute_tiered_col_widths_df <- function(max_widths, min_widths, tier_widths) {
  "!!!!!DEBUG colonnade_compute_tiered_col_widths_df(`v(tier_widths)`)"

  max_tier_width <- max(tier_widths)

  # Safety:
  max_widths <- pmin(max_widths, max_tier_width)
  min_widths <- pmin(min_widths, max_tier_width)

  id <- seq_along(max_widths)
  col_df <- data.frame(id, max_widths, min_widths, row.names = NULL)

  #' @details
  #' For fitting pillars in one or more tiers, first a check is made
  #' if all pillars fit with their maximum width (e.g.,
  #' `option(tibble.width = Inf)` or narrow colonnade).
  max_fit <- distribute_pillars(col_df$max_widths, tier_widths)
  #' If yes, this is the resulting fit, no more work needs to be done.
  if (all_pillars_fit(max_fit)) {
    return(max_fit)
  }

  #' Otherwise, if the maximum width is too wide, the same test
  #' is carried out with the minimum width.
  #' If this is still too wide, this is the resulting fit.
  min_fit <- distribute_pillars(col_df$min_widths, tier_widths)
  if (!all_pillars_fit(min_fit)) {
    return(min_fit)
  }

  #' Otherwise, some tiers from the start
  #' will contain pillars with their maximum width,
  #' one tier will contain some pillars with maximum and some with minimum width,
  #' and the remaining tiers contain pillars with their minimum width only.
  #'
  #' For this, we compute a "reverse minimum assignment".
  min_fit_rev <- distribute_pillars_rev(col_df$min_widths, tier_widths)

  combined_fit <- combine_pillar_distributions(max_fit, min_fit_rev, tier_widths)

  combined_fit$max_widths <- col_df$max_widths
  combined_fit
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
combine_pillar_distributions <- function(max_fit, min_fit_rev, tier_widths) {
  #' @details
  #' We determine the cut point where minimum and maximum assignment
  #' agree.
  #' The following strategy is applied:
  #'
  #' 1. First, we determine the tier in which the cut point lies.
  #'    This is the first instance of a column that ends up in the same tier
  #'    for both minimum and maximum assignment.
  cut_point_tier <- max_fit$tier[min(which(max_fit$tier == min_fit_rev$tier))]
  #' 2. A set of candidate cut points is derived.
  cut_point_candidates <- which(max_fit$tier == cut_point_tier)
  #' 3. We consult the column offsets. The last column where the minimum assignment
  #'    has a greater or equal offset than the maximum assignment is our latest
  #'    cut point.
  cut_point_candidate_idx <- which(max_fit$offset_after[cut_point_candidates] <= min_fit_rev$offset_after[cut_point_candidates])
  if (length(cut_point_candidate_idx) > 0) {
    cut_point <- cut_point_candidates[max(cut_point_candidate_idx)]
  } else {
    #'    If no such column exists, the cut point is the column just before our
    #'    first candidate.
    cut_point <- cut_point_candidates[[1]] - 1L
  }

  #' 4. Finally, we combine maximum and minimum reverse fits at the cut point.
  #'    We don't need to redistribute anything here.
  max_fit_cut <- max_fit[seq_len(cut_point), ]
  min_fit_cut <- min_fit_rev[seq2(cut_point + 1L, nrow(min_fit_rev)), ]
  rbind(max_fit_cut, min_fit_cut)
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
distribute_pillars <- function(widths, tier_widths) {
  tier <- rep(NA_integer_, length(widths))
  offset_after <- rep(NA_integer_, length(widths))
  current_tier <- 1L
  current_x <- 0L

  #' @details
  #' Fitting pillars into tiers is very similar to a word-wrapping algorithm.
  for (i in seq_along(widths)) {
    current_width <- widths[[i]]
    #' In a loop, new tiers are opened if the current tier overflows.
    if (current_x + current_width > tier_widths[[current_tier]]) {
      #' If a column is too wide to fit a single tier, it will never be
      #' displayed, and the colonnade will be truncated there.
      #' This case should never occur with reasonable display widths larger than
      #' 30 characters.
      if (current_width > tier_widths[[current_tier]]) {
        if (current_tier == length(tier_widths) || current_width > tier_widths[[current_tier + 1]]) {
          break
        }
      }

      current_tier <- current_tier + 1L
      current_x <- 0L
      #' Truncation also happens if all available tiers are filled.
      if (current_tier > length(tier_widths)) break
    }

    tier[[i]] <- current_tier
    current_x <- current_x + current_width
    offset_after[[i]] <- current_x
    current_x <- current_x + 1L
  }

  data_frame(id = seq_along(widths), tier = tier, width = widths, offset_after = offset_after)
}

distribute_pillars_rev <- function(widths, tier_widths) {
  ret <- distribute_pillars(rev(widths), rev(tier_widths))
  ret[2:4] <- ret[rev(seq_along(widths)), 2:4]
  tier <- length(tier_widths) + 1L - ret$tier
  ret$tier <- tier

  splits <- split(seq_along(tier), tier)
  tier_widths <- tier_widths[stats::na.omit(unique(tier))]

  new_offset_after <- unlist(map2(unname(splits), tier_widths, function(.x, .y) {
    new_offset_after <- cumsum(ret$width[.x] + 1)
    new_offset_after - max(new_offset_after) + .y
  }))

  ret$offset_after <- c(new_offset_after, rep(NA_integer_, sum(is.na(tier))))

  ret
}

all_pillars_fit <- function(tier_df) {
  rows <- nrow(tier_df)
  rows == 0 || !safe_any_na(tier_df$tier[[nrow(tier_df)]])
}

#' @rdname colonnade
#' @usage NULL
#' @aliases NULL
colonnade_distribute_space_df <- function(col_widths_df, tier_widths) {
  "!!!!!DEBUG colonnade_distribute_space_df(`v(tier_widths)`)"

  col_widths_split <- split(col_widths_df, col_widths_df$tier)
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
  if (any(is.na(col_widths))) {
    return(col_widths)
  }

  missing_space <- max_widths - col_widths
  # Shortcut to avoid division by zero
  if (all(missing_space == 0L)) {
    return(rep_along(col_widths, 0L))
  }

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
