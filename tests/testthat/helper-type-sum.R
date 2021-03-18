as_override_type_sum_asis <- function(x) {
  structure(x, class = "override_type_sum_asis")
}

type_sum.override_type_sum_asis <- function(x, ...) {
  I("AsIs")
}

registerS3method("type_sum", "override_type_sum_asis", type_sum.override_type_sum_asis, envir = asNamespace("pillar"))

# Needed for head()
`[.override_type_sum_asis` <- function(x, ...) {
  as_override_type_sum_asis(NextMethod())
}

registerS3method("[", "override_type_sum_asis", `[.override_type_sum_asis`, envir = asNamespace("tibble"))


as_override_type_sum_custom <- function(x) {
  structure(x, class = "override_type_sum_custom")
}

type_sum.override_type_sum_custom <- function(x, ...) {
  structure("SC", class = "override_format_type_sum")
}

registerS3method("type_sum", "override_type_sum_custom", type_sum.override_type_sum_custom, envir = asNamespace("pillar"))

# Needed for head()
`[.override_type_sum_custom` <- function(x, ...) {
  as_override_type_sum_custom(NextMethod())
}

registerS3method("[", "override_type_sum_custom", `[.override_type_sum_custom`, envir = asNamespace("tibble"))

format_type_sum.override_format_type_sum <- function(x, ...) {
  "SC"
}

registerS3method("format_type_sum", "override_format_type_sum", format_type_sum.override_format_type_sum, envir = asNamespace("pillar"))
