#' Test une valeur si il existe dans un block
#'
#'
#'@param A : une matrice
#'@param i : l'indice du ligne
#'@param j : l'indice du colonne
#'@param n ; valeur rechercher
#'@return : True si n existe deja dans le bock, Sinon False
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#' testBlock (matrice , 2 , 5 , valeur )
#'@export
#'

testBlock <- function (A,i,j,n) {

 t  <- 1:3
 T1 <- t + ((i-1) %/% 3 )*3
 T2 <- t + ((j-1) %/% 3 )*3

if ( ( n %in% A[T1,T2]) ) return(TRUE)

else return(FALSE)

}
