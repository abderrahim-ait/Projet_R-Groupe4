#' @title Generer un Sudoku avec difficulte grace a l'algorithme du backtraking
#'
#' @param Niveau : un entier entre 1 et 4
#'
#' @return une Data frame qui contient la grille du sudoku avec son solution ansi que le nombre de back.
#' @author AIT MOULAY ABDERRAHIM
#' @export
#'
#' @examples
#'
#'  GenererSudoku_avec_difficulte(2)
#'
#'
GenererSudoku_avec_difficulte <- function(Niveau) {

  # Niveau Facile
  if (Niveau == 1) {
    nbr_Back_min = 0
    nbr_Back_max = 100
    N = 45
  }

  # Niveau Moyenne
  else if (Niveau == 2) {
    nbr_Back_min = 101
    nbr_Back_max = 200
    N = 48
  }
  # Niveau Difficile
  else if (Niveau == 3) {
    nbr_Back_min = 201
    nbr_Back_max = 300
    N = 50
  }

  # Niveau Expert
  else if(Niveau == 4) {
      nbr_Back_min = 301
      nbr_Back_max = 1000000
      N = 54  }
  else { return("Entrer une valeur parmi : {1,2,3,4}")}
  repeat {
    B = Suduko()
    B = genererSoduko(B, N)
    A <- B
    nbr = 0
    X = BacktrackingFinale(A)
    k= X[2]
    if ((nbr_Back_min <= k) &&   (k <= nbr_Back_max))
      break
  }

  VR = list(B, X)

  return(VR)
}

<<<<<<< HEAD

=======
>>>>>>> bb4ba068d8be796c1aefd0441ffcd45b5d3f8bc4


