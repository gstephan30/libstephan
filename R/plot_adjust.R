#' Light ggplot2 theme adjusting the facet color
#'
#' @param ... Other arguments passed to \code{theme_light}
#'
#' @details The theme changes the facet presentation
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(dplyr)
#'
#' starwars %>%
#'   filter(mass < 1000,
#'          !is.na(gender)) %>%
#'   ggplot(aes(height, mass)) +
#'   geom_point() +
#'   facet_wrap(~gender) +
#'   theme_stephan()
#'}
#'
#' @export
theme_stephan <- function(...){
  foo <- ggplot2::theme_light()
  foo$strip.background <- ggplot2::element_rect(fill = "#001540")
  foo$strip.text <- ggplot2::element_text(colour = 'white', face = "bold")
  foo$legend.position <- "bottom"
  foo
}
