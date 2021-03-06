\name{styles.docx}
\alias{styles.docx}
\title{Get styles names of a docx document}
\usage{
\method{styles}{docx}(doc, ...)
}
\arguments{
  \item{doc}{Object of class \code{docx} to extract style
  names from.}

  \item{...}{further arguments, not used.}
}
\description{
Get styles names that exist into the template (base
document).
}
\details{
Available styles will be paragraph styles of the base
document (e.g. Normal, Title1, etc.). Names of the returned
character vector are labels associated with styles names.
}
\examples{
#START_TAG_TEST
# Create a new document
doc = docx( title = "title" )
styles(doc) #returns available paragraph styles in a character vector
#STOP_TAG_TEST
}
\seealso{
\code{\link{docx}}, \code{\link{styles}}
}

