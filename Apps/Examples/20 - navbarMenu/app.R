# Packages.
library(shiny)

# UI.
ui <- navbarPage(
    title = "Random generator",
    tabPanel(
        title = "Normal data",
        plotOutput("norm"),
        actionButton("renorm", "Resample")
    ),
    navbarMenu(
        title = "Other data",
        tabPanel(
            title = "Uniform data",
            plotOutput("unif"),
            actionButton("reunif", "Resample")
        ),
        tabPanel(
            title = "Chi Squared data",
            plotOutput("chisq"),
            actionButton("rechisq", "Resample")
        )
    )
)


# Server.
server <- function(input, output) {

    rv <- reactiveValues(
        norm = rnorm(500),
        unif = runif(500),
        chisq = rchisq(500, 2)
    )

    observeEvent(
        input$renorm,
        {
            rv$norm <- rnorm(500)
        }
    )
    observeEvent(
        input$reunif,
        {
            rv$unif <- runif(500)
        }
    )
    observeEvent(
        input$rechisq,
        {
            rv$chisq <- rchisq(500, 2)
        }
    )

    output$norm <- renderPlot(
        {
            hist(rv$norm, breaks = 30, col = "grey", border = "white", main = "500 random draws from a standard normal distribution")
        }
    )
    output$unif <- renderPlot(
        {
            hist(rv$unif, breaks = 30, col = "grey", border = "white", main = "500 random draws from a standard uniform distribution")
        }
    )
    output$chisq <- renderPlot(
        {
            hist(rv$chisq, breaks = 30, col = "grey", border = "white", main = "500 random draws from a Chi Square distribution with two degree of freedom")
        }
    )
}

# Creating Shiny App.
shinyApp(ui = ui, server = server)
