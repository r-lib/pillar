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
  #' Arbitrary components can be set via `new_pillar()`.
  #'
  #' - `title` via [new_pillar_title()]
  #' - `type` via [new_pillar_type()], which calls [type_sum()]
  #'   internally
  #' - `data` via [pillar_shaft()]
  #'
  #' Override or extend [ctl_pillar()] or [ctl_compound_pillar()]
  #' for your tibble subclass
  #' to support creation of arbitrary pillar components.
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

rowidformat2 <- function(data, names, has_star) {
  out <- map(set_names(names), function(.x) "")

  if ("type" %in% names) {
    out$type <- pillar_box(rif_type(has_star))
  }

  if ("data" %in% names) {
    out$data <- pillar_box(data)
  }

  new_pillar(out)
}

#' @export
new_pillar <- function(.base = list(), ..., .width = NULL, .class = NULL) {
  structure(
    modifyList(.base, list(...)),
    width = .width,
    class = c(.class, "pillar")
  )
}

#' @export
format.pillar <- function(x, width = NULL, ...) {
  if (is.null(width)) {
    width <- get_width(x)
  }

  if (is.null(width)) {
    widths <- pillar_get_widths(x)
    width <- sum(widths) - length(widths) + 1L
  }

  out <- pillar_format_parts_2(x, width)

  new_vertical(unlist(unname(out)))
}

#' @export
print.pillar <- function(x, ...) {
  writeLines(style_bold("<pillar>"))
  print(format(x, ...))
}
