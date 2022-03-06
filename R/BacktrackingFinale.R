
BacktrackingFinale <- function(B) {
  
  A <<- B
  
  Tligne = matrix(data = NA, nrow = 9, ncol = 9)
  Tcolonne = matrix(data = NA, nrow = 9, ncol = 9)
  Tblock = matrix(data = NA, nrow = 9, ncol = 9)
  for (k in 1:9)
    for (z in 1:9) {
      Tligne[k,z] <<- testligne(A,k,z)
      Tcolonne[k,z] <<- testcolonne(A,k,z)
      Tblock[k,z] <<- testBlock(A,k,(3*k-1)%%9,z)
    }
  DF=Possibilite(A)
  n = nrow(DF)
  nbr <<- 0
  Backtracking(A,DF,n)
  Vr = list(A,nbr)
  return(Vr)
}
