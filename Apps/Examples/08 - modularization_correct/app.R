# Packages.
library(shiny)

# UI.
ui <- fluidPage(
    sliderInput(
        inputId = "num",
        label = "Choose a number",
        value = 25, min = 1, max = 100
    ),

    plotOutput("hist"),

    verbatimTextOutput("stats")
)

# Server.
server <- function(input, output) {
    data <- reactive(
        {
            rnorm(input$num)
        }
    )

    output$hist <- renderPlot(
        {
            hist(data())
        }
    )

    output$stats <- renderPrint(
        {
            summary(data())
        }
    )
}

# Creating Shiny App.
shinyApp(ui = ui, server = server)
