x <- factor(c("yes", "yes", "no", "yes", "no"))
x
table(x)


f <- factor(c("Punjab", "KPK", "Punjab", "KPK", "karachi"))
f
w <- factor(c("Sunday", "Munday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"), levels = c("Monday", "Tuesday"))
w

z <- c(1,2,3, NA, 5)
z
v <- c(2,3,4,5, NA, NaN, 8)
v


a <- data.frame(day = 1:4, rain= c(T,T,F,F))
a
k <- c("a", "b", "c", "d", "e", "f", "g")
k
 ) 
f <- function(a= 10, b=2)
{
  print(a)
  print(b)
}

install.packages("RSQLite")
data("DBfile.db")
data('data.xlsx')



activity <- data.frame(opid=c("OP1", "OP2", "OP3", "OP4", "OP5", "OP6", "OP7"))
names <- data.frame(operator=c("pak", "plus", "sub", "minus", "carlly", "moe", "bye"))
blended <- cbind(activity, names)

blended




df1 <- data.frame(LETTERS, dfindex = 1:26)
df2 <- data.frame(letters, dfindex = c(1:10,15,20, 22:35))
merge(df1, df2, all = TRUE)


##tidyverse

install.packages("tidyverse")

head(msleep)
groups <- group_by(msleep, genus)
levels(groups$genus)
selecting <- select(msleep, startsWith("A"))



td <- data.frame(x =c("a:1", "a:2", "c:4", "d:4"))
td
