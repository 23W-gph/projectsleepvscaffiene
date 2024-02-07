# Load required libraries
library(shiny)
library(ggplot2)
library(dplyr)

# Define UI for application
ui <- fluidPage(
  
  # Application title
  titlePanel("Digital Health Analysis"),
  
  # Sidebar layout with input and output definitions
  sidebarLayout(
    sidebarPanel(
      # Input: Select variables to plot
      selectInput("x_var", "X-axis variable:",
                  choices = c("Cups of Coffee" = "cups.of.coffee",
                              "Cups of Tea per Week" = "cups.of.tea.per.week",
                              "Cans of Energy Drinks per Week" = "cans.of.energy.drinks.per.week",
                              "Cans of Soda per Week" = "cans.of.soda.per.week")),
      # Input: Select range for average hours of sleep
      sliderInput("sleep_hours", "Average Hours of Sleep per Week:",
                  min = 0, max = 24, value = c(0, 10))
    ),
    
    # Show plot
    mainPanel(
      plotOutput("sleep_vs_variable")
    )
  )
)

# Define server logic
server <- function(input, output) {
  
  # Load dataset
  data <- read.csv("C:/Users/DELL/Desktop/digital health/digital/trial1.csv")
  
  # Filter data based on average hours of sleep
  filtered_data <- reactive({
    filter(data, average.hours.if.sleep.week >= input$sleep_hours[1] &
             average.hours.if.sleep.week <= input$sleep_hours[2])
  })
  
  # Render plot
  output$sleep_vs_variable <- renderPlot({
    ggplot(filtered_data(), aes_string(x = input$x_var, y = "average.hours.if.sleep.week")) +
      geom_point() +
      labs(x = input$x_var, y = "Average Hours of Sleep per Week") +
      theme_minimal()
  })
}

# Run the application
shinyApp(ui = ui, server = server)
