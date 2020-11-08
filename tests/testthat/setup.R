options(crayon.colors = 16L)

# Initialize crayon cache
withr::with_options(list(crayon.enabled = TRUE), crayon::num_colors(forget = TRUE))

# Override .Rprofile
options(pillar.bold = FALSE)
