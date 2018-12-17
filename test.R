load("goodreads.RData")

aggregate(x = goodreads,by = (user_id),FUN =count())

length(unique(goodreads$user_id))
dim(goodreads)[1]

df<-as.data.frame(table(goodreads$title))
df[df$Freq>10000,]


tempdf1<-aggregate(x = goodreads$rating,by = list(goodreads$authors),FUN =mean)

sort(tempdf1$x,decreasing = TRUE)
tempdf1[order(x),]


sort(tempdf1,tempdf1$x)

tempdf1<-tempdf1[order(-tempdf1$x),]

tempdf1[1,1:10]


x<-goodreads


freqTable2<-as.data.frame(table(x$title))
freqTable2<-freqTable2[freqTable2$Freq>10000,]
avgRatings2<-aggregate(x = x$rating,by = list(x$title),FUN =mean)
colnames(avgRatings2)<-c("BooK Title","Average Rating")
df2<-merge(x = freqTable2, y = avgRatings2, by.x = "Var1", by.y = "BooK Title")
df2<-df2[order(-df2$`Average Rating`),]
head(df2$Var1,10)








turtle<-read.csv("turtle.csv")

model1 <- glm(turtle$gender~turtle$length,family=binomial(link='logit'))
fitted.results.cat <- ifelse(model$fitted.values > 0.5,"0","1")
table(fitted.results.cat)

model$fitted.values
model$aic

logitIt<-function(X,Y){
  
  model <- glm(X~Y,family=binomial(link='logit'))
  summary(model)
}



