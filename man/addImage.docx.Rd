\name{addImage.docx}
\alias{addImage.docx}
\title{Add external image into a docx object}
\usage{
\method{addImage}{docx}(doc, filename, bookmark,
  par.properties = parProperties(text.align = "center", padding = 5), width,
  height, ...)
}
\arguments{
  \item{doc}{Object of class \code{\link{docx}} where
  external image has to be added}

  \item{filename}{\code{"character"} value, complete
  filename of the external image}

  \item{bookmark}{a character value ; id of the Word
  bookmark to replace by the image. optional. if missing,
  image is added at the end of the document. See
  \code{\link{bookmark}}.}

  \item{par.properties}{paragraph formatting properties of
  the paragraph that contains images. An object of class
  \code{\link{parProperties}}}

  \item{width}{image width in inch}

  \item{height}{image height in inch}

  \item{...}{further arguments, not used.}
}
\value{
an object of class \code{\link{docx}}.
}
\description{
Add external images into a \code{\link{docx}} object.
}
\note{
If the following message is displayed: \code{can not read
dpi, assuming 96 dpi.} ReporteRs try to read dpi from
images when \code{width} and \code{height} are unknown. If
it fails, the message is displayed and a value of 96 dpi is
assumed. To avoid this, specify arguments \code{width} and
\code{height} ; ReporteRs won't try to read dpi value.
}
\examples{
#START_TAG_TEST
doc.filename = "addImage_example.docx"

# set default font size to 10
options( "ReporteRs-fontsize" = 10 )

doc = docx( )
# the file 'logo.jpg' only exists in R for Windows
img.file = file.path( Sys.getenv("R_HOME"), "doc", "html", "logo.jpg" )
doc = addImage(doc, img.file )

# Write the object
writeDoc( doc, file = doc.filename )
#STOP_TAG_TEST
}
\seealso{
\code{\link{docx}}, \code{\link{addPlot.docx}} ,
\code{\link{addImage}}, \code{\link{bookmark}}
}

