#' Test une valeur si il est valide dans une case de la matrice
#'
#'
#'@param A : une matrice
#'@param j : l'indice du colonne
#'@param i : l'indice du ligne
#'@param n ; valeur rechercher
#'@return : True si il n'est pas valide, Sinon False
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#' testcolonne (matrice , 3, 2 , valeur )
#'@export
#'

is_valid<- function (A,i,j,n) {


  if ( (testBlock(A,i,j,n)==FALSE)&&(testligne(A,i,n)==FALSE)&&(testcolonne(A,j,n)==FALSE) ) return(TRUE)

  else return(FALSE)

}

