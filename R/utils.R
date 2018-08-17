cat_line <- function(...) {
  cat(..., "\n", sep = "")
}

str_trunc <- function(x, width) {
  if (is.infinite(width)) return(x)

  str_width <- utf8::utf8_width(crayon::strip_style(x), encode = FALSE)

  too_wide <- which(!is.na(x) & str_width > width)
  x[too_wide] <- paste0(fansi::substr_ctl(x[too_wide], 1, width - 1), get_ellipsis())

  x
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
  if (length(x) == 0) return(data.frame())
  eval_tidy(quo(rbind(!!!x)))
}

get_ellipsis <- function() {
  cli::symbol$continue
}

is_latex_output <- function() {
  if (!("knitr" %in% loadedNamespaces())) return(FALSE)
  get("is_latex_output", asNamespace("knitr"))()
}

remove_as_is_class <- function(x) {
  if (all(class(x) == "AsIs")) return(unclass(x))
  class(x) <- setdiff(class(x), "AsIs")
  x
}

diff_to_trunc <- function(x) {
  x - trunc(x)
}

# Only check if we have color support once per session
has_color <- local({
  has_color <- NULL
  function(forget = FALSE) {
    if (is.null(has_color) || forget) {
      has_color <<- crayon::has_color()
    }
    has_color
  }
})

# Crayon functions call crayon::has_color() every call
make_fast_style <- function(...) {
  style <- crayon::make_style(...)
  styles <- attr(style, "_styles")[[1]]
  open <- styles$open
  close <- styles$close
  function(...) {
    if (has_color()) {
      paste0(open, ..., close)
    } else {
      paste0(...)
    }
  }
}

underline <- make_fast_style("underline")

italic <- make_fast_style("italic")

red <- make_fast_style("red")
yellow <- make_fast_style("yellow")
bold <- make_fast_style("bold")
