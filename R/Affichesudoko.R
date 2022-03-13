#' @title Affichage d'un sudoku
#'
#' @param z : Une matrice
#' @param Couleur : une matrice qui contient des 0 et des 1
#' @return : Plot de la grille du sudoku
#' @author AIT MOULAY ABDERRAHIM
#' @export
#' @importFrom graphics lines text par segments
#' @examples
#'
#'  A = Suduko()
#'  A= genererSoduko(A,50)
#'  Couleur = matrix (0,9,9)
#'  AfficheSudoko(A,Couleur)
#'
#'


AfficheSudoko <- function(z,Couleur) {


cusr <- cplt <- rep(0+NA, 4)
par(mar=c(0,0,0,0), bg="white")
plot(0.5:9.5, 0.5:9.5, type="n", axes=FALSE, xlab="", ylab="")
cusr <<- par("usr"); cplt <<- par("plt")
segments(0.5:9.5, rep(0.5,10), 0.5:9.5, rep(9.5,10), col="grey")
segments(rep(0.5,10), 0.5:9.5, rep(9.5,10), 0.5:9.5, col="grey")
segments(c(0,3,6,9)+0.5, rep(0.5,4), c(0,3,6,9)+0.5, rep(9.5,4), lwd=3)
segments(rep(0.5,4), c(0,3,6,9)+0.5, rep(9.5,4), c(0,3,6,9)+0.5, lwd=3)

for (i in 1:9)
  for (j in 1:9)
  { if (is.na(Couleur[i,j])){
    cols <- ifelse(z, "gray","black")
    text(j, 10-i, z[i,j], col=cols[i,j], font=ifelse(cols[i,j]=="gray",2,1),
    cex=ifelse(cols[i,j]=="black", 2.0, 1.8))}
     else if (Couleur[i,j]==1) {
       cols <- ifelse(z, "steelblue1","black")
       text(j, 10-i, z[i,j], col=cols[i,j], font=ifelse(cols[i,j]=="steelblue1",2,1),
            cex=ifelse(cols[i,j]=="black", 2.0, 1.8))  } }

  }



