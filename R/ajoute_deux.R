#' Ajoute deux
#'
#' Prends un nombre quelconque en entrée, et retourne ce nombre plus deux.
#'
#' @param x Un numérique.
#'
#' @return y Ce numérique plus deux.
#' @export
#'
#' @examples
#'
#' ajoute_deux(7)
#'

ajoute_deux <- function(x){
  x=floor(x)
  y = x+2
  return(y)
}
