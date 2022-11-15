#' Launch an App
#'
#' This function launches an app
#'
#' @importFrom rmarkdown run
#'
#' @export
launchApp <- function(){
    #rmarkdown::run(file = "dashboard.Rmd", dir = ".")
    shiny::myApp()
}
