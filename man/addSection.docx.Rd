\name{addSection.docx}
\alias{addSection.docx}
\title{Insert a slide into a pptx object}
\usage{
\method{addSection}{docx}(doc, landscape = FALSE, ncol = 1,
  space_between = 0.3, columns.only = FALSE, ...)
}
\arguments{
  \item{doc}{Object of class \code{\link{docx}} where
  section has to be added}

  \item{landscape}{logical value. Specify TRUE to get a
  section with horizontal page.}

  \item{ncol}{\code{integer} number to specify how many
  columns the section should contains.}

  \item{space_between}{width in inches of the space between
  columns of the section.}

  \item{columns.only}{logical value, if set to TRUE, no
  break page will (continuous section).}

  \item{...}{further arguments, not used.}
}
\value{
an object of class \code{\link{docx}}.
}
\description{
Add a slide into a \code{\link{pptx}} object.
}
\examples{
#START_TAG_TEST
doc.filename = "addSection.docx"

# set default font size to 10
options( "ReporteRs-fontsize" = 10 )

doc = docx( )
doc = addSection(doc, landscape = TRUE, ncol = 2 ) 
doc = addPlot( doc = doc, fun = function() {
		barplot( 1:8, col = 1:8 )
	}, width = 3, height = 3, pointsize = 5)

doc = addColumnBreak(doc ) 
doc = addFlexTable(doc, FlexTable(head(iris) ) )

doc = addSection(doc, ncol = 2 ) 
doc = addParagraph( doc = doc, "Text 1.", "Normal" )
doc = addColumnBreak(doc ) 
doc = addParagraph( doc = doc, "Text 2.", "Normal" )


doc = addSection(doc, ncol = 2, columns.only = TRUE ) 
doc = addFlexTable(doc, FlexTable(head(iris) ) )
doc = addColumnBreak(doc ) 
doc = addParagraph( doc = doc, "Text 3.", "Normal" )


doc = addSection(doc, ncol = 1, columns.only = TRUE ) 
doc = addFlexTable(doc, FlexTable(mtcars, add.rownames = TRUE) )
doc = addParagraph( doc = doc, "Text 4.", "Normal" )

# Write the object
writeDoc( doc, file = doc.filename )
#STOP_TAG_TEST
}
\seealso{
\code{\link{docx}}, \code{\link{addSection}}
}

