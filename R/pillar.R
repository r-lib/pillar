#' Format a vector suitable for tabular display
#'
#' @description
#' `r lifecycle::badge("stable")`
#'
#' `pillar()` formats a vector using one row for a title (if given),
#' one row for the type, and `length(x)` rows for the data.
#'
#' @param x A vector to format.
#' @param title An optional title for the column. The title will be
#'   used "as is", no quoting will be applied.
#' @param width Default width, optional.
#' @param ... Passed on to [pillar_shaft()].
#' @export
#' @examples
#' x <- 123456789 * (10 ^ c(-1, -3, -5, NA, -8, -10))
#' pillar(x)
#' pillar(-x)
#' pillar(runif(10))
#' pillar(rcauchy(20))
#'
#' # Special values are highlighted
#' pillar(c(runif(5), NA, NaN, Inf, -Inf))
#'
#' # Very wide ranges will be displayed in scientific format
#' pillar(c(1e10, 1e-10), width = 20)
#' pillar(c(1e10, 1e-10))
#'
#' x <- c(FALSE, NA, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE)
#' pillar(x)
#'
#' x <- c("This is string is rather long", NA, "?", "Short")
#' pillar(x)
#' pillar(x, width = 30)
#' pillar(x, width = 5)
#'
#' date <- as.Date("2017-05-15")
#' pillar(date + c(1, NA, 3:5))
#' pillar(as.POSIXct(date) + c(30, NA, 600, 3600, 86400))
pillar <- function(x, title = NULL, width = NULL, ...) {
  #' @details
  #' A pillar consists of arbitrary components.
  #' The `pillar()` constructor uses `title`, `type`, and `data`.
  #'
  #' - `title` via [new_pillar_title()]
  #' - `type` via [new_pillar_type()], which calls [type_sum()]
  #'   internally
  #' - `data` via [pillar_shaft()]
  #'
  #' Override [ctl_pillar()] or [ctl_compound_pillar()] to support
  #' creation of arbitrary pillar components for your tibble subclass.
  #'
  #' All components are formatted via [format()] when displaying the pillar.
  #' A `width` argument is passed to each `format()` call.
  if (is.null(width)) {
    my_width <- Inf
  } else {
    my_width <- width
  }

  title <- pillar_box(new_pillar_title(title))
  if (get_cell_min_widths(title) > my_width) {
    return(NULL)
  }

  type <- pillar_box(new_pillar_type(x))
  if (get_cell_min_widths(type) > my_width) {
    return(NULL)
  }

  shaft <- pillar_shaft(x, ...)
  data_min_width <- get_min_width(shaft)
  if (data_min_width > my_width) {
    return(NULL)
  }
  data_width <- get_width(shaft)

  data <- new_pillar_box(list(shaft), data_width, data_min_width)
  new_pillar(list(title = title, type = type, data = data), .width = width)
}

rowidformat <- function(n, has_title_row = FALSE, has_star = FALSE, ...) {
  capital <- rif_capital(has_title_row, has_star, ...)
  shaft <- rif_shaft(n, ...)
  new_pillar_1e(capital, shaft)
}

new_pillar_1e <- function(capital, shaft, width = NULL) {
  ret <- structure(
    list(capital = capital, shaft = shaft),
    class = "pillar_1e"
  )
  ret <- set_width(ret, width)
  ret
}

#' @export
format.pillar_1e <- function(x, width = NULL, ...) {
  width <- pillar_get_width(x, width)
  out <- pillar_format_parts(x, width)

  new_vertical(unlist(unname(out)))
}

#' @export
print.pillar_1e <- function(x, ...) {
  writeLines(style_bold("<pillar>"))
  print(format(x, ...))
}

pillar_get_width <- function(x, width) {
  if (is.null(width)) {
    width <- get_width(x)
  }

  if (is.null(width)) {
    widths <- get_widths(x)
    width <- max(widths)
  }

  min_widths <- max(get_min_widths(x))
  if (width < min_widths) width <- min_widths

  width
}

pillar_format_parts <- function(x, width, ...) {
  capital_format <- format(x$capital, width = width, ...)
  shaft_format <- format(x$shaft, width = width, ...)
  align <- attr(shaft_format, "align")

  capital_format <- align(capital_format, width = width, align = align)
  shaft_format <- align(shaft_format, width = width, align = align)

  list(
    capital_format = capital_format,
    shaft_format = shaft_format
  )
}

format_abbrev <- function(x, title = NULL) {
  type_format <- format_full_pillar_type(x)
  if (is.null(title)) {
    type_format
  } else {
    title_format <- format_full_pillar_title(title)
    paste0(title_format, "\u00a0", type_format)
  }
}
