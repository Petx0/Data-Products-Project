library(shiny)

PoundsFromKilos<- function(kilos) kilos*2.20462262

shinyServer(
  function(input,output){
    output$inputValue <- renderPrint({input$Kilos})
    output$conversion <- renderPrint({PoundsFromKilos(input$Kilos)})
  }
)