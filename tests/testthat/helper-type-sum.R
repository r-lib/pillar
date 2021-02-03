as_override_size_sum <- function(x) {
  structure(x, class = "override_size_sum")
}

size_sum.override_size_sum <- function(x, ...) {
  "SC"
}

registerS3method("size_sum", "override_size_sum", size_sum.override_size_sum, envir = asNamespace("pillar"))
