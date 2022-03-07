#' Le calcule du nombre de possibilité dans une case
#'
#'
#'@param A : une matrice
#'@param j : l'indice du colonne
#'@param i : l'indice du ligne
#'@return : Le nombre de possibilté dans la case A[i,j]
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#' NbrPossiblite(matrice , 3, 2 )
#'@export
#'

NbrPossiblite<- function (A,i,j) {

  V=0
  if ( is.na(A[i,j])) {

   for (k in 1:9){

    if (is_valid(A,i,j,k)==FALSE) { V=V+1 }
  }
  }

return(V)
}
