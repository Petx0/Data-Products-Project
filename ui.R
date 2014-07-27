library(shiny)
shinyUI(
  pageWithSidebar(
    # Title
  headerPanel("Metrics Conversor Kilos to Pounds"),
    # Input in kilos
  sidebarPanel(
    numericInput('Kilos','Insert your value in Kg.',1,min=0.1,max=300,step=1),
  
    submitButton('Convert')
  ),
    # Results
  mainPanel(
    h4('Input in Kg.'),
    verbatimTextOutput("inputValue"),
    h4('Converted to Pounds'),
    verbatimTextOutput("conversion")
    )
))