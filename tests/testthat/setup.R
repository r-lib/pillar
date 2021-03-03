rlang::with_options(
  crayon.enabled = FALSE,
  crayon.colors = 1L,
  cli.num_colors = 1L,
  {
    num_colors(forget = TRUE)
  }
)

# Override .Rprofile
options(pillar.bold = FALSE)
