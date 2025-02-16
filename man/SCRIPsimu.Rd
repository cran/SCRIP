% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SCRIPsimu.R
\name{SCRIPsimu}
\alias{SCRIPsimu}
\title{SCRIP simulation}
\usage{
SCRIPsimu(
  data,
  params,
  method = "single",
  base_allcellmeans_SC = NULL,
  pre.bcv.df = NULL,
  libsize = NULL,
  bcv.shrink = 1,
  Dropout_rate = NULL,
  mode = "GP-trendedBCV",
  de.prob = NULL,
  de.downProb = NULL,
  de.facLoc = NULL,
  de.facScale = NULL,
  path.skew = NULL,
  batch.facLoc = NULL,
  batch.facScale = NULL,
  path.nSteps = NULL,
  ...
)
}
\arguments{
\item{data}{data matrix required to fit the mean-BCV trend for simulation}

\item{params}{SplatParams object containing parameters for the simulation}

\item{method}{"single", "groups" or "paths"}

\item{base_allcellmeans_SC}{base mean vector provided to help setting DE analysis}

\item{pre.bcv.df}{BCV.df enables us to change the variation of BCV values}

\item{libsize}{library size can be provided directly}

\item{bcv.shrink}{factor to control the BCV levels}

\item{Dropout_rate}{factor to control the dropout rate directly}

\item{mode}{"GP-commonBCV", "BP-commonBCV", "BP", "BGP-commonBCV" and "BGP-trendedBCV"}

\item{de.prob}{the proportion of DE genes}

\item{de.downProb}{the proportion of down-regulated DE genes}

\item{de.facLoc}{DE location factor}

\item{de.facScale}{DE scale factor}

\item{path.skew}{Controls how likely cells are from the start or end point of the path}

\item{batch.facLoc}{DE location factor in batch}

\item{batch.facScale}{DE scale factor in batch}

\item{path.nSteps}{number of steps between the start point and end point for each path}

\item{...}{Other parameters}
}
\value{
SingleCellExperiment file
}
\description{
Simulate count data for single cell RNA-sequencing using SCIRP method
}
\examples{
data(params_acinar)
data(acinar.data)
sim_trend = SCRIPsimu(data=acinar.data, params=params_acinar, mode="GP-trendedBCV")

}
