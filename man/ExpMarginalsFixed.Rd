% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ExpMarginalsFixed.R
\name{ExpMarginalsFixed}
\alias{ExpMarginalsFixed}
\title{Exponentaited fixed marginals}
\usage{
ExpMarginalsFixed(mod, mean = TRUE, quantiles = c(0.025, 0.975),
  sd = FALSE, mode = FALSE, rnd = 3)
}
\arguments{
\item{mod}{object of \code{\link{class}} \code{inla} with fixed marginals.}

\item{mean}{logical. If \code{TRUE} (default), the mean is computed.}

\item{quantiles}{\code{\link{numeric}} \code{\link{vector}} to indicate the quantiles to be computed.}

\item{sd}{logical. If \code{FALSE} (default), the standard deviation is not computed.}

\item{mode}{logical. If \code{FALSE} (default), the mode is not computed.}

\item{rnd}{integer indicating the number of decimal places (round) or significant digits (signif) to be used.}
}
\value{
\code{\link{matrix}} with summary statistics for relative risks or odds ratios.
}
\description{
Posterior relative risks or odds ratios.
}
\details{
Exponentaited random marginals represent relative risks for models with one of the following likelihoods: \code{poisson}, \code{zeroinflated.poisson.0}, \code{zeroinflated.poisson.1}, \code{zeroinflated.poisson.2}, \code{nbinomial}, \code{zeroinflated.nbinomial.0}, \code{zeroinflated.nbinomial.1}, \code{zeroinflated.nbinomial.2}. Exponentiated random marginals represent odds ratios for models with one of the followinglikelihoods: \code{binomial}, \code{zeroinflated.binomial.0}, \code{zeroinflated.binomial.1}.
}
\examples{
data(sp)
mod <- inla(aan ~ shvn + offset(log(eaan)) +
                f(id, model = 'bym', graph = sp.adj),
            family = 'poisson', data = spn)
ExpMarginalsFixed(mod)
}
\references{
Blangiardo, Marta, and Michela Cameletti. Spatial and Spatio-temporal Bayesian Models with R-INLA. John Wiley & Sons, 2015.
}

