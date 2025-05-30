% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kernels.R
\name{r_g_kern}
\alias{r_g_kern}
\title{Sample from the angular kernel density}
\usage{
r_g_kern(n, d, h, kernel = "1", k = 10)
}
\arguments{
\item{n}{sample size.}

\item{d}{vector of size \code{r} with dimensions.}

\item{h}{vector of size \code{r} with bandwidths.}

\item{kernel}{kernel employed: \code{1} for von Mises--Fisher (default);
\code{2} for Epanechnikov; \code{3} for softplus.}

\item{k}{softplus kernel parameter. Defaults to \code{10.0}.}
}
\value{
A vector of size \code{n} with the sample.
}
\description{
Simulation from the angular density function of an isotropic
kernel on the sphere \eqn{\mathcal{S}^d}.
}
\examples{
hist(r_g_kern(n = 1e3, d = 2, h = 1, kernel = "1"), breaks = 30,
     probability = TRUE, main = "", xlim = c(-1, 1))
hist(r_g_kern(n = 1e3, d = 2, h = 1, kernel = "2"), breaks = 30,
     probability = TRUE, main = "", xlim = c(-1, 1))
hist(r_g_kern(n = 1e3, d = 2, h = 1, kernel = "3"), breaks = 30,
     probability = TRUE, main = "", xlim = c(-1, 1))
}
