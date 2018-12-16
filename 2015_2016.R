#1.a
# What proportion of the books
# were published in 2014? (Give your answer to 2 decimal places.) Of those
# books published in 2014, which were published by Penguin?

df<- read.csv("Data/AmazonBestSellers2014(1)(13).csv")

sprintf(nrow(df[df$PublicationYear==2014,])/nrow(df),fmt = "%#.2f")
#sprintf(22.2034,fmt = "%#.2f")

df[df$PublicationYear==2014 & df$Publisher=="Penguin",]

#b
# Use the aggregate function to compute the average number of reviews, review rating
# and price for each genre in the datset. Label the columns of the resulting data frame
# appropriately. Which genre has the lowest mean number of reviews? Which
# has the highest mean price? 

df %>%
  group_by(Genre) %>%
    summarise(avgRating = mean(Stars,na.rm = TRUE),
              avgPrice = mean(Price,na.rm = TRUE))

df %>%
  group_by(Genre) %>%
  summarise(avgRating = mean(Stars,na.rm = TRUE),
            avgPrice = mean(Price,na.rm = TRUE)
            ) %>%
    filter(avgRating==min(avgRating) | avgPrice==max(avgPrice))

#c
# Use par(mfrow=c(1,2)) to create a 1×2 plotting matrix. The left-hand plot should
# contain a boxplot of the number of reviews for the books published in 2014. The
# right hand plot should contain a boxplot of the number of reviews for the books
# published published prior to 2014. Label axes, include titles and use colour. Ensure
# the limits of the y axes match in the two plots. Comment on the resulting plots.


