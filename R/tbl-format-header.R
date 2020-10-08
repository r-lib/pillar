#' @export
tbl_format_header.default <- function(x, setup, ...) {
  # FIXME: Can we somehow pass the actual number of rows here,
  # perhaps as an attribute?
  named_header <- tbl_sum(x)
  if (all(names2(named_header) == "")) {
    header <- named_header
  } else {
    header <- paste0(
      justify(
        paste0(names2(named_header), ":"),
        right = FALSE, space = NBSP
      ),
      # We add a space after the NBSP inserted by justify()
      # so that wrapping occurs at the right location for very narrow outputs
      " ",
      named_header
    )
  }

  style_subtle(format_comment(header, width = setup$width))
}

justify <- function(x, right = TRUE, space = " ") {
  if (length(x) == 0L) return(character())
  width <- nchar(x, type = "width")
  max_width <- max(width)
  spaces_template <- paste(rep(space, max_width), collapse = "")
  spaces <- map_chr(max_width - width, substr, x = spaces_template, start = 1L)
  if (right) {
    paste0(spaces, x)
  } else {
    paste0(x, spaces)
  }
}
