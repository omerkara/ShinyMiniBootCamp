# Packages.
library(shiny)

# UI.
ui <- fluidPage(
    sliderInput(
        inputId = "num",
        label = "Choose a number",
        value = 25, min = 1, max = 100
    ),

    textInput(
        inputId = "title",
        label = "Write a title",
        value = "Histogram of Random Normal Values"
    ),

    plotOutput(outputId = "hist")
)

# Server.
server <- function(input, output) {
    output$hist <- renderPlot(
        {
            hist(rnorm(input$num), main = isolate({input$title}))
        }
    )
}

# Creating Shiny App.
shinyApp(ui = ui, server = server)
