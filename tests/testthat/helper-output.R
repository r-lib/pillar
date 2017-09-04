expect_colformat_output <- function(x, ..., filename,
                                    xp = add_special(x), xf = colformat(xp, ...),
                                    crayon = TRUE) {
  if (crayon) {
    old <- options(crayon.enabled = TRUE, crayon.colors = 16L)
    crayon::num_colors(forget = TRUE)
  } else {
    old <- options(crayon.enabled = FALSE)
  }

  on.exit({
    options(old)
    crayon::num_colors(forget = TRUE)
  })

  expect_output_file(print(xf), file.path("out", filename), update = TRUE)
}

add_special <- function(x) {
  x <- c(x, NA)
  if (is.numeric(x) && is.double(x)) {
    x <- c(x, -Inf, Inf)
  }
  x
}

show_output_in_terminal <- function() {
  system2("xterm", c("-e", shQuote("head tests/testthat/out/*; sleep 600")))
}

# A data frame with all major types
df_all <- list(
  a = c(1, 2.5, NA),
  b = c(1:2, NA),
  c = c(T, F, NA),
  d = c("a", "b", NA),
  e = factor(c("a", "b", NA)),
  f = as.Date("2015-12-09") + c(1:2, NA),
  g = as.POSIXct("2015-12-09 10:51:34 UTC") + c(1:2, NA),
  h = as.list(c(1:2, NA)),
  i = list(list(1, 2:3), list(4:6), list(NA))
)
