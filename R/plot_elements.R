#' Get different plot elements
#'
#' @import ggplot2
#'
#' @export
plot_elements = function() {
    color_palette = c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442",
                       "#0072B2", "#D55E00", "#CC79A7")
    p_width <- 11.5
    plot_theme <- theme_bw() +
    theme(axis.text=element_text(size=14),
          axis.title=element_text(size=22),
          legend.text=element_text(size=14),
          legend.title=element_text(size=22),
          strip.text.x = element_text(size = 14))
    return(list('p_width' = p_width,
                'colors' = color_palette,
                'theme' = plot_theme))
}

#' Rotate the labels of the x axis
#'
#' @import ggplot2
#' @param angle angle by which to rotate the labels
#'
#' @export
rotate_labels = function(angle = 60) {
    return(theme(axis.text.x = element_text(angle = angle, hjust = 1)))
}
