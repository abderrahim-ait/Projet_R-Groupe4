#' Test une valeur si il existe dans une ligne
#'
#'
#'@param A : une matrice
#'@param i : l'indice du ligne
#'@param n ; valeur rechercher
#'@return : True si n existe deja dans la ligne, Sinon False
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#' testligne (matrice , 2 , valeur )
#'@export
#'

testligne <- function (A,i,n) {


  if ( ( n %in% A[i,]) ) return(TRUE)

  else return(FALSE)

}
