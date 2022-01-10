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

