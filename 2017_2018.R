#loading the library
library(dplyr)

#reading the csv
crimes15 <- read.csv("Data/EurostatCrime2015 (1).csv",row.names = 1)

#1.a
which.max(filter(.data = crimes15,row.names(crimes15)=="Ireland"))
which.min(filter(.data = crimes15,row.names(crimes15)=="Ireland"))

#2.a
cor(crimes15,use = "complete.obs")
#check sexual assault and sexual violence and Rape they have high corrlelation
#Robbery and assault
#Theft sexual assault and sexual violence
  




