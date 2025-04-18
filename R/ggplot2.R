#' Scale that supports formatted numbers
#'
#' @description
#'  `r lifecycle::badge("experimental")`
#'
#' This scale is used by default in ggplot2 with columns created with [num()].
#'
#' @inheritDotParams ggplot2::continuous_scale -scale_name
#' @param guide,position Passed on to [ggplot2::continuous_scale()]
#' @param rescaler,super Must remain `NULL`.
#'
#' @keywords internal
#' @export
scale_x_num <- function(..., position = "bottom", guide = ggplot2::waiver(),
                        rescaler = NULL, super = NULL) {
  stopifnot(is.null(rescaler))
  stopifnot(is.null(super))
  check_installed("ggplot2")
  ggplot2::continuous_scale(
    aesthetics = c(
      "x", "xmin", "xmax", "xend", "xintercept", "xmin_final", "xmax_final",
      "xlower", "xmiddle", "xupper"
    ),
    palette = "position_c",
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
  check_installed("ggplot2")
  ggplot2::continuous_scale(
    aesthetics = c(
      "y", "ymin", "ymax", "yend", "yintercept", "ymin_final", "ymax_final",
      "lower", "middle", "upper"
    ),
    palette = "position_c",
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
      ansi_strip(out)
    },
    make_title = function(self, title, ...) {
      out <- ggplot2::ggproto_parent(ggplot2::ScaleContinuousPosition, self)$make_title(title, ...)
      pillar_attr <- attr(self$ptype, "pillar", exact = TRUE)
      if (!is.null(pillar_attr$fixed_exponent)) {
        shaft <- pillar_shaft_number_attr(numeric(), pillar_attr)
        if (pillar_attr$notation == "si") {
          type <- attr(shaft, "type")
          if (!is.null(type)) {
            out <- paste0(out, " ", ansi_strip(type[[1]]))
          }
        } else {
          # paste0() doesn't work here, paste() works like paste0()
          out <- quo_squash(quo(paste(!!out, " [", 10^!!shaft$sci$unit, "]")))
        }
      } else {
        label <- pillar_attr$label
        if (!is.null(label)) {
          out <- paste0(out, " [", label, "]")
        }
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
