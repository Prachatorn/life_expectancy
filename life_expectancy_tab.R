source("life_expectancy.R")

life_expectancy_tab <- tabPanel(
  "Life Expenctancy Info",
  titlePanel("Life Expectancy"),
  tabPanel(
    "",
    sidebarLayout(
      sidebarPanel(
        # 1st chart and widget combination choosing country
        selectInput(
          "select_country",
          label = "Life Expenctancy - Select Country",
          choices = Countries$Country,
          selected = 1
        )
      ),
      mainPanel(
        plotOutput("life_expectancy")
      )
    )
  )
)
