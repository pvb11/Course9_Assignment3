pageWithSidebar(
  headerPanel('Clustering: Measurements on Petroleum Rock Samples'),
  sidebarPanel(
    selectInput('xcol', 'X-Axis (Horizontal) Variable', names(rock)),
    selectInput('ycol', 'Y-Axis (Vertical) Variable', names(rock),
                selected=names(rock)[[2]]),
    numericInput('clusters', 'Number of Clusters', 4,
                 min = 1, max = 8)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)