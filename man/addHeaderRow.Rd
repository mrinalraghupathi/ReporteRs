\name{addHeaderRow}
\alias{addHeaderRow}
\title{add header in a FlexTable}
\usage{
addHeaderRow(x, value, colspan, text.properties, par.properties,
  cell.properties)
}
\arguments{
  \item{x}{a \code{FlexTable} object}

  \item{value}{\code{FlexRow} object to insert as an header
  row or a character vector specifying labels to use as
  columns labels.}

  \item{colspan}{integer vector. Optional. Applies only
  when argument \code{value} is a character vector. Vector
  specifying the number of columns to span for each
  corresponding value (in \code{values}).}

  \item{text.properties}{Optional. textProperties to apply
  to each cell. Used only if values are not missing.
  Default is the value of argument \code{header.text.props}
  provided to funtion \code{FlexTable} when object has been
  created}

  \item{par.properties}{Optional. parProperties to apply to
  each cell. Used only if values are not missing. Default
  is the value of argument \code{header.par.props} provided
  to funtion \code{FlexTable} when object has been created}

  \item{cell.properties}{Optional. cellProperties to apply
  to each cell. Used only if values are not missing.
  Default is the value of argument \code{header.cell.props}
  provided to funtion \code{FlexTable} when object has been
  created}
}
\description{
add a header row in a FlexTable
}
\examples{
#START_TAG_TEST
#############################
# simple example
#############################

# set header.columns to FALSE so that default header row is not added in
# the FlexTable object
# We do only want the 4 first columns of the dataset
MyFTable = FlexTable( data = iris[46:55, ], header.columns = FALSE )

# add an header row with 3 cells, the first one spans two columns, 
# the second one spans two columns and the last one does not span 
# multiple columns
MyFTable = addHeaderRow( MyFTable, 
  value = c("Sepal", "Petal", ""), 
  colspan = c( 2, 2, 1) 
)

# add an header row with modified table columns labels
MyFTable = addHeaderRow( MyFTable, 
  value=c("Length", "Width", "Length", "Width", "Species")
)
#######################################
# how to change default formats
#######################################

MyFTable = FlexTable( data = iris[46:55, ], header.columns = FALSE, 
  body.cell.props = cellProperties(border.color="#7895A2")
)
# add an header row with table columns labels
MyFTable = addHeaderRow( MyFTable, 
  text.properties = textProperties(color = "#517281", font.weight="bold"), 
  cell.properties = cellProperties(border.color="#7895A2"), 
  value = c("Sepal Length", "Sepal Width", "Sepal Length", "Sepal Width", "Species")
)
#STOP_TAG_TEST
}
\seealso{
\code{\link{FlexTable}}, \code{\link{addFooterRow}} ,
\code{\link{alterFlexTable}}
}

