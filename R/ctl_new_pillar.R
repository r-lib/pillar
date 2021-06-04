#' Customize your tibble subclass
#'
#' Gain full control over the appearance of the pillars of your tibble subclass
#' in its body.
#' These methods are intended for implementers of subclasses of the `"tbl"`
#' class.
#' Users will rarely need them.
#'
#' `ctl_new_pillar()` is called to construct pillars for regular (one-dimensional)
#' vectors.
#' The default implementation returns an object constructed with [pillar()].
#' Extend this method to tweak pillar components returned from the default
#' implementation.
#' Override this method to completely change the appearance of the pillars.
#'
#' `ctl_new_compound_pillar()` is called for compound pillars: columns
#' that are data frames, matrices or arrays.
#' The default implementation returns a compound pillar with suitable formatting
#' for the titles and types of the sub-pillar.
#' Users will only rarely need to override this method if ever.
#'
#' All components must be of the same height.
#' This restriction may be levied in the future.
#'
#' Implementations should return `NULL` if none of the data
#' fits the available width.
#'
#' @inheritParams ellipsis::dots_empty
#' @param controller The object of class `"tbl"` currently printed.
#' @param x A vector, can also be a data frame, array or matrix
#'   in `ctl_new_compound_pillar()`
#' @param width The available width, can be a vector for multiple tiers
#' @param title The title, derived from the name of the column in the data
#'
#' @export
#' @examplesIf requireNamespace("palmerpenguins", quietly = TRUE) && requireNamespace("tibble", quietly = TRUE)
#' # Create pillar objects
#' ctl_new_pillar(
#'   palmerpenguins::penguins,
#'   palmerpenguins::penguins$species[1:3], width = 60
#' )
#' ctl_new_pillar(
#'   palmerpenguins::penguins,
#'   palmerpenguins::penguins$bill_length_mm[1:3],
#'   width = 60
#' )
#'
#' # Packed data frame
#' ctl_new_compound_pillar(
#'   tibble::tibble(),
#'   palmerpenguins::penguins,
#'   width = 60
#' )
#'
#' # Packed matrix
#' ctl_new_compound_pillar(tibble::tibble(), matrix(1:6, ncol = 2), width = 60)
#'
#' # Packed array
#' ctl_new_compound_pillar(tibble::tibble(), Titanic, width = 60)
#'
#' @examples
#'
#' # Customize output
#' lines <- function(char = "-") {
#'   stopifnot(nchar(char) == 1)
#'   structure(char, class = "lines")
#' }
#'
#' format.lines <- function(x, width, ...) {
#'   paste(rep(x, width), collapse = "")
#' }
#'
#' ctl_new_pillar.line_tbl <- function(controller, x, width, ..., title = NULL) {
#'   out <- NextMethod()
#'   new_pillar(list(
#'     title = out$title,
#'     type = out$type,
#'     lines = new_pillar_component(list(lines("=")), width = 1),
#'     data = out$data
#'   ))
#' }
#'
#' vctrs::new_data_frame(
#'   list(a = 1:3, b = letters[1:3]),
#'   class = c("line_tbl", "tbl")
#' )
#'
#' ctl_new_rowid_pillar.line_tbl <- function(controller, x, width, has_row_id, ..., title = NULL) {
#'   out <- NextMethod()
#'   new_pillar(
#'     list(
#'       title = out$title,
#'       type = out$type,
#'       lines = new_pillar_component(list(lines("=")), width = 1),
#'       data = out$data
#'     ),
#'     width = as.integer(floor(log10(max(nrow(x), 1))) + 1)
#'   )
#' }
#'
#' vctrs::new_data_frame(
#'   list(a = 1:3, b = letters[1:3]),
#'   class = c("line_tbl", "tbl")
#' )
#'
#' ctl_new_rowid_pillar.roman_tbl <- function(controller, x, width, has_row_id, ..., title = NULL) {
#'   out <- NextMethod()
#'   rowid <- utils::as.roman(seq_len(nrow(x)))
#'   width <- max(nchar(as.character(rowid)))
#'   new_pillar(
#'     list(
#'       title = out$title,
#'       type = out$type,
#'       data = pillar_component(
#'         new_pillar_shaft(list(row_ids = rowid),
#'           width = width,
#'           class = c("tbl_rif_shaft", "pillar_rif_shaft")
#'         )
#'       )
#'     ),
#'     width = width
#'   )
#' }
#'
#' vctrs::new_data_frame(
#'   list(a = 1:3, b = letters[1:3]),
#'   class = c("roman_tbl", "tbl")
#' )
#'
ctl_new_pillar <- function(controller, x, width, ..., title = NULL) {
  "!!!!DEBUG ctl_new_pillar(`v(width)`, `v(title)`)"

  check_dots_empty()

  if (length(width) == 0) {
    return(NULL)
  }

  UseMethod("ctl_new_pillar")
}

#' @rdname ctl_new_pillar
#' @export
ctl_new_compound_pillar <- function(controller, x, width, ..., title = NULL) {
  "!!!!DEBUG ctl_new_compound_pillar(`v(width)`, `v(title)`)"

  check_dots_empty()

  if (length(width) == 0) {
    return(NULL)
  }

  UseMethod("ctl_new_compound_pillar")
}

#' @param has_row_id Logical flag indicating whether to construct a row ID
#' pillar
#' @rdname ctl_new_pillar
#' @export
ctl_new_rowid_pillar <- function(controller, x, width, has_row_id, ..., title = NULL) {
  "!!!!DEBUG ctl_new_rowid_pillar(`v(width)`, `v(title)`)"

  check_dots_empty()

  if (length(width) == 0) {
    return(NULL)
  }

  if (is_false(has_row_id)) {
    return(NULL)
  }

  UseMethod("ctl_new_rowid_pillar")
}

#' @export
ctl_new_compound_pillar.tbl <- function(controller, x, width, ..., title = NULL) {
  "!!!!DEBUG ctl_new_compound_pillar.tbl(`v(width)`, `v(title)`)"

  if (is.data.frame(x)) {
    new_data_frame_pillar(x, controller, width, title = title)
  } else if (is.matrix(x)) {
    new_matrix_pillar(x, controller, width, title = title)
  } else if (is.array(x) && length(dim(x)) > 1) {
    new_array_pillar(x, controller, width, title = title)
  } else {
    ctl_new_pillar(controller, x, width, ..., title = prepare_title(title))
  }
}

#' @export
ctl_new_pillar.tbl <- function(controller, x, width, ..., title = NULL) {
  "!!!!DEBUG ctl_new_pillar.tbl(`v(width)`, `v(title)`)"

  pillar(x, title, if (!is.null(width)) max0(width))
}

#' @export
ctl_new_rowid_pillar.tbl <- function(controller, x, width, has_row_id, ..., title = NULL) {
  "!!!!DEBUG ctl_new_rowid_pillar.tbl(`v(width)`, `v(title)`)"

  template <- names(
    ctl_new_pillar(controller, vector(), width, title = title)
  )

  if (!length(template)) {
    return(NULL)
  }

  data <- rif_shaft(nrow(x))

  out <- map(set_names(template), function(.x) "")

  if ("type" %in% template) {
    out$type <- pillar_component(rif_type(identical(has_row_id, "*")))
  }

  if ("data" %in% template) {
    out$data <- pillar_component(data)
  }

  new_pillar(out, width = get_cell_widths(data))
}

max0 <- function(x) {
  if (length(x) > 0) {
    max(x)
  } else {
    0L
  }
}

# FIXME: Keep vectorized titles later
prepare_title <- function(title) {
  paste(title, collapse = "")
}
