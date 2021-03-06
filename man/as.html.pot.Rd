\name{as.html.pot}
\alias{as.html.pot}
\title{get HTML code from a pot}
\usage{
\method{as.html}{pot}(object, ...)
}
\arguments{
  \item{object}{the \code{pot} object}

  \item{...}{further arguments passed to other methods}
}
\value{
a character value
}
\description{
get HTML code from a pot
}
\examples{
#START_TAG_TEST
my_pot = pot("My tailor", textProperties(color="red") ) + " is " + pot("rich"
	, textProperties(font.weight="bold") )
as.html( my_pot )
#STOP_TAG_TEST
}
\seealso{
\code{\link{pot}}
}

