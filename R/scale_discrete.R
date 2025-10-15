#' Discrete NISRA colour scales
#'
#' @param reverse Reverse the palette, default `FALSE`
#' @param ... Additional arguments passed on to [ggplot2::discrete_scale()]
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(mpg, aes(cty, colour = factor(drv), fill = factor(drv))) +
#'   geom_density(alpha = 0.2) +
#'   scale_fill_discrete_nisra() +
#'   scale_colour_discrete_nisra()
scale_colour_discrete_nisra <- function(reverse = FALSE, ...) {
  ggplot2::discrete_scale(
    "colour",
    palette = nisra_palette(reverse = reverse),
    ...
  )
}

#' @export
#' @rdname scale_colour_discrete_nisra
scale_fill_discrete_nisra <- function(reverse = FALSE, ...) {
  ggplot2::discrete_scale(
    "fill",
    palette = nisra_palette(reverse = reverse),
    ...
  )
}
