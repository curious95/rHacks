library(plumber)
r <- plumb("deployed_function.R")
r$run(port = 1995)
