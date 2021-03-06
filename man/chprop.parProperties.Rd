\name{chprop.parProperties}
\alias{chprop.parProperties}
\title{Modify paragraph formatting properties}
\usage{
\method{chprop}{parProperties}(object, text.align, padding.bottom, padding.top,
  padding.left, padding.right, padding, list.style, level, border.bottom,
  border.left, border.top, border.right, shading.color, ...)
}
\arguments{
  \item{object}{\code{parProperties} object to modify}

  \item{text.align}{text alignment - a single character
  value, expected value is one of 'left', 'right',
  'center', 'justify'.}

  \item{padding.bottom}{paragraph bottom padding - 0 or
  positive integer value.}

  \item{padding.top}{paragraph top padding - 0 or positive
  integer value.}

  \item{padding.left}{paragraph left padding - 0 or
  positive integer value.}

  \item{padding.right}{paragraph right padding - 0 or
  positive integer value.}

  \item{padding}{paragraph padding - 0 or positive integer
  value. Argument \code{padding} overwrites arguments
  \code{padding.bottom}, \code{padding.top},
  \code{padding.left}, \code{padding.right}.}

  \item{list.style}{list style - a single character value,
  expected value is one of 'none' (default), 'unordered',
  'ordered', 'blockquote'.}

  \item{level}{list level if argument \code{list} is not
  'none'.}

  \item{border.bottom}{\code{\link{borderProperties}} for
  bottom border. overwrite all border.bottom.* if
  specified.}

  \item{border.left}{\code{\link{borderProperties}} for
  left border. overwrite all border.left.* if specified.}

  \item{border.top}{\code{\link{borderProperties}} for top
  border. overwrite all border.top.* if specified.}

  \item{border.right}{\code{\link{borderProperties}} for
  right border. overwrite all border.right.* if specified.}

  \item{shading.color}{shading color - a single character
  value specifying a valid color (e.g. "#000000" or
  "black").}

  \item{...}{further arguments - not used}
}
\value{
a \code{parProperties} object
}
\description{
Modify an object of class \code{parProperties}.
}
\examples{
#START_TAG_TEST
parProp = parProperties()

parProp01 = chprop( parProp, text.align = "center" )
parProp02 = chprop( parProp, padding.bottom = 2 )
parProp03 = chprop( parProp, padding.top = 2 )
parProp04 = chprop( parProp, padding.left = 2 )
parProp05 = chprop( parProp, padding = 2 )

parProp06 = chprop( parProp, padding = 2, text.align = "center" )
#STOP_TAG_TEST
}
\seealso{
\code{\link{parProperties}}
}

