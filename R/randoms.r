
#' @export
#' return a date from unix ts in milliseconds
make_date <- function(x) {
  as.Date(as.POSIXct(x/1000, origin = "1970-01-01"))
}
