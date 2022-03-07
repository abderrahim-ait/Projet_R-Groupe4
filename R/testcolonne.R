#' Test une valeur si il existe dans une colonne
#'
#'
#'@param A : une matrice
#'@param j : l'indice du colonne
#'@param n ; valeur rechercher
#'@return : True si n existe deja dans la colonne, Sinon False
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#' testcolonne (matrice , 2 , valeur )
#'@export
#'

testcolonne <- function (A,j,n) {


  if ( ( n %in% A[,j]) ) return(TRUE)

  else return(FALSE)

}
