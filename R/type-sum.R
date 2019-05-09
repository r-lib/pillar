#' Provide a succinct summary of an object
#'
#' @description
#' \Sexpr[results=rd, stage=render]{tibble:::lifecycle("questioning")}
#'
#' @description
#' `type_sum()` gives a brief summary of object type. Objects that commonly
#' occur in a data frame should return a string with four or less characters.
#'
#' @section Lifecycle:
#' `type_sum()` is in the "questioning" stage, because [vctrs::vec_ptype_abbr()]
#' provides essentially the same functionality based on a robust framework.
#' It will remain available for a while.
#' Users and implementers are encouraged to consider `vctrs::vec_ptype_abbr()`
#' once it becomes stable.
#'
#' @param x an object to summarise. Generally only methods of atomic vectors
#'   and variants have been implemented.
#'
#' @export
type_sum <- function(x) UseMethod("type_sum")

#' @export
type_sum.ordered <- function(x) {
  # r-lib/vctrs#323:
  type_sum.default(x)
}

#' @export
type_sum.factor <- function(x) {
  # r-lib/vctrs#323:
  "fct"
}

#' @export
type_sum.default <- function(x) {
  if (is.object(x)) return(vctrs::vec_ptype_abbr(x))
  # r-lib/vctrs#323:
  if (typeof(x) == "complex") return("cpl")
  if (vec_is(x)) return(vctrs::vec_ptype_abbr(x))

  switch(typeof(x),
    builtin = ,
    special = ,
    closure = "fn",
    environment = "env",
    symbol =
      if (is_missing(x)) {
        "missing"
      } else {
        "sym"
      },

    typeof(x)
  )
}

# vec_is() needs vctrs > 0.1.0
# Defined in .onLoad()
vec_is <- NULL

compat_vec_is <- function(x) {
  is_vector(x)
}

vec_ptype_abbr.pillar_empty_col <- function(x) {
  vctrs::vec_ptype_abbr(x[[1]])
}

#' @description
#' `obj_sum()` also includes the size of the object if `is_vector_s3()`
#' is `TRUE`.
#'
#' @keywords internal
#' @examples
#' obj_sum(1:10)
#' obj_sum(matrix(1:10))
#' obj_sum(Sys.Date())
#' obj_sum(Sys.time())
#' obj_sum(mean)
#' @rdname type_sum
#' @export
obj_sum <- function(x) UseMethod("obj_sum")

#' @export
obj_sum.default <- function(x) {
  paste0(type_sum(x), size_sum(x))
}

#' @export
obj_sum.list <- function(x) {
  map_chr(x, obj_sum.default)
}

#' @export
obj_sum.POSIXlt <- function(x) {
  rep("POSIXlt", length(x))
}

#' @export
obj_sum.AsIs <- function(x) {
  paste0("I(", obj_sum(remove_as_is_class(x)), ")")
}

#' @export
#' @rdname type_sum
is_vector_s3 <- function(x) UseMethod("is_vector_s3")
#' @export
is_vector_s3.ordered <- function(x) TRUE
#' @export
is_vector_s3.factor <- function(x) TRUE
#' @export
is_vector_s3.Date <- function(x) TRUE
#' @export
is_vector_s3.POSIXct <- function(x) TRUE
#' @export
is_vector_s3.difftime <- function(x) TRUE
#' @export
is_vector_s3.data.frame <- function(x) TRUE
#' @export
is_vector_s3.default <- function(x) !is.object(x) && is_vector(x)
