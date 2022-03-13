#' @title Possiblite
#' Data frame des indices des valeurs vides ainsi que leur nombre de possibilte
#'
#'@param A : une matrice
#'@return : Data Frame
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#' A = Suduko()
#' A= genererSoduko(A,50)
#'
#' Possiblite (A)
#'@export
#'

Possiblite <- function (A) {

  DF <- data.frame()

  for (i in 1:9) {
    for (j in 1:9) {
      if (NbrPossiblite(A, i, j) != 0) {
        a <- c(i, j, NbrPossiblite(A, i, j))
        DF <- rbind(DF, a)
      }
    }
  }
  DF <- DF[order(DF[, 3], decreasing = T), ]
  return(DF)
}
