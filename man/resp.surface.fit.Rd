% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/response_surface_fit.R
\name{resp.surface.fit}
\alias{resp.surface.fit}
\title{resp.surface.fit}
\usage{
resp.surface.fit(data, resp = "Birth_rate", conc1 = "CONC",
  conc2 = "CONC2", Drug1.name = "Drug 1", Drug2.name = "Drug 2",
  method = c("gam", "loess"))
}
\arguments{
\item{data}{Concentration-effect dataframe.}

\item{resp}{Name of the column with the response values. Default is Birth_rate.}

\item{conc1}{Name of the column with the concentration values for drug 1.}

\item{conc2}{Name of the column with the concentration values for drug 2.}

\item{Drug1.name}{string to specify the name of drug 1.}

\item{Drug2.name}{string to specify the name of drug 2.}

\item{method}{array to specify if a generalized additive model (gam) or  a polynomial surface (loess) model must be fitted to the data.}
}
\value{
This function returns a fitted gam object (see \code{\link[mgcv]{gamObject}} for a detailed description) or an object of class "loess".
}
\description{
Fits a generalized additive model (gam) or  a polynomial surface (loess) to data.
}
\examples{
\dontrun{
data(Dactolisib_Trametinib_rates)
gam.model=resp.surface.fit(GD,resp='Birth_rate',conc1='CONC',conc2='CONC2')
print(gam.model)
}
}
