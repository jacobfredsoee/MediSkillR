
#' Creates a connection object for the MediSkill API
#'
#' Usage:
#' mediConn = mediskillConnection('your token here')
#'
#' allProcedures = getProcedures(mediConn)
#'
#' @param url Base url for the api
#' @param token The API token
#' @return A connection object
#' @export
mediskillConnection = function (token, url = "https://mediskill.dk/API/") {

  if (is.na(url) && missing(conn))
    stop("Need one of url or conn")
  if (!is.na(url)) {
    if (missing(token))
      stop("Need an API token")
    return(structure(list(url = url, token = token, class = "mediskillConnection")))
  }
}


#' for creating the url string
#' @noRd
createURL = function(request, mediConnection) {
  slash = ifelse(substr(mediConnection$url, nchar(mediConnection$url), nchar(mediConnection$url)) == "/", "", "/")
  return(paste0(mediConnection$url, slash, request, "?token=", mediConnection$token))
}
