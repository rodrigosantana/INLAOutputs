% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/WAIC.R
\name{WAIC}
\alias{WAIC}
\title{Watanabe-Akaike information criteria}
\usage{
WAIC(mods, decreasing = F)
}
\arguments{
\item{mods}{\code{\link{list}} of objects of \code{\link{class}} \code{inla} with computed WAIC.}

\item{decreasing}{logical. If \code{FALSE} (default), WAIC's are displayed in increasing order.}
}
\value{
\code{\link{matrix}} with models' WAIC.
}
\description{
Sort and display the Watanabe-Akaike information criteria of INLA models.
}
\examples{
data(sp)

mod1 <- inla(aan ~ offset(log(eaan)) +
                 f(id, model = 'bym', graph = sp.adj),
             family = 'poisson', data = spn,
             control.compute = list(waic = TRUE))

mod2 <- inla(aan ~ shvn + offset(log(eaan))+
                 f(id, model = 'bym', graph = sp.adj),
             family = 'poisson', data = spn,
             control.compute = list(waic = TRUE))

WAIC(list(mod1 = mod1, mod2 = mod2))
}
\references{
Gelman, Andrew, Jessica Hwang, and Aki Vehtari. "Understanding predictive information criteria for Bayesian models." Statistics and Computing 24.6 (2014): 997-1016.
}

