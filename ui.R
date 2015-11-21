library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Iris Sepal Length Histogram Tool"),
    sidebarPanel(
      sliderInput('binbreaks', 'Please Specify Number of Buckets to plot', 
                   value = 5,min = 5,max = 30,step = 3)
    ),
    mainPanel(
      h3('Welcome'),
      p('This simple tool helps visualize the distribution of Iris Sepal length within the Iris dataset.
         A Histogram is displayed based on the input provided in the side panel. By tuning the bucket 
         size the user can see fine or coarse level detail in the dataset.'),
      p('As you move the slider from left to right, you will see more and more detail in the distribution of lengths.'),
      p('What initially looks to be a unimodal distribution eventually transitions into a tri-modal distribution.'),
      p('Note that the number of buckets is controlled by the R pretty() function, limiting the number of bucket sizes.'),
      h4('Number buckets you entered'),
      verbatimTextOutput("inputValue"),
      plotOutput('sepalplot')
    )
  )
)