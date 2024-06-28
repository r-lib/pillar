#' @importFrom utils head
df_head <- function(x, n) {
  if (!is.data.frame(x)) {
    as.data.frame(head(x, n))
  } else {
    vec_head(as.data.frame(x), n)
  }
}

vec_head <- function(x, n) {
  n <- min(n, vec_size(x))
  vec_slice(x, seq_len(n))
}

cat_line <- function(...) {
  cat(..., "\n", sep = "")
}

#' @importFrom utf8 utf8_width
#' @importFrom fansi strip_ctl substr2_ctl
str_trunc <- function(x, width, shorten = NULL) {
  if (all(is.infinite(width))) {
    return(x)
  }

  str_width <- get_extent(x)

  too_wide <- which(!is.na(x) & str_width > width)
  if (any(too_wide)) {
    x[too_wide] <- str_add_ellipsis(x[too_wide], str_width[too_wide], width, shorten)
  }

  x
}

str_add_ellipsis <- function(x, str_width, width, shorten) {
  if (length(x) == 0L) {
    return(x)
  }
  shorten <- shorten %||% "back"

  switch(shorten,
    back = {
      abbr <- substr2_ctl(x, 1, width - 1, type = "width")
      paste0(abbr, get_ellipsis())
    },
    untick = str_add_ellipsis_untick(x, str_width, width),
    untick_footnote = str_add_ellipsis_untick(x, str_width, width, footnote = TRUE),
    front = {
      abbr <- substr2_ctl(x, str_width - width + 2, str_width, type = "width")
      paste0(get_ellipsis(), abbr)
    },
    mid = {
      front_width <- ceiling(width / 2) - 1
      back_width <- width - front_width - 1
      abbr_front <- substr2_ctl(x, 1, front_width, type = "width")
      abbr_back <- substr2_ctl(x, str_width - back_width + 1, str_width, type = "width")
      paste0(abbr_front, get_ellipsis(), abbr_back)
    },
    abbreviate = {
      abbreviate(x, minlength = width, strict = TRUE)
    }
  )
}

str_add_ellipsis_untick <- function(x, str_width, width, footnote = FALSE) {
  stopifnot(length(x) == 1)
  stopifnot(str_width > width)

  if (footnote) {
    width <- width - 1L
  }

  # Removing ticks due to https://github.com/tidyverse/tibble/issues/838
  x_unticked <- gsub("`", "", x, fixed = TRUE)
  if (x_unticked != x) {
    x <- x_unticked
    str_width <- get_extent(x)
  }

  # Add ellipsis even if short enough after removal of ticks
  abbr <- substr2_ctl(x, 1, width - 1L, type = "width")
  abbr <- paste0(abbr, get_ellipsis())

  if (footnote) {
    # Placeholder, regular title can't end with this string,
    # we can use this to detect a footnote
    abbr <- paste0(abbr, "\u02df")
  }

  abbr
}

paste_with_space_if_needed <- function(x, y) {
  if (y == "") {
    x
  } else {
    paste(x, y)
  }
}

check_sigfig <- function(x) {
  stopifnot(is.numeric(x), length(x) == 1)
  x <- as.integer(x)
  if (x < 1L) {
    stop("Must show at least one significant figure", call. = FALSE)
  }

  x
}

slice <- function(df, index) {
  df[index, , drop = FALSE]
}

bind_rows <- function(x) {
  if (length(x) == 0) {
    return(data.frame())
  }
  eval_tidy(quo(rbind(!!!x)))
}

get_ellipsis <- function() {
  symbol$continue
}

is_latex_output <- function() {
  if (!("knitr" %in% loadedNamespaces())) {
    return(FALSE)
  }
  get("is_latex_output", asNamespace("knitr"))()
}

remove_as_is_class <- function(x) {
  if (all(class(x) == "AsIs")) {
    return(unclass(x))
  }
  class(x) <- setdiff(class(x), "AsIs")
  x
}

v <- function(x) {
  expr <- rlang::expr_deparse(substitute(x), width = Inf)
  paste0(expr, " = ", rlang::expr_deparse(x, width = 80)[[1]])
}

# Needed for R 3.4 and earlier
safe_is_na <- function(x) {
  if (is.null(x)) {
    return(logical())
  }
  is.na(x)
}

safe_any_na <- function(x) {
  anyNA(x)
}

vec_lead <- function(x, default = NULL) {
  n <- vec_size(x)
  if (n == 0) {
    return(x)
  }
  if (is.null(default)) {
    default <- vec_slice(x, NA_integer_)
  }
  vec_c(vec_slice(x, -1), default)
}

vec_lag <- function(x, default = vec_slice(x, NA_integer_)) {
  n <- vec_size(x)
  if (n == 0) {
    return(x)
  }
  if (is.null(default)) {
    default <- vec_slice(x, NA_integer_)
  }
  vec_c(default, vec_slice(x, -n))
}

super <- c(
  "\u00b9", "\u00b2", "\u00b3", "\u2074",
  "\u2075", "\u2076", "\u2077", "\u2078", "\u2079",
  "\u02df"
)

superdigit <- function(x) {
  if (cli::is_utf8_output()) {
    super[[min(x, 10)]]
  } else {
    if (x >= 10) "*" else as.character(x)
  }
}

superdigit_sep_default <- function() {
  if (cli::is_utf8_output()) {
    "\u200b"
  } else {
    ": "
  }
}
