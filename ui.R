#
# Shiny App for Project in coursera's
#   Developing Data Products
#
# J. Fresneda
#   11/17/15

shinyUI(pageWithSidebar(
  headerPanel('k-means clustering of Iris Database'),
  sidebarPanel(
  helpText('Instructions; This plot shows the within cluster sum of squares as a function of the number of clusters. Choose the type of X variable, the type of Y variable, and the number of cluster.'), 
    selectInput('xcol', 'X Variable', names(iris)),
    selectInput('ycol', 'Y Variable', names(iris),
                selected=names(iris)[[2]]),
    numericInput('clusters', 'Cluster count', 2,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
))
