#' @title La fonction qui return le num?ro du block
#'
#'
#'@param i : l'indice du ligne
#'@param j : l'indice du colonne
#'@return : Num?ro du block
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#' GitBlock(2 , 3)
#'@export
#'

GitBlock <- function(i, j)
{
  if (i %in% (1:3)) {
    if (j %in% (1:3))
      return(1)
    else if (j %in% (4:6))
      return(2)
    else
      return(3)
  }
  else if (i %in% (4:6)) {
    if (j %in% (1:3))
      return(4)
    else if (j %in% (4:6))
      return(5)
    else
      return(6)
  }
  else{
    if (j %in% (1:3))
      return(7)
    else if (j %in% (4:6))
      return(8)
    else
      return(9)
  }
}
