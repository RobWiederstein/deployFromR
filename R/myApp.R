#' Geyser App
#'
#' a geyers app
#'
#' @import shiny
#'
#' @importFrom graphics hist
#' @importFrom stats rnorm
#'
#' @export
myApp <- function(){

server <- function(input, output) {
    output$distPlot <- shiny::renderPlot({
        graphics::hist(stats::rnorm(input$obs), col = 'darkgray', border = 'white')
    })
}

ui <- shiny::fluidPage(
    shiny::sidebarLayout(
        shiny::sidebarPanel(
            shiny::sliderInput("obs", "Number of observations:", min = 10, max = 500, value = 100)
        ),
        shiny::mainPanel(shiny::plotOutput("distPlot"))
    )
)

shiny::shinyApp(ui = ui, server = server)
}
