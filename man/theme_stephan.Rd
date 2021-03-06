% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_adjust.R
\name{theme_stephan}
\alias{theme_stephan}
\title{Light ggplot2 theme adjusting the facet color}
\usage{
theme_stephan(...)
}
\arguments{
\item{...}{Other arguments passed to \code{theme_light}}
}
\description{
Light ggplot2 theme adjusting the facet color
}
\details{
The theme changes the facet presentation
}
\examples{
\dontrun{
library(ggplot2)
library(dplyr)

starwars \%>\%
  filter(mass < 1000,
         !is.na(gender)) \%>\%
  ggplot(aes(height, mass)) +
  geom_point() +
  facet_wrap(~gender) +
  theme_stephan()
}

}
