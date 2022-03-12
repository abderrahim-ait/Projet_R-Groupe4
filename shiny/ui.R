library(shiny)

fluidPage(
  titlePanel(
    titlePanel(
      "Sudoku Game")
  ),
  helpText(a('Notre Github site',
             href='https://github.com/abderrahim-ait/Projet_R-Groupe4.git')
  ),
  sidebarLayout(
    sidebarPanel (
      selectInput(inputId = "Niveau",
                  label ="Selectionner le niveau:",
                  choices = c("Facile","Moyenne","Difficile","Expert")
      ),

      actionButton("sudoku" ,
                   label= "Sudoku"),
      hr(),

          selectInput(inputId = "ligne",
                      label ="Selectionnez la linge",
                      choices = list(1,2,3,4,5,6,7,8,9),
                      selected = 1),

          br(),
          selectInput(inputId = "colonne",
                      label = "Sélectionnez la colonne",
                      choices = list(1,2,3,4,5,6,7,8,9),
                      selected = 1),


          br(),
          selectInput(inputId = "valeur",
                      label = "Sélectionnez la valeur",
                      choices = list(1,2,3,4,5,6,7,8,9)
                     ),

          br(),
          actionButton(inputId = "jouer",
                       label="Jouer"),
          hr(),
          h4('Solution automatique:'),
          actionButton("solution",
                       label = "Solution"),

      ),

    mainPanel(
      tabsetPanel(
        tabPanel("Game",
                 plotOutput("tableSudoku")
                ),
        tabPanel("Solution",
                 plotOutput("sol")
                ),
        tabPanel("Règle",
                 HTML(text = "Une grille de Sudoku peut etre vue comme une matrice carree comprenant 9 lignes et 9 colonnes.
                                    Chacun des 81 elements de la matrice appartient à l’ensemble {1, 2, 3, . . . , 8, 9}.
                                    La matrice est divisee en 9 blocs (3 × 3) contenant chacun 9 elements (3 lignes et 3 colonnes).
                                    Les nombres de sont repartis suivant les trois regles suivantes :
                                    1) chaque chiffre n’apparaıt qu’une fois en ligne,
                                    2) chaque chiffre n’apparait qu’une fois en colonne,
                                    3) chaque chiffre n’apparait qu’une fois dans un bloc.")),


      )
    )
))
