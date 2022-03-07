#' Data frame des indices des valeurs vides ainsi que leur nombre de possibilté
#'
#'
#'@param A : une matrice
#'@return : Data Frame
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#' Possiblite(matrice)
#'@export
#'

Possiblite<- function (A) {

  DF=data.frame()

    for (i in 1:9) {
    for (j in 1:9) {

    if(NbrPossiblite(A,i,j)!=0) { a= c(i,j,NbrPossiblite(A,i,j))
                                   DF <- rbind(DF,a) }
  }
  }

  return(DF[order(DF[,3],decreasing = T),])
}


