#' An Oldest Player Function
#'
#' This function allows you to see which player was the oldest in a specific year
#' @param year Year of interest.
#' @keywords age
#' @export
#' @examples
#' player_oldest(2005)

player_oldest <- function(year){
  selected_year <- dplyr::filter(nba_data, nba_data$Year==year)
  age_arranged <- dplyr::arrange(selected_year,desc(Age))
  oldest_player <- age_arranged[1,2]
  returnValue(oldest_player)
}
