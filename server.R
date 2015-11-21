library(shiny)

binbreaks=11
sepalhist <- function(binbreaks) {
  hist(iris[,1], breaks=binbreaks, main = "Histogram of Iris Sepal Length", 
       xlab = "Sepal Length (cm)")
}

shinyServer(
  function(input, output) {
    x <- reactive({as.numeric(input$binbreaks) })
    output$inputValue <- renderText({x()})
    output$sepalplot  <- renderPlot({sepalhist(input$binbreaks)})
  }
)