% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SCRIPsimCluster.R
\name{simu_cluster}
\alias{simu_cluster}
\title{SCRIP simulation for clustering analysis with multiple cell types}
\usage{
simu_cluster(expre_data, pheno_data, CTlist, mode, nfeatures, seed = 2021)
}
\arguments{
\item{expre_data}{data matrix required for simulation}

\item{pheno_data}{phenotype data information}

\item{CTlist}{cell types used for simulation}

\item{mode}{"GP-commonBCV", "BP-commonBCV", "BP", "BGP-commonBCV" and "BGP-trendedBCV"}

\item{nfeatures}{parameter required for FinalVariable function in Seurat package}

\item{seed}{seed used for simulation}
}
\value{
simulated read counts data with cell type information
}
\description{
Simulate count data for clustering analysis by preserving variably expressed genes with multiple cell types
}
