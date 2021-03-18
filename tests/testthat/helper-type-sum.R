as_override_type_sum_asis <- function(x) {
  structure(x, class = "override_type_sum_asis")
}

as_override_type_sum_custom <- function(x) {
  structure(x, class = "override_type_sum_custom")
}

local_override_type_sum <- function(frame = caller_env()) {
  local_methods(
    .frame = frame,
    type_sum.override_type_sum_asis = function(x, ...) {
      I("AsIs")
    },
    # Needed for head()
    `[.override_type_sum_asis` = function(x, ...) {
      as_override_type_sum_asis(NextMethod())
    },
    type_sum.override_type_sum_custom = function(x, ...) {
      structure("SC", class = "override_format_type_sum")
    },
    # Needed for head()
    `[.override_type_sum_custom` = function(x, ...) {
      as_override_type_sum_custom(NextMethod())
    },
    format_type_sum.override_format_type_sum = function(x, ...) {
      "SC"
    }
  )
}
