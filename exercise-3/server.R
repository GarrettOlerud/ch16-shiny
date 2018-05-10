### Exercise 3 ###

library(shiny)
library(ggplot2)
source("ui.R")
# Create a shiny server that creates a scatterplot. 
server <- function(input, output){
  output$scatter <- renderPlot({
    x = mpg[[input$x_var]]
    y = mpg[[input$y_var]]
    
  title <- paste0("Car MPG's", input$x_var, "V.S.", input$y_var)
  
   <- ggplot() +
    geom_point(mapping = aes(x = x, y = y),
               size = input$size,
               color = input$color)+
    labs(x = input$x_var, y = input$y_var, title = title)
  p
  })
}

# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter

    # Store x and y values to plot


    # Store the title of the graph in a variable

    
    # Create ggplot scatter
shinyServer(server)
