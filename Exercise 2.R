library(tidyverse)
library(R.utils)



myzipfile <- list.files(path = "D:/Documents/1 R Hacks Radiotelescopes/Zip files/Exercise Data", full.names = T)

print(myzipfile[1])

for (i in myzipfile){
  print(i)
  gunzip(i, remove = F)
}

file.remove("Zip files/Exercise Data/2016.csv")
getwd()



rm_files <- list.files(path = 'Zip files/Excersise Data/', pattern = 'csv$', full.names = T)

walk(.x = rm_files, .f = file.remove)



walk(.x = myzipfile, .f = safely(gunzip), remove = F)
