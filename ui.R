#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

pageWithSidebar(
  headerPanel('Cars K-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(mtcars)),
    selectInput('ycol', 'Y Variable', names(mtcars),
                selected=names(mtcars)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)