\name{writeDoc.pptx}
\alias{writeDoc.pptx}
\title{Write a pptx object in a pptx file}
\usage{
\method{writeDoc}{pptx}(doc, file, ...)
}
\arguments{
  \item{doc}{\code{\link{pptx}} object that has to be
  written.}

  \item{file}{single character value, name of the file to
  write.}

  \item{...}{further arguments, not used.}
}
\description{
Write the \code{\link{pptx}} object in a '.pptx' file.
}
\examples{
#START_TAG_TEST
# Create a new document
doc = pptx( title = "title" )

# add a slide with layout "Title and Content"
doc = addSlide( doc, slide.layout = "Title and Content" )

# add a dummy text in the content shape
doc = addParagraph(doc, "Hello Word!")

# Write the object in file "writeDoc_example.pptx"
writeDoc( doc, "writeDoc_example.pptx" )
#STOP_TAG_TEST
}
\seealso{
\code{\link{pptx}}, \code{\link{writeDoc}}
}

