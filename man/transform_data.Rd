% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transform.R
\name{transform_data}
\alias{transform_data}
\title{Transform Spatial Data}
\usage{
transform_data(data, var, sf_object, ratio = 0.08, area = TRUE)
}
\arguments{
\item{data}{A data frame containing the variable to be transformed.}

\item{var}{A string representing the name of the variable in the data frame to be transformed.}

\item{sf_object}{A spatial object of class sf, sfc or sfg.}

\item{ratio}{A numeric value representing the ratio used for scaling (default is 0.08).}

\item{area}{A logical value indicating whether the transformation should be based on area (default is TRUE).}
}
\value{
A list containing the data frame with the transformed variable and the multiplier used for the transformation.
}
\description{
This function transforms a variable in a data frame based on the area of spatial features.
It then adds the transformed variable as a new column (r) to the data frame.
}
\examples{
\dontrun{
data <- read.csv('your_data.csv')
sf_object <- sf::st_read('path_to_your_shapefile.shp')
transformed_data <- transform_data(data, 'your_variable', sf_object, ratio = 0.1, area = TRUE)
}
}
