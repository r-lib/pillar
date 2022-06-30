#' Provide a succinct summary of an object
#'
#' `type_sum()` gives a brief summary of object type. Objects that commonly
#' occur in a data frame should return a string with four or less characters.
#' For most inputs, the argument is forwarded to [vctrs::vec_ptype_abbr()].
#'
#' When formatting a pillar,
#' `type_sum()` will be called on a slice of the column vector.
#' The formatted type should only depend on the type and not on the data,
#' to avoid confusion.
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
  pillar_attr <- attr(x, "pillar", exact = TRUE)

  label <- pillar_attr$label
  if (!is.null(label)) {
    return(I(label))
  }

  if (is.object(x) || vec_is(x)) {
    return(vec_ptype_abbr(x))
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

#' @export
vec_ptype_abbr.pillar_empty_col <- function(x, ...) {
  vec_ptype_abbr(x[[1]])
}

#' @description
#' `obj_sum()` also includes the size (but not the shape) of the object
#' if [vctrs::vec_is()] is `TRUE`.
#' It should always return a string (a character vector of length one).
#' As of pillar v1.6.1, the default method forwards to [vctrs::vec_ptype_abbr()]
#' for vectors and to [type_sum()] for other objects.
#' Previous versions always forwarded to [type_sum()].
#' An attribute named `"short"` in the return value will be picked up by
#' the [pillar_shaft()] method for lists, and used if space is limited.
#'
#' @examples
#' obj_sum(1:10)
#' obj_sum(matrix(1:10))
#' obj_sum(data.frame(a = 1))
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
  if (!vec_is(x)) {
    type_sum(x)
  } else {
    abbr <- vec_ptype_abbr(x, suffix_shape = FALSE)

    out <- paste(abbr, size_sum(x))
    if (is.array(x)) {
      short <- paste0(abbr, "[", symbol$ellipsis, "]")
    } else {
      short <- abbr
    }

    structure(out, short = short)
  }
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
  if (!vec_is(x)) {
    return("")
  }

  paste0("[", dim_desc(x), "]")
}
