# Packages.
library(shiny)

# UI.
ui <- fluidPage(
    fluidRow(
        column(
            width = 3
        ),
        column(
            width = 5,
            sliderInput(
               inputId = "num",
               label = "Choose a number",
               value = 25, min = 1, max = 100
           )
        ),
    ),
    fluidRow(
        column(
            width = 4, offset = 8,
            plotOutput("hist")
        )
    )
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
