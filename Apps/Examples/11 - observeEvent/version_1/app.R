# Packages.
library(shiny)

# UI.
ui <- fluidPage(
    actionButton(
        inputId = "clicks",
        label = "Click me"
    )
)

# Server.
server <- function(input, output) {
    observeEvent(
        input$clicks,
        {
            # Printing in the Console.
            print(as.numeric(input$clicks))
        }
    )
}

# Creating Shiny App.
shinyApp(ui = ui, server = server)
