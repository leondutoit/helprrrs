
#' @import stringr

#' @export
#' return a date from unix ts in milliseconds
make_date <- function(x) {
  as.Date(as.POSIXct(x/1000, origin = "1970-01-01"))
}

#' @export
#' fuzzy match on pattern and return distinct matches
#' operates on a dataframe column
distinct_fuzzy_match <- function(df, column_name, pattern) {
  unique_entries <- unique(df[[column_name]])
  matches <- str_detect(unique_entries, pattern)
  unique_entries[matches]
}
