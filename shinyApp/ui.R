library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Visualizing the mtcars dataset"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      h3("Plot Configuration"),
      p("Select a variable from the mtcars dataset for each aesthetic ",
        "dimesion of the graph. Once all five aesthetics have been chosen, ",
        "the plot of the data will be rendered accordingly"),
      uiOutput("error"),
      uiOutput("warning"),
      uiOutput("xaxis"),
      uiOutput("yaxis"),
      uiOutput("color"),
      uiOutput("shape"),
      uiOutput("size"),
      p("You can view the source code for this project on ",
        a("GitHub", href="https://github.com/majestix508/DP-Week4-Project"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
