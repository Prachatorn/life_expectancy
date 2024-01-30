# Where I got the dataset <- https://www.kaggle.com/datasets/saimondahal/life-expectancy-trends-for-males-and-females

if (!require('dplyr')) install.packages('dplyr'); library('dplyr')
if (!require('ggplot2')) install.packages('ggplot2'); library('ggplot2')

life_expectancy <- read.csv(file = "archive/life_expectancy.csv", stringsAsFactors = F)


Countries <- life_expectancy %>% select(Country) %>%
  distinct()

life_expectancy_fuction <- function(country) {
  
  country_data <- life_expectancy %>% filter(Country == country)
  
  country_plot <- ggplot(data = country_data, aes(x = Year)) + 
    geom_line(aes(y = Male.Life.Expectancy, col = "Male"), size = 1) + 
    geom_line(aes(y = Female.Life.Expectancy, col = "Female"), size = 1) + 
    labs(col = "Gender", y = "Life Expectancy") + 
    ggtitle("Average Life Expectancy \n Between 1950-2021 in Afghanistan")
  return(country_plot)
  
}