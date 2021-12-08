#' Define the theme of the Apricitas blog
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(wt, mpg)) +
#'   geom_point() +
#'   theme_apricitas()
#' @import ggplot2
#' @export
theme_apricitas <- function() {
  hrbrthemes::theme_ft_rc() +
    theme(
      axis.line = element_line(colour = "white"),
      legend.position = c(.90, .90),
      legend.text = element_text(
        size = 14,
        color = "white"
      ),
      legend.title = element_text(size = 14),
      plot.title = element_text(
        size = 28,
        color = "white"
      )
    )
}
