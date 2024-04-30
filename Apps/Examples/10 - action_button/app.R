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

}

# Creating Shiny App.
shinyApp(ui = ui, server = server)
