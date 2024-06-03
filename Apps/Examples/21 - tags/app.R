# Packages.
library(shiny)

# UI.
ui <- fluidPage(
    h1("My Shiny App"),

    p(style = "font-family:Impact",
      "See other apps in the",
      a("Shiny Showcase",
        href = "http://www.rstudio.com/products/shiny/shiny-user-showcase/"
      )
    ),

    sliderInput(
        inputId = "num",
        label = "Choose a number",
        value = 25, min = 1, max = 100
    ),

    plotOutput(outputId = "hist")
)

# Server.
server <- function(input, output) {
    output$hist <- renderPlot(
        {
            hist(rnorm(input$num))
        }
    )
}

# Creating Shiny App.
shinyApp(ui = ui, server = server)
