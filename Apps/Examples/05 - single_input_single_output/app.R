# Packages.
library(shiny)

# UI.
ui <- fluidPage(
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
