#' Scale that supports formatted numbers
#'
#' This scale is used by default in ggplot2 with columns created with [num()].
#'
#' @inheritDotParams ggplot2::continuous_scale
#' @param guide,position Passed on to [ggplot2::continuous_scale()]
#' @param rescaler,super Must remain `NULL`.
#'
#' @keywords internal
#' @export
scale_x_num <- function(..., position = "bottom", guide = ggplot2::waiver(),
                        rescaler = NULL, super = NULL) {
  stopifnot(is.null(rescaler))
  stopifnot(is.null(super))
  stopifnot(is_installed("ggplot2"))
  ggplot2::continuous_scale(
    c(
      "x", "xmin", "xmax", "xend", "xintercept", "xmin_final", "xmax_final",
      "xlower", "xmiddle", "xupper"
    ),
    "position_c", identity,
    ...,
    guide = guide,
    position = position,
    rescaler = scales::rescale,
    super = MakeScaleContinuousPositionNum()
  )
}

#' @rdname scale_x_num
#' @export
scale_y_num <- function(..., guide = ggplot2::waiver(),
                        rescaler = NULL, super = NULL) {
  stopifnot(is.null(rescaler))
  stopifnot(is.null(super))
  stopifnot(is_installed("ggplot2"))
  ggplot2::continuous_scale(
    c(
      "y", "ymin", "ymax", "yend", "yintercept", "ymin_final", "ymax_final",
      "lower", "middle", "upper"
    ),
    "position_c", identity,
    ...,
    guide = guide,
    rescaler = scales::rescale,
    super = MakeScaleContinuousPositionNum()
  )
}

MakeScaleContinuousPositionNum <- function() {
  ggplot2::ggproto("ScaleContinuousPositionNum", ggplot2::ScaleContinuousPosition,
    ptype = NULL,
    train = function(self, x) {
      self$ptype <- vec_ptype2(x, self$ptype)
      ggplot2::ggproto_parent(ggplot2::ScaleContinuousPosition, self)$train(x)
    },
    get_breaks = function(self, limits = self$get_limits()) {
      out <- ggplot2::ggproto_parent(ggplot2::ScaleContinuousPosition, self)$get_breaks(limits)
      vec_cast(out, self$ptype)
    },
    get_labels = function(self, breaks = self$get_breaks()) {
      out <- ggplot2::ggproto_parent(ggplot2::ScaleContinuousPosition, self)$get_labels(breaks)
      fansi::strip_sgr(out)
    },
    make_title = function(self, title) {
      out <- ggplot2::ggproto_parent(ggplot2::ScaleContinuousPosition, self)$make_title(title)
      pillar_attr <- attr(self$ptype, "pillar", exact = TRUE)
      label <- pillar_attr$label
      if (!is.null(label)) {
        out <- paste0(out, " [", label, "]")
      }
      out
    }
  )
}

# registered in .onLoad()
scale_type.pillar_num <- function(x) c("num", "continuous")

# registered in .onLoad()
rescale.pillar_num <- function(x,
                               to = c(0, 1),
                               from = range(x, na.rm = TRUE, finite = TRUE),
                               ...) {
  out <- scales::rescale(vec_data(x), to, from, ...)
  vec_cast(out, x)
}
