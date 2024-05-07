# Packages.
library(shiny)

# UI.
ui <- fluidPage(
    sliderInput(
        inputId = "num",
        label = "Choose a number",
        value = 25, min = 1, max = 100
    ),

    # Printing in the app.
    verbatimTextOutput(
        outputId = "input_test"
    )
)

# Server.
server <- function(input, output) {
    observe(
        {
            # Printing in the Console.
            print(as.numeric(input$num))
        }
    )

    output$input_test <- renderText(
        {
            as.numeric(input$num)
        }
    )
}

# Creating Shiny App.
shinyApp(ui = ui, server = server)
