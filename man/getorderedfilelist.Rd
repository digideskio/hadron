\name{getorderedfilelist}
\alias{getorderedfilelist}
\title{Creates an ordered filelist from a basename and a path}
\description{
  This function generates an ordered filelist by using a path and a
  basename and '*'.
}
\usage{
filelist <- getorderedfilelist(path="./", basename="onlinemeas", last.digits=4)
}
\arguments{
  \item{path}{
    the path to be searched
  }
  \item{basename}{
    the basename of the files
  }
  \item{last.digits}{
    the number of last characters in each filename to be used for
    ordering the list.
  }
}
\value{
  returns the ordered list of strings.
}
\details{
  All filenames are assumend to have equal length.
}
\seealso{
  \code{\link{readcmidatafiles}}, \code{\link{extract.obs}}
}
\examples{
\dontrun{filelist <- getorderedfilelist("ouptrc")}
}
\author{Carsten Urbach, \email{curbach@gmx.de}}
\keyword{file}
