\name{DropDownMenu}
\alias{DropDownMenu}
\title{Create a bootstrap DropDownMenu}
\usage{
DropDownMenu(label)
}
\arguments{
  \item{label}{\code{"character"} value: label of the
  DropDownMenu.}
}
\value{
an object of class \code{DropDownMenu}.
}
\description{
Create a \code{DropDownMenu} object. This object is to be
used with \code{\link{BootstrapMenu}} to define menu links.
}
\examples{
#START_TAG_TEST
mydd = DropDownMenu( label = "My menu" )
mydd = addLinkItem( mydd, label = "GitHub", "http://github.com/", active = TRUE)
mydd = addLinkItem( mydd, separator.after = TRUE)
mydd = addLinkItem( mydd, label = "Wikipedia", "http://www.wikipedia.fr")
#STOP_TAG_TEST
}
\seealso{
\code{\link{bsdoc}}, \code{\link{addLinkItem}},
\code{\link{addBootstrapMenu}}
}

