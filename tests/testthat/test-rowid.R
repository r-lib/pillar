test_that("rowids for line-style", {

  lines <- function(char = "-") {
    stopifnot(nchar(char) == 1)
    structure(char, class = "lines")
  }

  format_lines <- function(x, width, ...) {
    paste(rep(x, width), collapse = "")
  }

  ctl_new_pillar_line_tbl <- function(controller, x, width, ..., title = NULL) {
    out <- NextMethod()
    new_pillar(list(
      title = out$title,
      type = out$type,
      lines = new_pillar_component(list(lines("=")), width = 1),
      data = out$data
    ))
  }

  ctl_new_rowid_pillar_line_tbl <- function(controller, x, width, ...) {
    out <- NextMethod()
    new_pillar(
      list(
        title = out$title,
        type = out$type,
        lines = new_pillar_component(list(lines("=")), width = 1),
        data = out$data
      ),
      width = as.integer(floor(log10(max(nrow(x), 1))) + 1)
    )
  }

  local_methods(
    format.lines = format_lines,
    ctl_new_pillar.line_tbl = ctl_new_pillar_line_tbl,
    ctl_new_rowid_pillar.line_tbl = ctl_new_rowid_pillar_line_tbl
  )

  expect_snapshot({
    vctrs::new_data_frame(
      list(a = 1:3, b = letters[1:3]),
      class = c("line_tbl", "tbl")
    )
  })
})

test_that("roman rowids", {

  ctl_new_rowid_pillar_roman_tbl <- function(controller, x, width, ...) {
    out <- NextMethod()
    rowid <- utils::as.roman(seq_len(nrow(x)))
    width <- max(nchar(as.character(rowid)))
    new_pillar(
      list(
        title = out$title,
        type = out$type,
        data = pillar_component(
          new_pillar_shaft(list(row_ids = rowid),
            width = width,
            class = "pillar_rif_shaft"
          )
        )
      ),
      width = width
    )
  }

  local_methods(
    ctl_new_rowid_pillar.roman_tbl = ctl_new_rowid_pillar_roman_tbl
  )

  expect_snapshot({
    vctrs::new_data_frame(
      list(a = 1:3, b = letters[1:3]),
      class = c("roman_tbl", "tbl")
    )
  })
})
