rlang::with_options(
  cli.num_colors = 1L,
  {
    num_colors(forget = TRUE)
  }
)

# Override .Rprofile
options(pillar.bold = FALSE)
