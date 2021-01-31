#' Connect to Campus Solutions
#'
#' @return function
#' @export
#'
#'
con_cs <- function() {

  DBI::dbConnect(odbc::odbc(),
                 Driver = "SQL Server",
                 server = "10.27.251.87",
                 database = "DAQ_CampusSolution")
}


#' Connect to OpenBook
#'
#' @return function
#' @export
#'
#'
con_ob <- function() {

  DBI::dbConnect(odbc::odbc(),
                 Driver = "SQL Server",
                 server = "10.27.251.82",
                 database = "OpenBook")
}

