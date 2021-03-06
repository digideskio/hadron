\name{bootstrap.analysis}
\alias{bootstrap.analysis}
\title{Performs a Bootstrap with Blocking Analysis of a Timeseries}
\description{
  Performs a Bootstrap with Blocking Analysis of a Timeseries
}
\usage{
bootstrap.analysis <- function(data, skip=0, boot.R=100, pl=F)
}
\arguments{

  \item{data}{
    a numerical vector containing the time series
  }
  \item{skip}{
    integer value providing the warm up phase length. 
  }
  \item{boot.R}{
    number of bootstrap samples. See also \code{boot}, and \code{tsboot}
    
  }
  \item{pl}{
    logical, indicating whether or not to plot the result.
  }
}
\value{
  returns a data frame containing the mean value, the error
  approximation, the estimate of the error of the error, the value of
  tau int and the bias for all block sizes.
}
\details{
  the routine will compute the error, the error of the error and the
  integrated autocorrelation time for different block size using a
  bootstrap analysis. The blocksize is systematically increased starting
  from \code{1} until \code{(length(data)-skip)/blocksize < 20}. Note
  that only data is kept in exact multiples of the block length.
}
\examples{
data(plaq.sample)
plaq.boot <- bootstrap.analysis(plaq.sample, pl=T)
}
\seealso{
  for an alternative way to analyse such time series see
  \code{\link{uwerr}} and \code{\link{computeacf}}
}
\author{Carsten Urbach, \email{carsten.urbach@liverpool.ac.uk}}
\keyword{ts}
