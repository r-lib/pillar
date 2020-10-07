#' @export
tbl_format_setup.default <- function(x, width, ...,
                                     n = NULL, max_extra_cols = NULL) {
  rows <- nrow(x)
  if (is.null(n)) {
    # For testing
    n <- rows
    stopifnot(!is.na(n))
  }

  if (is.na(rows)) {
    df <- as.data.frame(utils::head(x, n + 1))
    if (nrow(df) <= n) {
      rows <- nrow(df)
    } else {
      df <- df[seq_len(n), , drop = FALSE]
    }
  } else {
    df <- as.data.frame(utils::head(x, n))
  }

  if (is.na(rows)) {
    needs_dots <- (nrow(df) >= n)
  } else {
    needs_dots <- (rows > n)
  }

  if (needs_dots) {
    rows_missing <- rows - n
  } else {
    rows_missing <- 0L
  }

  rownames(df) <- NULL
  colonnade <- colonnade(
    df,
    has_row_id = if (.row_names_info(x) > 0) "*" else TRUE,
    width = width
  )

  squeezed <- squeeze_impl(colonnade)

  extra_cols <- extra_cols_impl(squeezed, n = max_extra_cols)

  trunc_info <- list(
    x = x,
    width = width,
    squeezed = squeezed, rows_missing = rows_missing,
    rows_total = rows, rows_min = nrow(df),
    extra_cols = extra_cols
  )

  structure(trunc_info, class = "pillar_tbl_format_setup")
}
