#' @title Test une valeur si il existe dans une ligne
#'
#'
#'@param A : une matrice
#'@param i : l'indice du ligne
#'@param n ; valeur rechercher
#'@return : True si n existe deja dans la ligne, Sinon False
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#' A = matrix(1,9,9)
#' testligne (A , 2 , 5 )
#'@export
#'

testligne <- function (A,i,n) {


  if ( ( n %in% A[i,]) ) return(TRUE)

  else return(FALSE)

}
