\name{addRScript.bsdoc}
\alias{addRScript.bsdoc}
\title{Add R script into a bsdoc object}
\usage{
\method{addRScript}{bsdoc}(doc, rscript, file, text, ...)
}
\arguments{
  \item{doc}{\code{\link{bsdoc}} object where expressions
  have to be added}

  \item{file}{R script file. Not used if text or rscript is
  provided.}

  \item{text}{character vector. The text to parse. Not used
  if file or rscript is provided.}

  \item{rscript}{an object of class \code{RScript}. Not
  used if file or text is provided.}

  \item{...}{further arguments, not used.}
}
\value{
an object of class \code{\link{bsdoc}}.
}
\description{
Add R script into a \code{\link{bsdoc}} object.
}
\details{
You have to one of the following argument: file or text or
rscript.
}
\examples{
#START_TAG_TEST
doc.filename = "addRScript_bsdoc/example.html"

# set default font size to 11
options( "ReporteRs-fontsize" = 11 )

doc = bsdoc( )
doc = addRScript(doc, text = "x = rnorm(100)
plot(density( x ) )" )

# Write the object
writeDoc( doc, file = doc.filename )
#STOP_TAG_TEST
}
\seealso{
\code{\link{bsdoc}}, \code{\link{addRScript}}
}

