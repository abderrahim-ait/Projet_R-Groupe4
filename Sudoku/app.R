library(shiny)
library(bslib)
library(ggplot2)
library(thematic)
library(showtext)
library(glue)


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
  tags$img(src='FDS.png', height=100, width=100) ,
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


      selectInput("Facile", "Choisir le niveux:", choices = c("Facile", "Moyenne", "Difficile")),
      numericInput("obs", "Valeur:", 10),
      actionButton("goButton", "New game", class = "btn-success"),
      actionButton("Solution", "Check Solution", class = "btn-success"),


      # Sidebar with a slider input for number of bins

      ),


    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot", click = "plot_click"),
      verbatimTextOutput("info")

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

  Vr <- 0
  A = Suduko()
  observeEvent(input$goButton,{


    # generate bins based on input$bins from ui.R
    if (input$Facile=="Facile") x <- 30
    else if (input$Facile=="Moyenne") x <- 60
    else x <- 80
    A <<- Suduko()
    B = genererSoduko(A,x)
    # draw the histogram with the specified number of bins
    output$distPlot <- renderPlot({
    if(Vr==1) AfficheSudoko2(B)
      else AfficheSudoko(B)
    })
  })

  observeEvent(input$Solution,{


    output$distPlot <- renderPlot({
      if(Vr==1) AfficheSudoko2(A)
      else AfficheSudoko(A)
    })  })

  observe({
    # Make sure theme is kept current with desired
    session$setCurrentTheme(

      bs_theme_update(my_theme, bootswatch = input$current_theme)

  )

  })

 # X et Y

   output$info <- renderText({
    paste0(" Les indices sont : \n i=", input$plot_click$y , "\n j=", input$plot_click$x)
  })
}


# Run the application
shinyApp(ui = ui, server = server)




