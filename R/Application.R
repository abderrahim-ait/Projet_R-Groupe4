#'@title Test une valeur si il existe dans une colonne
#'
#'
#'@return : Application Sudoku
#'@author AIT MOULAY ABDERRAHIM
#'@import thematic
#'
#'@export
#'
#'

 Application <- function() {

   appDir <- system.file('Sudoku', package = "sudokugr4")
   shiny::runApp(appDir)

 }

