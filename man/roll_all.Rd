% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/roll.R
\name{roll_all}
\alias{roll_all}
\title{Rolling All}
\usage{
roll_all(x, width, min_obs = width, complete_obs = FALSE,
  na_restore = FALSE, online = TRUE)
}
\arguments{
\item{x}{logical vector or matrix. Rows are observations and columns are variables.}

\item{width}{integer. Window size.}

\item{min_obs}{integer. Minimum number of observations required to have a value within a window,
otherwise result is \code{NA}.}

\item{complete_obs}{logical. If \code{TRUE} then rows containing any missing values are removed,
if \code{FALSE} then each value is used.}

\item{na_restore}{logical. Should missing values be restored?}

\item{online}{logical. Process observations using an online algorithm.}
}
\value{
An object of the same class and dimension as \code{x} with the rolling and expanding
all.
}
\description{
A function for computing the rolling and expanding all of time-series data.
}
\examples{
n <- 15
x <- rnorm(n)

# rolling all with complete windows
roll_all(x < 0, width = 5)

# rolling all with partial windows
roll_all(x < 0, width = 5)

# expanding all with partial windows
roll_all(x < 0, width = n)
}
