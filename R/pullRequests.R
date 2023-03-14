#' Internal function for getting data from the API
#'
#' @param name Name of the table
#' @param mediConnection The API connection
#' @return A data.frame with the results
#' @noRd
getTable = function(name, mediConnection) {
  url = createURL(name, mediConnection)

  req = curl::curl_fetch_memory(url)

  as.data.frame(jsonlite::fromJSON(rawToChar(req$content)))
}

#' Gets all logged procedures from MediSkill
#'
#' @param mediConnection The API connection
#' @return A data.frame with the results
#' @export
getProcedures = function(mediConnection) {
  getTable("procedures", mediConnection)
}

#' Gets all VOT survey responses from MediSkill
#'
#' @param mediConnection The API connection
#' @return A data.frame with the results
#' @export
getVOTs = function(mediConnection) {
  getTable("vots", mediConnection)
}

#' Gets all OPERATE survey responses from MediSkill
#'
#' @param mediConnection The API connection
#' @return A data.frame with the results
#' @export
getOPERATEs = function(mediConnection) {
  getTable("operates", mediConnection)
}

#' Gets all EVARATE survey responses from MediSkill
#'
#' @param mediConnection The API connection
#' @return A data.frame with the results
#' @export
getEVARATEs = function(mediConnection) {
  getTable("evarates", mediConnection)
}

#' Gets all user details from MediSkill
#'
#' @param mediConnection The API connection
#' @return A data.frame with the results
#' @export
getUsers = function(mediConnection) {
  getTable("users", mediConnection)
}

#' Gets all supervisor details from MediSkill
#'
#' @param mediConnection The API connection
#' @return A data.frame with the results
#' @export
getSupervisors = function(mediConnection) {
  getTable("supervisors", mediConnection)
}
