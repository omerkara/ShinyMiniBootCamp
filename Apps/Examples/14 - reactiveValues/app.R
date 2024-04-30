# Packages.
library(shiny)

# UI.
ui <- fluidPage(
    actionButton(
        inputId = "norm",
        label = "Normal"
    ),

    actionButton(
        inputId = "unif",
        label = "Uniform"
    ),
    plotOutput("hist")
)

# Server.
server <- function(input, output) {
    rv <- reactiveValues(data = rnorm(100))

    observeEvent(
        input$norm,
        {
            rv$data <- rnorm(100)
        }
    )

    observeEvent(
        input$unif,
        {
            rv$data <- runif(100)
        }
    )

    output$hist <- renderPlot(
        {
            hist(rv$data)
        }
    )
}

# Creating Shiny App.
shinyApp(ui = ui, server = server)
