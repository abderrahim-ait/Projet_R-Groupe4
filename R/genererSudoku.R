
#' Suprimer des valeur aléatoire dans un Sodoku
#'
#'
#'@param A : une matrice
#'@param N ; nombre de valeur à suprimer
#'@return une matrice de tail 9x9 qui contient les valeurs vide
#'@author AIT MOULAY ABDERRAHIM, JIAYUE YUAN
#'@examples
#' A = genererSudoku (matrice , nombre de valeur )
#'@export
#'

genererSudoku <- function (A,N) {

  k= sample(1:9,N,replace = TRUE)
  j= sample(1:9,N,replace = TRUE)

  for (i in 1:N) {

    A[k[i],j[i]] <- NA
  }

  return(A)
}
