# Packages.
library(shiny)

# UI.
ui <- fluidPage(
    sliderInput(
        inputId = "num",
        label = "Choose a number",
        value = 25, min = 1, max = 100
    ),
    actionButton(
        inputId = "go",
        label = "Update"
    ),
    plotOutput("hist")
)

# Server.
server <- function(input, output) {
    data <- eventReactive(
        input$go,
        {
            rnorm(input$num)
        }
    )

    output$hist <- renderPlot(
        {
            hist(data())
        }
    )
}

# Creating Shiny App.
shinyApp(ui = ui, server = server)
