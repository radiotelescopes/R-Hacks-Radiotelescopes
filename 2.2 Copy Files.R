library(tidyverse)

setwd('D:/Documents/1 R Hacks Radiotelescopes')
getwd()


  
file.copy(from = from_path, to = 'Weather')


y <- 2017:2020


#Run:
from_path <- list.files(path = 'Weather/2020/', full.names = T)

copyfunction <- function(x) {
  from_path <- paste0("Weather/", x, "/", x, ".csv")
  file.copy(from = from_path, to = 'Weather') 
}

walk(.x = 2017:2020, .f = copyfunction)









