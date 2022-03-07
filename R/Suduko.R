
#' Generation d'un suduko
#'
#'
#'@param : Sans paramétre
#'@return une matrice de tail 9x9 qui contient les chiffres du suduko
#'@author AIT MOULAY ABDERRAHIM
#'@examples
#' A = Suduko()
#'@export


Suduko <- function() {

# La création d'une matrice de dim = 9 x 9 remplier par des zéros

A <- matrix(data = 0, nrow = 9, ncol = 9)

# La remplissage de la 1 er ligne de la matrice

A[1,1:9] <- sample(1:9)

# La remplissage des 3 premier bloc avec la permutation des lignes

t= 1:3
j= 3
r= 0
for ( i in 1:3)
{
  A[2,t+j] <- A[1,t+r]
  A[3, t+r] <- A[1,t+j]
  j=(j+3)%%9
  r=(r+3)%%9
}

# La remplissage des des dernier bloc avec la permutation des colonnes

x=0
k=3

for (j in 1:6) {
  if (j==4){k=k+3}
  for ( i in 1:3)
  {
    if (i==1) { A[t+k,x+i] <- A[t+(k-3),x+3]}
    else {A[t+k,i+x] <- A[t+(k-3),x+i-1] }
                                            }
x=(x+3)%%9

}

return(A)
}

