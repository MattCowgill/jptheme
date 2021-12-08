#' Define the theme of the Apricitas blog
#' @param text_size Size of legend text and title. Plot title is text_size * 2.
#' @param legend.position Legend position
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(wt, mpg)) +
#'   geom_point() +
#'   theme_apricitas()
#' @import ggplot2
#' @export
theme_apricitas <- function(text_size = 14,
                            legend.position = c(0.9, 0.9)) {
  suppressMessages(extrafont::loadfonts())
  roboto_present <- "Roboto Condensed" %in% extrafont::fonts()

  if (!roboto_present) {
    message("Roboto Condensed font not found; install with hrbrthemes::import_roboto_condensed()")
    font <- "sans"
  } else {
    font <- "Roboto Condensed"
  }


  hrbrthemes::theme_ft_rc(base_family = font) +
    theme(
      axis.line = element_line(colour = "white"),
      legend.position = legend.position,
      legend.text = element_text(
        size = text_size,
        color = "white"
      ),
      legend.title = element_text(size = text_size),
      plot.title = element_text(
        size = text_size * 2,
        color = "white"
      )
    )
}
