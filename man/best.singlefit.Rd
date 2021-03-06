% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dose_response_fitting.R
\name{best.singlefit}
\alias{best.singlefit}
\title{best.singlefit}
\usage{
best.singlefit(data, resp = "Birth_rate", conc = "CONC",
  type = "continuous", IC = "AIC", compare = FALSE, ...)
}
\arguments{
\item{data}{Concentration-effect dataframe.}

\item{resp}{Name of the column with the response values. Default is Birth_rate.}

\item{conc}{Name of the column with the drug concentration values.}

\item{type}{a character string specifying the data type (parameter estimation will depend on the data type as different log likelihood function will be used).}

\item{IC}{string for supplying the information criterion to be used. "AIC" and "BIC" are the two options. "AIC" by default.}

\item{compare}{logical indicating if the result of all the compared models should be returned (TRUE) or only the result of the model with the lowest AIC/BIC (FALSE, default)}

\item{...}{Additional arguments for the selection of the best model fitting function. See ?model.select for more info.}
}
\value{
This function returns the best model fitted to the data.
}
\description{
Function where linear and several non-linear models are used to fit the curve of single drug effects using drm from the drc package.
}
\examples{
\dontrun{
data(AU565_dataset) 
#Fit the data with a 4 parameter log-logistic function:
best.singlefit(AU565_dataset,resp="Viable.cells",conc="CONC")
# The best model is the 3 parameter log-logistic function. See ?drc::LL.3
#To see the objective function and AIC of all the compared functions, 
# use the compare argument of the function:
best.singlefit(AU565_dataset,resp="Viable.cells",conc="CONC",compare=T)
}
}
