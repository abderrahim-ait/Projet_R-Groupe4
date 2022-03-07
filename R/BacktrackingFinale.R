#' Résoudre un Sudoku grace a l'algorithme du backtraking
#'
#' @param B : Une matrice
#'
#' @return une Data frame qui contient la solution du grille de sudoku avec ainsi que le nombre de back.
#' @export
#'
#' @examples
#'  BacktrackingFinale(A)
#'
BacktrackingFinale <- function(B) {
  
  # Créer un environnement qui contient nos paramètres nécessaire pour le traitement de l'algorithme
  Env <- new.env()
  Env$A <- B
  Env$Tligne <- matrix(data = NA,nrow = 9,  ncol = 9)
  Env$Tcolonne <- matrix(data = NA,nrow = 9,ncol = 9)
  Env$Tblock <- matrix(data = NA, nrow = 9, ncol = 9)

  for (k in 1:9)
    for (z in 1:9) {
      Env$Tligne[k, z] <- testligne(Env$A, k, z)
      Env$Tcolonne[k, z] <- testcolonne(Env$A, k, z)
      Env$Tblock[k, z] <- testBlock(Env$A, k, (3 * k - 1) %% 9, z)
    }
  # Appel de la fonction Possibilite(A)
  Env$DF = Possiblite(Env$A)
  Env$n = nrow(Env$DF)
  Env$nbr <- 0

  Backtracking <- function(n) {
    # Test darret de la fonction
    if (n == 0) {
      return(TRUE)
    }
    Env$nbr <<- Env$nbr + 1
    # Stocker les indices i et j de la premmier case de DF
    i <- Env$DF[length(Env$DF[, 1]) - (n - 1), 1]
    j <- Env$DF[length(Env$DF[, 1]) - (n - 1), 2]
    r = GitBlock(i, j)

    # Bacltracking

    for (k in 1:9) {
      # Verifier dans les matrices si la valeur k est deja present
      if (isTRUE(!Env$Tligne[i, k] &&
                 !Env$Tcolonne[j, k] && !Env$Tblock[r, k])) {
        Env$Tligne[i, k] <<- TRUE
        Env$Tcolonne[j, k] <<- TRUE
        Env$Tblock[r, k] <<- TRUE

        if (Backtracking(n - 1) == TRUE) {
          Env$A[i, j] <<- k
          Env$nbr <<- Env$nbr - 1
          return(TRUE)
        }
        Env$Tligne[i, k] <<- FALSE
        Env$Tcolonne[j, k] <<- FALSE
        Env$Tblock[r, k] <<- FALSE
      }
    }
    return(FALSE)
  }

  Backtracking(Env$n)
  Vr = list(Env$A, Env$nbr)
  return(Vr)
}
