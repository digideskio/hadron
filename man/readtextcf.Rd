\name{readtextcf}
\alias{readtextcf}
\title{Read correlator data from single file}
\description{
  Reads arbitrary number of samples for a complex correlation function
  from a text file. 
}
\usage{
readtextcf(file, T=48, sym=TRUE, path="", skip=1, check.t=0, ind.vector=c(2,3))
}
\arguments{
  \item{file}{
    filename of file to read from.
  }
  \item{T}{
    time extend of the correlation function
  }
  \item{sym}{
    if \code{TRUE} average C(+t) and C(-t), otherwise C(+t) and -C(-t). 
  }
  \item{skip}{
    number of lines to skip at beginning of file
  }
  \item{check.t}{
    if set to an integer value larger than zero the function will assume
    that in the corresponding column of the file the Euclidean time is
    counted and it will check whether the maximum in this column is
    identical to T-1.
  }
  \item{ind.vector}{
    index vector of length 2 with the indices of real and imaginary
    values of correlator, respectivley.
  }
}
\value{
  returns a list with two arrays \code{cf} and \code{icf} with real and
  imaginary parts of the correlator, and integers \code{Time},
  \code{nrStypes=1} and \code{nrObs=1}. Both of the arrays have dimension 
  \code{c(N, (Time/2+1))}, where \code{N} is the number of measurements
  (gauges).  \code{Time} is the time extend, \code{nrStypes} the number
  of smearing levels and \code{nrObs} the number of operators, both of
  which are currently fixed to 1.
}
\seealso{
  \code{\link{readcmidatafiles}}, \code{\link{readbinarydisc}},
  \code{\link{readcmidisc}}, \code{\link{readcmicor}}, \code{\link{readbinarycf}}
}
\author{Carsten Urbach, \email{curbach@gmx.de}}
\keyword{file}
