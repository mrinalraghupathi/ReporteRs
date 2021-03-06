\name{[<-.FlexRow}
\alias{[<-.FlexRow}
\alias{alterFlexRow}
\title{modify FlexRow content}
\usage{
\method{[}{FlexRow}(x, i) <- value
}
\arguments{
  \item{x}{the \code{FlexRow} object}

  \item{i}{a single integer value.}

  \item{value}{an object of class \code{\link{FlexCell}}}
}
\description{
add or replace FlexCell into a FlexRow object
}
\examples{
#START_TAG_TEST
## example with FlexCell
headerRow = FlexRow()
headerRow[1] = FlexCell( "Column 1"
  , cell.properties = cellProperties(background.color="#527578")  )
headerRow[2] = FlexCell( "Column 2"
  , cell.properties = cellProperties(background.color="#527578")  )
#STOP_TAG_TEST
}
\seealso{
\code{\link{FlexTable}}, \code{\link{addFlexTable}},
\code{\link{FlexRow}} , \code{\link{addHeaderRow}},
\code{\link{addFooterRow}}
}

