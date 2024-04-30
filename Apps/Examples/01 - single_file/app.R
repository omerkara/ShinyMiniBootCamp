# Packages.
library(shiny)

# UI.
ui <- fluidPage(
    "Hello World"
)

# Server.
server <- function(input, output) {
    ## Add server related functions, objects, and etc.
    ## Now it is empty, so nothing happens in the server.
}

# Creating Shiny App.
shinyApp(ui = ui, server = server)
