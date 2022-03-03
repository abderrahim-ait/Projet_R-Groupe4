


GenererSoduko_avec_difficulte <- function(Niveau) {

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
  repeat {
    B = Suduko()
    B = genererSoduko(A, N)
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
