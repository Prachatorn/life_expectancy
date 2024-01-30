if (!require('plotly')) install.packages('plotly'); library('plotly')
if (!require('shiny')) install.packages('shiny'); library('shiny')
if (!require('shinythemes')) install.packages('shinythemes'); library('shinythemes')

source("life_expectancy_tab.R")

shinyUI(
  navbarPage(
    "Life Expectancy",
    theme = shinytheme("united"),
    life_expectancy_tab
  )
)
