library(shiny)
library(bslib)
library(glue)
library(thematic)



# Builds theme object to be supplied to ui
my_theme <- bs_theme(
  bootswatch = "cerulean",
  base_font = font_google("Righteous")
)

# Let thematic know to use the font from bs_lib
thematic_shiny(font = "auto")


ui <- fixedPage(

  theme = my_theme,
  # Application title
  tags$img(src='FDS2.png', height=115, width=115) ,
   tags$div(
    style = "width: 320px; margin: auto;",
    class = "title-app",
    tags$h1("Sudoku Game"),

  ) ,
  tags$div(
            class = "title-app",
            radioButtons("current_theme", "App Theme:", c("Light" = "cerulean", "Dark" = "darkly"),inline = TRUE ), ),


  sidebarLayout(

    sidebarPanel(


      selectInput("Facile", "Choisir le niveux:", choices = c("Facile", "Moyen", "Difficile","Expert")),
      p(selectInput("Valeur", "Choisir la valeur:", choices = c(1:9))),

      actionButton("Valid", "Valider", class = "btn-success"),
      actionButton("Suprimer", "Suprimer", class = "btn-success"),
      actionButton("goButton", "New game", class = "btn-success"),
      p(),
      actionButton("Teste", "Check", class = "btn-success"),
      actionButton("Solution", "Solution", class = "btn-success"),


      # Sidebar with a slider input for number of bins

      ),


    # Show a plot of the generated distribution
    mainPanel(
      fluidRow(column(12,style="background-color:#b1f6c6",
      helpText("Le fameux jeu de chiffres : jouer au Sudoku avec nos grilles de differents niveaux."))),
      plotOutput("distPlot", click = "plot_click"),
      verbatimTextOutput("info"),
      verbatimTextOutput("Back")

    )

  ),
  p(tags$div(style = "width: 650px; margin: 800 px;",
             id = "header",
             div(class = "source_link",
              a(href = "https://github.com/abderrahim-ait/Projet_R-Groupe4",
              "View source code on github", icon("github"))),)
  )

)

# Define server logic required to draw a histogram
server <- function(input, output , session ) {


  NB <- NA
  i <- NA
  j <- NA
  W <- NULL
  Couleur <- matrix(NA,9,9)
  B <- matrix(NA,9,9)
  Solution <- matrix(NA,9,9)

# New game .......................................................................
  observeEvent(input$goButton,{


    # generate bins based on input$bins from ui.R
    if (input$Facile=="Facile") N <- 1
    else if (input$Facile=="Moyen") N <- 2
    else if (input$Facile=="Difficile") N <- 3
    else N <- 4
    T1 <- Sys.time()
    X <- GenererSudoku_avec_difficulte(N)
    T2 <- Sys.time()
    B <<- X[[1]]
    W <<- Possiblite(B)
    Solution <<- X[[2]][[1]]
    NB <- X[[2]][[2]]

    Couleur <<- matrix(NA,9,9)

    # draw the histogram with the specified number of bins
    output$distPlot <- renderPlot({
      AfficheSudoko(B,Couleur)
    })

    # i et j ......................................................................

    output$info <- renderText({

      i <<- as.numeric( input$plot_click$y )
      j <<- as.numeric( input$plot_click$x )
      i <<- 9 - floor(i-0.5)
      j <<- 1 + floor(j-0.5)
      if(!is.null(i) && !is.null(j)) paste0(" Les indices sont : \n Indice_ligne = ", i , " \t ; \t Indice_colonne = ", j ) })

    # nbr de back..................................................................
    output$Back <- renderText({

      paste0(" Le nombre de back de l algorithme Backtraking est :",NB ,"\n Le temps d execution de l algorithme Backtraking est : ", round(difftime(T2,T1),4) ," s" ) })


  })




# Theme ...............................................................
  observe({
    # Make sure theme is kept current with desired
    session$setCurrentTheme(

      bs_theme_update(my_theme, bootswatch = input$current_theme)  )
  })


# Solution ............................................................
  observeEvent(input$Solution,{

    B <<- Solution
    Couleur2 <- matrix(NA,9,9)
    output$distPlot <- renderPlot({
      AfficheSudoko(Solution,Couleur2) })  })
# Suprimer .........................................................
  observeEvent(input$Suprimer,{

    for (k in 1:nrow(W)) { if( (i==W[k,1]) && (j==W[k,2])) {
      B[i,j] <<- NA
      output$distPlot <- renderPlot({ AfficheSudoko(B,Couleur) }) } }


  })

# Remplir des valeurs .........................................................
  observeEvent(input$Valid,{
    if(is.na( B[i,j] ) ){
      V <- as.numeric(input$Valeur)
      B[i,j] <<- V
      Couleur[i,j] <<- 1
      output$distPlot <- renderPlot({  AfficheSudoko(B,Couleur) }) }

  })

# Tester ......................................................................

  observeEvent(input$Teste, {

    if(TestSuduko(B)==FALSE) showNotification(" Erreur !!", type = "error")
    else showNotification("Bravo !", type = "message")
  })



}


# Run the application
shinyApp(ui = ui, server = server)











