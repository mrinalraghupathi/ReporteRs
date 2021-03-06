#' @title get a simple FlexTable from a dataset
#'
#' @description
#' get a simple FlexTable from a dataset
#' 
#' @param dataset the data to use
#' @param double.format format string for \code{double} column to 
#' format in the dataset. See argument \code{fmt} of \code{\link{sprintf}}.
#' @export
#' @examples
#' #START_TAG_TEST
#' vanilla.table( iris)
#' @example examples/STOP_TAG_TEST.R
#' @seealso \code{\link{FlexTable}}
vanilla.table = function( dataset, double.format = "%0.3f" ){
	for(j in names( dataset ) ){
		if( is.numeric( dataset[, j] ) )
			dataset[, j] = sprintf(double.format, dataset[, j] )
	}
	
	ft = FlexTable( dataset, add.rownames = TRUE )
	
	ft[,,to="header"] = textBold()
	ft[,,to="header"] = parRight()
	ft[,,to="body"] = textNormal()
	ft[,,to="body"] = parRight()
	
	ft = setFlexTableBorders( ft
			, inner.vertical = borderProperties( width=0 )
			, inner.horizontal = borderProperties( width=0 )
			, outer.vertical = borderProperties( width = 0 )
			, outer.horizontal = borderProperties( width = 2 )
	)
	ft
}

#' @title get a simple FlexTable from a dataset
#'
#' @description
#' get a simple FlexTable from a dataset
#' 
#' @param dataset the data to use
#' @param double.format format string for \code{double} column to 
#' format in the dataset. See argument \code{fmt} of \code{\link{sprintf}}.
#' @export
#' @examples
#' #START_TAG_TEST
#' light.table( iris)
#' @example examples/STOP_TAG_TEST.R
#' @seealso \code{\link{FlexTable}}
light.table = function( dataset, double.format = "%0.3f" ){
	for(j in names( dataset ) ){
		if( is.numeric( dataset[, j] ) )
			dataset[, j] = sprintf(double.format, dataset[, j] )
	}
	
	ft = FlexTable( dataset, add.rownames = TRUE )
	
	ft[,,to="header"] = textBold()
	ft[,,to="header"] = parRight()
	ft[,,to="body"] = textNormal()
	ft[,,to="body"] = parRight()
	
	ft = setFlexTableBorders( ft
			, inner.vertical = borderProperties( width = 1 )
			, inner.horizontal = borderProperties( width = 1 )
			, outer.vertical = borderProperties( width = 2 )
			, outer.horizontal = borderProperties( width = 2 )
	)
	ft
}


