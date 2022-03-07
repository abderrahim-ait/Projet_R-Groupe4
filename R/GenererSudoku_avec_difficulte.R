#' Generer un Sudoku avec difficulte grace a l'algorithme du backtraking
#'
#' @param Niveau : un entier entre 1 et 4
#'
#' @return une Data frame qui contient la grille du sudoku avec son solution ainsi que le nombre de back.
#' @export
#'
#' @examples
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
      N = 54
    }

  else { return("Entrer une valeur parmi : {1,2,3,4}")}
  # Generation de la difficulte du sudoku grace a l'agorithme du backtraking
  repeat {
    B = Sudoku()
    B = genererSudoku(A, N)
    A <<- B
    nbr = 0
    X = BacktrackingFinale(A)
    k= X[2]
    if ((nbr_Back_min <= k) &&   (k <= nbr_Back_max))
      break
  }

  VR = list(B, X)

  return(VR)
}
