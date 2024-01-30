if (!require('dplyr')) install.packages('dplyr'); library('dplyr')
if (!require('ggplot2')) install.packages('ggplot2'); library('ggplot2')
if (!require('rsconnect')) install.packages('rsconnect'); library('rsconnect')
if (!require('shiny')) install.packages('shiny'); library('shiny')
if (!require('tidyr')) install.packages('tidyr'); library('tidyr')

source("life_expectancy.R")

server <- function(input, output) {
  
  output$life_expectancy <- renderPlotly({
    return(life_expectancy_fuction(input$country))
  })
  
}
