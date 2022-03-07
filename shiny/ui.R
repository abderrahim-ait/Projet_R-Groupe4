library(shiny)

fluidPage(
          sidebarLayout(
            sidebarPanel(
              titlePanel("Sudoku Game"),
              helpText(a('Github', href='https://github.com/abderrahim-ait/Projet_R-Groupe4',target="_blank"))
              hr(),
              sliderInput("Niveau", label = "selectionnez le coefficent de difficulte",
                          min = 1, max = 4, value = 1),
              actionButton("newButton", "Nouveau Sudoku"),
              hr(),
              h4('Solve'),
              actionButton("solveButton", "Solution"),

              selectInput("row", label = "Row",
                          choices = list(1,2,3,4,5,6,7,8,9),
                          selected = 1),
              selectInput("col", label = "Column",
                          choices = list(1,2,3,4,5,6,7,8,9),
                          selected = 1),
              selectInput("value", label = "Value",
                          choices = list(1,2,3,4,5,6,7,8,9," "=0),
                          selected = 0),
              actionButton("setButton", "Set"),
              hr()
            ),
            mainPanel(
              tabsetPanel(
                tabPanel("Play", plotOutput("table")),
                tabPanel("Regle du jeu", includeHTML("regle.html")),
              )
            )
          )
)


