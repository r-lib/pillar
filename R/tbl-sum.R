#' Provide a succinct summary of an object
#'
#' `tbl_sum()` gives a brief textual description of a table-like object,
#' which should include the dimensions and the data source in the first element,
#' and additional information in the other elements (such as grouping for \pkg{dplyr}).
#' The default implementation forwards to [pillar::obj_sum()].
#'
#' @return A named character vector, describing the dimensions in the first element
#'   and the data source in the name of the first element.
#'
#' @examples
#' tbl_sum(1:10)
#' tbl_sum(matrix(1:10))
#' tbl_sum(data.frame(a = 1))
#' tbl_sum(Sys.Date())
#' tbl_sum(Sys.time())
#' tbl_sum(mean)
#'
#' @seealso [pillar::type_sum()]
#' @param x Object to summarise.
#' @export
tbl_sum <- function(x) {
  UseMethod("tbl_sum", x)
}

#' @export
tbl_sum.default <- function(x) {
  c("Description" = obj_sum(x))
}

#' @export
tbl_sum.tbl <- function(x) {
  c("A data frame" = dim_desc(x))
}
