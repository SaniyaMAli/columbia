#' A Player Assists Function
#'
#' This function allows you to see which player had the most assists in a specific year
#' @param year Year of interest.
#' @keywords assists
#' @export
#' @examples
#' player_stats(2005)

player_stats <- function(year){
  selected_year <- dplyr::filter(nba_data, nba_data$Year==year)
  assists_arranged <- dplyr::arrange(selected_year,desc(AST))
  player_name <- assists_arranged[1,2]
  return(player_name)
}
