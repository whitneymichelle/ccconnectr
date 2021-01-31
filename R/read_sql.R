#' Read in SQL File to Dataframe
#'
#' @param FUN name of function used to connect to database, con_ob() or con_cs()
#' @param file sql file name to be read in
#'
#' @return
#' @export
#'
#'
read_sql <- function (FUN = con_ob(), file) {

  file <- readr::read_file(file)
  qry <- DBI::dbSendQuery(FUN, file)
  df <- DBI::dbFetch(qry)
  DBI::dbClearResult(qry)

return(df)

}

#' Read in SQL File with Parameters to Dataframe
#'
#' @param FUN name of function used to connect to database, con_ob() or con_cs()
#' @param file sql file name to be read in
#' @param list list of parameters that are in the SQL code, may need use of paste for list (list <- list(paste(param), paste(param)))
#'
#' @return
#' @export
#'
#'
read_sql_params <- function (FUN = con_ob(), file, list) {

  file <- readr::read_file(file)
  qry <- DBI::dbSendQuery(FUN, file)
  qry <- DBI::dbBind(qry, list)
  df <- DBI::dbFetch(qry)
  DBI::dbClearResult(qry)

  return(df)

}
