# Packages.
library(shiny)

# UI.
ui <- fluidPage(
    sliderInput(
        inputId = "num",
        label = "Choose a number",
        value = 25, min = 1, max = 100
    )
    ## No output is reflected.
)

# Server.
server <- function(input, output) {
    ## No output is rendered/generated.
}

# Creating Shiny App.
shinyApp(ui = ui, server = server)
