#' A correlation function
#'
#' This function returns a correlation matrix for all numeric variables in the data for that year.
#' @param year Year of interest
#' @keywords correlation
#' @export
#' @examples
#' correlation(2005)

correlation <- function(year){
  selected_year <- filter(nba_data,nba_data$Year==year)
  nba_numeric <- purrr::keep(selected_year, is.numeric)
  nba_numeric <- na.omit(nba_numeric)
  cor_result <- cor(nba_numeric)
  corrplot::corrplot(cor_result, method = "square")
}
