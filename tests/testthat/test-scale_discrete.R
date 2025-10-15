test_that("scale_discrete works", {
  plot_fill <- ggplot2::ggplot(ggplot2::mpg,
                               ggplot2::aes(cty,
                                            fill = factor(drv))) +
    ggplot2::geom_density(alpha = 0.2) +
    scale_fill_discrete_nisra()

  vdiffr::expect_doppelganger("fill_discrete", plot_fill)

  plot_colour <- ggplot2::ggplot(ggplot2::mpg,
                                 ggplot2::aes(cty,
                                              colour = factor(drv))) +
    ggplot2::geom_density(alpha = 0.2) +
    scale_colour_discrete_nisra()

  vdiffr::expect_doppelganger("colour_discrete", plot_colour)
})
