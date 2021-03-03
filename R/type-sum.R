#' Provide a succinct summary of an object
#'
#' `type_sum()` gives a brief summary of object type. Objects that commonly
#' occur in a data frame should return a string with four or less characters.
#' For most inputs, the argument is forwarded to [vctrs::vec_ptype_abbr()].
#'
#' @param x an object to summarise. Generally only methods of atomic vectors
#'   and variants have been implemented.
#'
#' @export
type_sum <- function(x) {
  UseMethod("type_sum")
}

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
  if (is.object(x) || vctrs::vec_is(x)) {
    return(vctrs::vec_ptype_abbr(x))
  }

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

# Registered in .onLoad()
vec_ptype_abbr.pillar_empty_col <- function(x, ...) {
  vctrs::vec_ptype_abbr(x[[1]])
}

#' @description
#' `obj_sum()` also includes the size of the object if `vctrs::vec_is()`
#' is `TRUE`.
#' It should always return a string (a character vector of length one).
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
obj_sum <- function(x) {
  UseMethod("obj_sum")
}

#' @export
obj_sum.default <- function(x) {
  paste_with_space_if_needed(type_sum(x), size_sum(x))
}

#' @export
obj_sum.AsIs <- function(x) {
  paste0("I(", obj_sum(remove_as_is_class(x)), ")")
}

#' @description
#' `size_sum()` is called by `obj_sum()` to format the size of the object.
#' It should always return a string (a character vector of length one),
#' it can be an empty string `""` to omit size information,
#' this is what the default method does for scalars.
#'
#' @keywords internal
#' @examples
#'
#' size_sum(1:10)
#' size_sum(trees)
#' size_sum(Titanic)
#' @rdname type_sum
#' @export
size_sum <- function(x) {
  UseMethod("size_sum")
}

#' @export
size_sum.default <- function(x) {
  if (!vctrs::vec_is(x)) {
    return("")
  }

  paste0("[", dim_desc(x), "]")
}
