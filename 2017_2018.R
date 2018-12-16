#loading the library
library(dplyr)

#reading the csv
crimes15 <- read.csv("Data/EurostatCrime2015 (1).csv",row.names = 1)

#1.a
which.max(filter(.data = crimes15,row.names(crimes15)=="Ireland"))
which.min(filter(.data = crimes15,row.names(crimes15)=="Ireland"))

#1.b
cor(crimes15,use = "complete.obs")
#check sexual assault and sexual violence and Rape they have high corrlelation
#Robbery and assault
#Theft sexual assault and sexual violence
  
# 1.e
# 3 Dimensional Array

files<-dir("Data/",pattern = "Euro")
arr <- array(0,dim = c(dim(crimes15),length(files)))

for (i in 1:8) {
  arr[,,i] = as.matrix(read.csv(file = paste0("data/",files[i]),row.names = 1))
}

#1.f
plot(c(2008:2015),arr[41,7,],xlab = "Years",ylab = "Thefts",main = "Thefts in Ireland (2008-2015)")
#2012 has the maximum thefts
