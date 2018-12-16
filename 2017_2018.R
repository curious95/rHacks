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




#Part B
#2.a
wines <- read.csv(file = "Data/wines.csv")
plot(wines)

#It may be surprising, but R is smart enough to know how to "plot" a dataframe.
#It actually calls the pairs function, which will produce what's called a scatterplot matrix.
#This is a display with many little graphs showing the relationships between each pair of variables in the data frame.

#2.b

#Linear Regression
model <- lm(Tasting ~ View,data = wines)

#Polynomial Regression (Quadratic regression)
#method 1
model2 <- lm(Tasting ~ View+ I(View^2),data = wines)

#method 2
model3 <- lm(Tasting ~ poly(View, degree = 2,raw = T),data = wines)

#summary of the model
summary(model3)
