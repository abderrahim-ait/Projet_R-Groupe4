

#' @title Suprimer des valeur aliatoire dans un Soduku
#'
#'
#'@param A : une matrice
#'@param N ; nombre de valeur a suprimer
#'@return une matrice de tail 9x9 qui contient les valeurs vide
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#'  A = matrix(1,9,9)
#' A = genererSoduko (A , 54 )
#'@export
#'

genererSoduko <- function (A, N) {
  for (k in 1:N) {
    repeat {
      i = sample(1:9, 1, replace = TRUE)
      j = sample(1:9, 1, replace = TRUE)
      if (!is.na(A[i, j])) {
        break
      }
    }
    A[i, j] <- NA
  }

  return(A)
}
