#' Test la solution du Suduko si elle est valide ou non
#'
#'
#'@param A : une matrice
#'@return : True si la solution est valide, sinon False
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#' testcolonne (matrice)
#'@export
#'
 TestSuduko <- function(A){
   for(i in 1:9)
     for (j in 1:9 ) {
       k = A[i,j]
       B = A
       B [i,j] <- NA
      if(isFALSE( is_valid(B,i,j,k) ) ) return(FALSE)

   }

   return(TRUE)

 }




