#STAT 40730

library(dplyr)

#Loading IRIS data
data("iris")

#a

#aggregating by mean
aggregate(x = iris$Petal.Length, by = list(iris$Species), FUN = mean)

#aggregating by standatan deviation
aggregate(x = iris$Petal.Length, by = list(iris$Species), FUN = sd)


iris %>%
  group_by(Species) %>%
  summarise(n = n(),
            avgLength = mean(Petal.Length,na.rm = TRUE)
  )%>%
    filter(n>1) %>%
      select(avgLength)
