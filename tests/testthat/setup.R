rlang::with_options(
  cli.num_colors = 1L,
  {
    num_colors(forget = TRUE)
  }
)

# Override .Rprofile
walk(pillar_options, do.call, list(NULL))
