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
    plotOutput('plot1'),
    'DOCUMENTATION:',
    'All of the R code used for this project is found in the git repository https://github.com/pvb11/Course9_Assignment3 in the server.R and ui.R files.',
    'This application deploys k-means clustering on the rock dataset. The user can select which variables to compare, as well as the number of clusters to display.',
    'The rock dataset consists of 48 rock sample measurements from a petroleum reservoir. Twelve core samples from petroleum reservoirs were sampled by 4 cross-sections. Each core sample was measured for permeability, and each cross-section has total area of pores, total perimeter of pores, and shape.'
  )
)