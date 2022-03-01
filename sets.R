set.seed(13435)
x <- data.frame("val1"=sample(1:5), "val2"=sample(6:10), "val3"=sample(11:15))
x <- x[sample(1:5),];x$val2[c(1,3)] =NA
x
x[,2]
sort(x, decreasing = FALSE,  na.last = TRUE):
  sort(x$val1)
x[order(-x$val2),]





install.packages("tm")

library(tm)
sentece=c('this is my test file data ', 'its a realy good thing to go here', 'the person realy good man by nature')

txt <- Corpus(VectorSource(sentece))
txt_data <- tm_map(txt, stripWhitespace)
txt_data <- tm_map(txt_data, tolower)
txt_data <- tm_map(txt_data, removeNumbers)
txt_data <- tm_map(txt_data,removePunctuation)
txt_data <- tm_map(txt_data, removeWords, stopwords("english"))


txt_data <- tm_map(txt_data, removeWords, c ("and", "the", "our", "that", "has", "more", "good"))
df <- data.frame(cln_text= unlist(txt_data), stringsAsFactors = F)
df$cln_text

library(wordcloud)
install.packages("wordcloud")
wordcloud(txt_data)



head(InsectSprays)
View(InsectSprays)
tapply(InsectSprays$count, InsectSprays$spray, sum)



spIns <- split(InsectSprays$count, InsectSprays$spray)
spIns


sprCount <- lapply(spIns,sum)
sprCount
install.packages("spIns")
library(spIns)



x <- c(1:4, NA,6:7, NA,8:10, NA)
mean(x, na.rm = TRUE)
is.na(x)
x[is.na(x)] <-mean(x, na.rm = TRUE)
round(x,2)



df <- data.frame(col1=c(1:3, NA), col2=c("this", NA, "is", "text"), col3=c(TRUE, FALSE, TRUE, FALSE), col4=c(2.5,4.3,28,NA,3.7), stringsAsFactors = FALSE)
df$col4[is.na(df$col4)] <- mean(df$col4, na.rm = TRUE)  
df
is.na(df)
is.na(df$col4)
which(is.na(x))
sum(is.na(df))
colSums(is.na(df))
